import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/data/realtime/account_realtime_service.dart';
import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/usecases/get_chat_room_usecase.dart';
import 'package:katan/domain/usecases/list_chat_messages_usecase.dart';
import 'package:katan/domain/usecases/mark_chat_read_usecase.dart';
import 'package:katan/domain/usecases/send_chat_message_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';

sealed class ChatRoomState extends Equatable {
  const ChatRoomState();

  @override
  List<Object?> get props => [];
}

class ChatRoomInitial extends ChatRoomState {
  const ChatRoomInitial();
}

class ChatRoomLoading extends ChatRoomState {
  const ChatRoomLoading();
}

class ChatRoomLoaded extends ChatRoomState {
  const ChatRoomLoaded({
    required this.room,
    required this.messages,
    required this.currentUsername,
    required this.canWrite,
    this.sending = false,
    this.typingUsers = const {},
    this.actionError,
  });

  final ChatRoom room;
  final List<ChatMessage> messages;
  final String currentUsername;
  final bool canWrite;
  final bool sending;
  final Map<int, String> typingUsers;
  final String? actionError;

  String get typingLabel {
    if (typingUsers.isEmpty) {
      return '';
    }

    final names = typingUsers.values.where((name) => name.trim().isNotEmpty).toList();
    if (names.isEmpty) {
      return 'печатает...';
    }

    if (names.length == 1) {
      return '${names.first} печатает...';
    }

    return '${names.take(2).join(', ')} печатают...';
  }

  ChatRoomLoaded copyWith({
    ChatRoom? room,
    List<ChatMessage>? messages,
    bool? sending,
    Map<int, String>? typingUsers,
    String? actionError,
    bool clearActionError = false,
  }) {
    return ChatRoomLoaded(
      room: room ?? this.room,
      messages: messages ?? this.messages,
      currentUsername: currentUsername,
      canWrite: canWrite,
      sending: sending ?? this.sending,
      typingUsers: typingUsers ?? this.typingUsers,
      actionError: clearActionError ? null : (actionError ?? this.actionError),
    );
  }

  @override
  List<Object?> get props => [
    room,
    messages,
    currentUsername,
    canWrite,
    sending,
    typingUsers,
    actionError,
  ];
}

class ChatRoomFailure extends ChatRoomState {
  const ChatRoomFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class ChatRoomCubit extends Cubit<ChatRoomState> {
  ChatRoomCubit({
    required this.roomId,
    required this.currentUsername,
    required this.canWrite,
    required GetChatRoomUseCase getRoomUseCase,
    required ListChatMessagesUseCase listMessagesUseCase,
    required SendChatMessageUseCase sendMessageUseCase,
    required MarkChatReadUseCase markReadUseCase,
    required AccountRealtimeService realtime,
    required AuthCubit authCubit,
  })  : _getRoomUseCase = getRoomUseCase,
        _listMessagesUseCase = listMessagesUseCase,
        _sendMessageUseCase = sendMessageUseCase,
        _markReadUseCase = markReadUseCase,
        _realtime = realtime,
        _authCubit = authCubit,
        super(const ChatRoomInitial()) {
    _eventsSub = _realtime.chatEvents.listen(_onChatEvent);
  }

  final int roomId;
  final String currentUsername;
  final bool canWrite;
  final GetChatRoomUseCase _getRoomUseCase;
  final ListChatMessagesUseCase _listMessagesUseCase;
  final SendChatMessageUseCase _sendMessageUseCase;
  final MarkChatReadUseCase _markReadUseCase;
  final AccountRealtimeService _realtime;
  final AuthCubit _authCubit;

  StreamSubscription<ChatEvent>? _eventsSub;
  final Map<int, Timer> _typingTimers = {};
  DateTime _lastTypingAt = DateTime.fromMillisecondsSinceEpoch(0);

  Future<void> load() async {
    emit(const ChatRoomLoading());
    try {
      final room = await _getRoomUseCase(roomId);
      final messages = await _listMessagesUseCase(roomId: roomId);

      _realtime.activeRoomId = roomId;
      unawaited(_realtime.emitChat(ChatEmitAction.subscribeRoom, roomId));

      emit(ChatRoomLoaded(
        room: room,
        messages: messages,
        currentUsername: currentUsername,
        canWrite: canWrite,
      ));

      await _markLatestRead(messages);
    } on AuthFailure catch (e) {
      emit(ChatRoomFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(ChatRoomFailure(e.message));
    } catch (e) {
      emit(ChatRoomFailure(e.toString()));
    }
  }

  Future<void> send(String rawBody) async {
    final current = state;
    if (current is! ChatRoomLoaded || current.sending || !canWrite) {
      return;
    }

    final body = rawBody.trim();
    if (body.isEmpty) {
      return;
    }

    emit(current.copyWith(sending: true, clearActionError: true));

    try {
      final message = await _sendMessageUseCase(roomId: roomId, body: body);
      final messages = _upsertMessage(current.messages, message);
      emit(current.copyWith(
        messages: messages,
        sending: false,
        room: current.room.copyWith(
          unreadCount: 0,
          lastMessage: ChatRoomPreview(
            id: message.id,
            body: message.body,
            userId: message.author?.id ?? 0,
            userName: message.author?.displayName ?? '',
            createdAt: message.createdAt,
          ),
        ),
      ));
      await _markLatestRead(messages);
    } on AuthFailure catch (e) {
      emit(current.copyWith(sending: false, actionError: e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(sending: false, actionError: e.message));
    } catch (e) {
      emit(current.copyWith(sending: false, actionError: e.toString()));
    }
  }

  void emitTyping() {
    if (!canWrite) {
      return;
    }
    final now = DateTime.now();
    if (now.difference(_lastTypingAt) < const Duration(milliseconds: 1200)) {
      return;
    }
    _lastTypingAt = now;
    unawaited(_realtime.emitChat(ChatEmitAction.typing, roomId));
  }

  void _onChatEvent(ChatEvent event) {
    final current = state;
    if (current is! ChatRoomLoaded) {
      return;
    }

    switch (event.kind) {
      case ChatEventKind.message:
        final message = event.message;
        if (message == null || message.roomId != roomId) {
          return;
        }

        final messages = _upsertMessage(current.messages, message);
        emit(current.copyWith(messages: messages));
        unawaited(_markLatestRead(messages));
      case ChatEventKind.messageUpdated:
        final message = event.message;
        if (message == null || message.roomId != roomId) {
          return;
        }

        emit(current.copyWith(messages: _upsertMessage(current.messages, message)));
      case ChatEventKind.messageDeleted:
        if (event.deletedRoomId != roomId || event.deletedMessageId == null) {
          return;
        }

        emit(current.copyWith(messages: current.messages.where((item) => item.id != event.deletedMessageId).toList()));
      case ChatEventKind.typing:
        if (event.roomId != roomId || event.userId == null || event.userId! <= 0) {
          return;
        }

        final myId = current.room.members.where((member) => member.user.username == currentUsername).map((member) => member.user.id).firstOrNull;
        if (myId != null && myId == event.userId) {
          return;
        }

        _onTyping(current, event.userId!, event.userName ?? '');
      case ChatEventKind.presence:
        _onPresence(current, event);
      case ChatEventKind.read:
        if (event.roomId == roomId) {
          unawaited(_refreshRoom());
        }
    }
  }

  void _onTyping(ChatRoomLoaded current, int userId, String name) {
    final typingUsers = Map<int, String>.from(current.typingUsers);
    typingUsers[userId] = name.trim().isEmpty ? 'Кто-то' : name.trim();
    emit(current.copyWith(typingUsers: typingUsers));

    _typingTimers[userId]?.cancel();
    _typingTimers[userId] = Timer(const Duration(milliseconds: 2500), () {
      final stateNow = state;
      if (stateNow is! ChatRoomLoaded) {
        return;
      }

      final next = Map<int, String>.from(stateNow.typingUsers)..remove(userId);
      emit(stateNow.copyWith(typingUsers: next));
    });
  }

  void _onPresence(ChatRoomLoaded current, ChatEvent event) {
    final userId = event.userId;
    if (userId == null || userId <= 0 || current.room.members.isEmpty) {
      return;
    }

    final isOnline = event.isOnline ?? false;
    final lastVisitAt = event.lastVisitAt ?? '';
    var changed = false;
    final members = current.room.members.map((member) {
      if (member.user.id != userId) {
        return member;
      }
      changed = true;
      return member.copyWith(
        isOnline: isOnline,
        lastVisitAt: lastVisitAt.isNotEmpty ? lastVisitAt : member.lastVisitAt,
      );
    }).toList();

    if (changed) {
      emit(current.copyWith(room: current.room.copyWith(members: members)));
    }
  }

  Future<void> _refreshRoom() async {
    final current = state;
    if (current is! ChatRoomLoaded) {
      return;
    }

    try {
      final room = await _getRoomUseCase(roomId);
      final stateNow = state;
      if (stateNow is ChatRoomLoaded) {
        emit(stateNow.copyWith(room: room));
      }
    } on AuthFailure catch (e) {
      emit(ChatRoomFailure(e.message));
      await _authCubit.logout();
    } catch (_) {}
  }

  List<ChatMessage> _upsertMessage(List<ChatMessage> messages, ChatMessage message) {
    final index = messages.indexWhere((item) => item.id == message.id);
    if (index < 0) {
      return [...messages, message];
    }

    final next = [...messages];
    next[index] = message;
    return next;
  }

  Future<void> _markLatestRead(List<ChatMessage> messages) async {
    if (messages.isEmpty) {
      return;
    }

    try {
      await _markReadUseCase(
        roomId: roomId,
        messageId: messages.last.id,
      );
    } on AuthFailure {
      rethrow;
    }
  }

  @override
  Future<void> close() async {
    for (final timer in _typingTimers.values) {
      timer.cancel();
    }

    _typingTimers.clear();
    await _eventsSub?.cancel();

    if (_realtime.activeRoomId == roomId) {
      unawaited(_realtime.emitChat(ChatEmitAction.unsubscribeRoom, roomId));
      _realtime.activeRoomId = null;
    }

    return super.close();
  }
}
