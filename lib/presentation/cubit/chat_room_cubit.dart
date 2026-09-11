import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/utils/chat_attachments.dart';
import 'package:katan/data/realtime/account_realtime_service.dart';
import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/domain/repositories/chat_repository.dart';
import 'package:katan/domain/usecases/add_chat_members_usecase.dart';
import 'package:katan/domain/usecases/delete_chat_message_usecase.dart';
import 'package:katan/domain/usecases/edit_chat_message_usecase.dart';
import 'package:katan/domain/usecases/get_chat_room_usecase.dart';
import 'package:katan/domain/usecases/leave_chat_room_usecase.dart';
import 'package:katan/domain/usecases/list_chat_messages_usecase.dart';
import 'package:katan/domain/usecases/mark_chat_read_usecase.dart';
import 'package:katan/domain/usecases/refresh_chat_message_usecase.dart';
import 'package:katan/domain/usecases/remove_chat_member_usecase.dart';
import 'package:katan/domain/usecases/search_chat_usecase.dart';
import 'package:katan/domain/usecases/send_chat_message_usecase.dart';
import 'package:katan/domain/usecases/update_group_chat_usecase.dart';
import 'package:katan/domain/usecases/upload_chat_attachment_usecase.dart';
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
    required this.canManage,
    this.sending = false,
    this.loadingMore = false,
    this.hasMore = false,
    this.left = false,
    this.replyTo,
    this.editingMessageId,
    this.pendingAttachments = const [],
    this.typingUsers = const {},
    this.actionError,
  });

  final ChatRoom room;
  final List<ChatMessage> messages;
  final String currentUsername;
  final bool canWrite;
  final bool canManage;
  final bool sending;
  final bool loadingMore;
  final bool hasMore;
  final bool left;
  final ChatMessage? replyTo;
  final int? editingMessageId;
  final List<ChatPendingAttachment> pendingAttachments;
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

  ChatMessage? messageById(int? id) {
    if (id == null || id <= 0) {
      return null;
    }

    for (final message in messages) {
      if (message.id == id) {
        return message;
      }
    }

    return null;
  }

  ChatRoomLoaded copyWith({
    ChatRoom? room,
    List<ChatMessage>? messages,
    bool? sending,
    bool? loadingMore,
    bool? hasMore,
    bool? left,
    ChatMessage? replyTo,
    bool clearReplyTo = false,
    int? editingMessageId,
    bool clearEditing = false,
    List<ChatPendingAttachment>? pendingAttachments,
    Map<int, String>? typingUsers,
    String? actionError,
    bool clearActionError = false,
  }) {
    return ChatRoomLoaded(
      room: room ?? this.room,
      messages: messages ?? this.messages,
      currentUsername: currentUsername,
      canWrite: canWrite,
      canManage: canManage,
      sending: sending ?? this.sending,
      loadingMore: loadingMore ?? this.loadingMore,
      hasMore: hasMore ?? this.hasMore,
      left: left ?? this.left,
      replyTo: clearReplyTo ? null : (replyTo ?? this.replyTo),
      editingMessageId: clearEditing ? null : (editingMessageId ?? this.editingMessageId),
      pendingAttachments: pendingAttachments ?? this.pendingAttachments,
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
    canManage,
    sending,
    loadingMore,
    hasMore,
    left,
    replyTo,
    editingMessageId,
    pendingAttachments,
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
    required this.canManage,
    required GetChatRoomUseCase getRoomUseCase,
    required ListChatMessagesUseCase listMessagesUseCase,
    required SendChatMessageUseCase sendMessageUseCase,
    required MarkChatReadUseCase markReadUseCase,
    required EditChatMessageUseCase editMessageUseCase,
    required DeleteChatMessageUseCase deleteMessageUseCase,
    required RefreshChatMessageUseCase refreshMessageUseCase,
    required UploadChatAttachmentUseCase uploadAttachmentUseCase,
    required UpdateGroupChatUseCase updateGroupUseCase,
    required AddChatMembersUseCase addMembersUseCase,
    required RemoveChatMemberUseCase removeMemberUseCase,
    required LeaveChatRoomUseCase leaveRoomUseCase,
    required SearchChatUseCase searchChatUseCase,
    required ChatRepository chatRepository,
    required AccountRealtimeService realtime,
    required AuthCubit authCubit,
  })  : _getRoomUseCase = getRoomUseCase,
        _listMessagesUseCase = listMessagesUseCase,
        _sendMessageUseCase = sendMessageUseCase,
        _markReadUseCase = markReadUseCase,
        _editMessageUseCase = editMessageUseCase,
        _deleteMessageUseCase = deleteMessageUseCase,
        _refreshMessageUseCase = refreshMessageUseCase,
        _uploadAttachmentUseCase = uploadAttachmentUseCase,
        _updateGroupUseCase = updateGroupUseCase,
        _addMembersUseCase = addMembersUseCase,
        _removeMemberUseCase = removeMemberUseCase,
        _leaveRoomUseCase = leaveRoomUseCase,
        _searchChatUseCase = searchChatUseCase,
        _chatRepository = chatRepository,
        _realtime = realtime,
        _authCubit = authCubit,
        super(const ChatRoomInitial()) {
    _eventsSub = _realtime.chatEvents.listen(_onChatEvent);
  }

  final int roomId;
  final String currentUsername;
  final bool canWrite;
  final bool canManage;
  final GetChatRoomUseCase _getRoomUseCase;
  final ListChatMessagesUseCase _listMessagesUseCase;
  final SendChatMessageUseCase _sendMessageUseCase;
  final MarkChatReadUseCase _markReadUseCase;
  final EditChatMessageUseCase _editMessageUseCase;
  final DeleteChatMessageUseCase _deleteMessageUseCase;
  final RefreshChatMessageUseCase _refreshMessageUseCase;
  final UploadChatAttachmentUseCase _uploadAttachmentUseCase;
  final UpdateGroupChatUseCase _updateGroupUseCase;
  final AddChatMembersUseCase _addMembersUseCase;
  final RemoveChatMemberUseCase _removeMemberUseCase;
  final LeaveChatRoomUseCase _leaveRoomUseCase;
  final SearchChatUseCase _searchChatUseCase;
  final ChatRepository _chatRepository;
  final AccountRealtimeService _realtime;
  final AuthCubit _authCubit;

  StreamSubscription<ChatEvent>? _eventsSub;
  final Map<int, Timer> _typingTimers = {};
  DateTime _lastTypingAt = DateTime.fromMillisecondsSinceEpoch(0);
  static const _pageLimit = 50;

  String attachmentViewUrl(String fileId) => _chatRepository.attachmentViewUrl(fileId);

  String attachmentDownloadUrl(String fileId) =>
      _chatRepository.attachmentDownloadUrl(fileId);

  Future<void> load() async {
    emit(const ChatRoomLoading());
    try {
      final room = await _getRoomUseCase(roomId);
      final messages = await _listMessagesUseCase(
        roomId: roomId,
        limit: _pageLimit,
      );

      _realtime.activeRoomId = roomId;
      unawaited(_realtime.emitChat(ChatEmitAction.subscribeRoom, roomId));

      emit(ChatRoomLoaded(
        room: room,
        messages: messages,
        currentUsername: currentUsername,
        canWrite: canWrite,
        canManage: canManage,
        hasMore: messages.length >= _pageLimit,
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

  Future<void> loadMore() async {
    final current = state;
    if (current is! ChatRoomLoaded || current.loadingMore || !current.hasMore || current.messages.isEmpty) {
      return;
    }

    emit(current.copyWith(loadingMore: true, clearActionError: true));
    try {
      final older = await _listMessagesUseCase(
        roomId: roomId,
        beforeId: current.messages.first.id,
        limit: _pageLimit,
      );
      final stateNow = state;
      if (stateNow is! ChatRoomLoaded) {
        return;
      }

      final merged = [...older, ...stateNow.messages];
      emit(stateNow.copyWith(
        messages: merged,
        loadingMore: false,
        hasMore: older.length >= _pageLimit,
      ));
    } on AuthFailure catch (e) {
      emit(current.copyWith(loadingMore: false, actionError: e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(loadingMore: false, actionError: e.message));
    } catch (e) {
      emit(current.copyWith(loadingMore: false, actionError: e.toString()));
    }
  }

  void setReplyTo(ChatMessage? message) {
    final current = state;
    if (current is! ChatRoomLoaded || !canWrite) {
      return;
    }

    if (message == null) {
      emit(current.copyWith(clearReplyTo: true, clearEditing: true));
      return;
    }

    emit(current.copyWith(
      replyTo: message,
      clearEditing: true,
    ));
  }

  void startEdit(ChatMessage message) {
    final current = state;
    if (current is! ChatRoomLoaded || !canWrite || !message.isOwn(currentUsername)) {
      return;
    }

    emit(current.copyWith(
      editingMessageId: message.id,
      clearReplyTo: true,
      pendingAttachments: const [],
    ));
  }

  void cancelEdit() {
    final current = state;
    if (current is! ChatRoomLoaded) {
      return;
    }

    emit(current.copyWith(clearEditing: true));
  }

  void addPendingAttachment(ChatPendingAttachment file) {
    final current = state;
    if (current is! ChatRoomLoaded || !canWrite) {
      return;
    }

    if (!isChatAttachmentFile(name: file.name, size: file.size)) {
      emit(current.copyWith(actionError: 'Неподдерживаемый тип файла'));
      return;
    }

    emit(current.copyWith(
      pendingAttachments: [...current.pendingAttachments, file],
      clearEditing: true,
      clearActionError: true,
    ));
  }

  void removePendingAttachment(int index) {
    final current = state;
    if (current is! ChatRoomLoaded) {
      return;
    }

    if (index < 0 || index >= current.pendingAttachments.length) {
      return;
    }

    final next = [...current.pendingAttachments]..removeAt(index);
    emit(current.copyWith(pendingAttachments: next));
  }

  Future<void> send(String rawBody) async {
    final current = state;
    if (current is! ChatRoomLoaded || current.sending || !canWrite) {
      return;
    }

    final editingId = current.editingMessageId;
    if (editingId != null) {
      await edit(editingId, rawBody);
      return;
    }

    final body = rawBody.trim();
    final files = current.pendingAttachments;
    if (body.isEmpty && files.isEmpty) {
      return;
    }

    emit(current.copyWith(sending: true, clearActionError: true));

    try {
      final message = await _sendMessageUseCase(
        roomId: roomId,
        body: body,
        replyToId: current.replyTo?.id ?? 0,
        hasMedia: files.isNotEmpty,
      );

      var finalMessage = message;
      if (files.isNotEmpty) {
        for (final file in files) {
          await _uploadAttachmentUseCase(
            messageId: message.id,
            filename: file.name,
            mimeType: file.mimeType,
            bytes: file.bytes,
          );
        }
        finalMessage = await _refreshMessageUseCase(message.id);
      }

      final stateNow = state;
      if (stateNow is! ChatRoomLoaded) {
        return;
      }

      final messages = _upsertMessage(stateNow.messages, finalMessage);
      emit(stateNow.copyWith(
        messages: messages,
        sending: false,
        clearReplyTo: true,
        pendingAttachments: const [],
        room: stateNow.room.copyWith(
          unreadCount: 0,
          lastMessage: ChatRoomPreview(
            id: finalMessage.id,
            body: finalMessage.body,
            userId: finalMessage.author?.id ?? 0,
            userName: finalMessage.author?.displayName ?? '',
            createdAt: finalMessage.createdAt,
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

  Future<void> edit(int messageId, String rawBody) async {
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
      final message = await _editMessageUseCase(messageId: messageId, body: body);
      final stateNow = state;
      if (stateNow is! ChatRoomLoaded) {
        return;
      }

      emit(stateNow.copyWith(
        messages: _upsertMessage(stateNow.messages, message),
        sending: false,
        clearEditing: true,
      ));
    } on AuthFailure catch (e) {
      emit(current.copyWith(sending: false, actionError: e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(sending: false, actionError: e.message));
    } catch (e) {
      emit(current.copyWith(sending: false, actionError: e.toString()));
    }
  }

  Future<void> deleteMessage(int messageId) async {
    final current = state;
    if (current is! ChatRoomLoaded || !canWrite) {
      return;
    }

    try {
      await _deleteMessageUseCase(messageId);
      final stateNow = state;
      if (stateNow is ChatRoomLoaded) {
        emit(stateNow.copyWith(
          messages: stateNow.messages.where((item) => item.id != messageId).toList(),
          clearEditing: stateNow.editingMessageId == messageId,
          clearReplyTo: stateNow.replyTo?.id == messageId,
        ));
      }
    } on AuthFailure catch (e) {
      emit(current.copyWith(actionError: e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(actionError: e.message));
    } catch (e) {
      emit(current.copyWith(actionError: e.toString()));
    }
  }

  Future<void> updateGroupTitle(String title) async {
    final current = state;
    if (current is! ChatRoomLoaded || !canManage || !current.room.isGroup) {
      return;
    }

    final trimmed = title.trim();
    if (trimmed.isEmpty) {
      return;
    }

    try {
      final room = await _updateGroupUseCase(roomId: roomId, title: trimmed);
      final stateNow = state;
      if (stateNow is ChatRoomLoaded) {
        emit(stateNow.copyWith(room: room));
      }
    } on AuthFailure catch (e) {
      emit(current.copyWith(actionError: e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(actionError: e.message));
    } catch (e) {
      emit(current.copyWith(actionError: e.toString()));
    }
  }

  Future<void> addMembers(List<int> userIds) async {
    final current = state;
    if (current is! ChatRoomLoaded || !canManage || !current.room.isGroup || userIds.isEmpty) {
      return;
    }

    try {
      final room = await _addMembersUseCase(roomId: roomId, userIds: userIds);
      final stateNow = state;
      if (stateNow is ChatRoomLoaded) {
        emit(stateNow.copyWith(room: room));
      }
    } on AuthFailure catch (e) {
      emit(current.copyWith(actionError: e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(actionError: e.message));
    } catch (e) {
      emit(current.copyWith(actionError: e.toString()));
    }
  }

  Future<void> removeMember(int userId) async {
    final current = state;
    if (current is! ChatRoomLoaded || !canManage || !current.room.isGroup) {
      return;
    }

    try {
      await _removeMemberUseCase(roomId: roomId, userId: userId);
      await _refreshRoom();
    } on AuthFailure catch (e) {
      emit(current.copyWith(actionError: e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(actionError: e.message));
    } catch (e) {
      emit(current.copyWith(actionError: e.toString()));
    }
  }

  Future<bool> leaveRoom() async {
    final current = state;
    if (current is! ChatRoomLoaded || current.room.isGlobal) {
      return false;
    }

    try {
      await _leaveRoomUseCase(roomId);
      final stateNow = state;
      if (stateNow is ChatRoomLoaded) {
        emit(stateNow.copyWith(left: true));
      }
      return true;
    } on AuthFailure catch (e) {
      emit(current.copyWith(actionError: e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      emit(current.copyWith(actionError: e.message));
      return false;
    } catch (e) {
      emit(current.copyWith(actionError: e.toString()));
      return false;
    }
  }

  Future<List<UserRef>> searchUsers(String query) async {
    final result = await _searchChatUseCase(query: query.trim());
    final memberIds = {
      for (final member in (state is ChatRoomLoaded
          ? (state as ChatRoomLoaded).room.members
          : const <ChatMember>[]))
        member.user.id,
    };
    return result.users.where((user) => !memberIds.contains(user.id)).toList();
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

        emit(current.copyWith(
          messages: current.messages
              .where((item) => item.id != event.deletedMessageId)
              .toList(),
        ));
      case ChatEventKind.typing:
        if (event.roomId != roomId || event.userId == null || event.userId! <= 0) {
          return;
        }

        final myId = current.room.members
            .where((member) => member.user.username == currentUsername)
            .map((member) => member.user.id)
            .firstOrNull;
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
    } catch (_) {}
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
