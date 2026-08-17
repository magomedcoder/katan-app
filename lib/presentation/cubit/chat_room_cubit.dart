import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
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
    this.actionError,
  });

  final ChatRoom room;
  final List<ChatMessage> messages;
  final String currentUsername;
  final bool canWrite;
  final bool sending;
  final String? actionError;

  ChatRoomLoaded copyWith({
    ChatRoom? room,
    List<ChatMessage>? messages,
    bool? sending,
    String? actionError,
    bool clearActionError = false,
  }) {
    return ChatRoomLoaded(
      room: room ?? this.room,
      messages: messages ?? this.messages,
      currentUsername: currentUsername,
      canWrite: canWrite,
      sending: sending ?? this.sending,
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
    required AuthCubit authCubit,
  })  : _getRoomUseCase = getRoomUseCase,
        _listMessagesUseCase = listMessagesUseCase,
        _sendMessageUseCase = sendMessageUseCase,
        _markReadUseCase = markReadUseCase,
        _authCubit = authCubit,
        super(const ChatRoomInitial());

  final int roomId;
  final String currentUsername;
  final bool canWrite;
  final GetChatRoomUseCase _getRoomUseCase;
  final ListChatMessagesUseCase _listMessagesUseCase;
  final SendChatMessageUseCase _sendMessageUseCase;
  final MarkChatReadUseCase _markReadUseCase;
  final AuthCubit _authCubit;

  Future<void> load() async {
    emit(const ChatRoomLoading());
    try {
      final room = await _getRoomUseCase(roomId);
      final messages = await _listMessagesUseCase(roomId: roomId);

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
      final messages = [...current.messages, message];
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
}
