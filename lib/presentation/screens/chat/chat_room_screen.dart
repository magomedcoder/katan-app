import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/core/utils/formatters.dart';
import 'package:katan/data/realtime/account_realtime_service.dart';
import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/usecases/get_chat_room_usecase.dart';
import 'package:katan/domain/usecases/list_chat_messages_usecase.dart';
import 'package:katan/domain/usecases/mark_chat_read_usecase.dart';
import 'package:katan/domain/usecases/send_chat_message_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/cubit/chat_room_cubit.dart';
import 'package:katan/presentation/widgets/empty_state.dart';
import 'package:katan/presentation/widgets/error_view.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({
    super.key,
    required this.roomId,
    required this.currentUsername,
    required this.canWrite,
  });

  final int roomId;
  final String currentUsername;
  final bool canWrite;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatRoomCubit(
        roomId: roomId,
        currentUsername: currentUsername,
        canWrite: canWrite,
        getRoomUseCase: getIt<GetChatRoomUseCase>(),
        listMessagesUseCase: getIt<ListChatMessagesUseCase>(),
        sendMessageUseCase: getIt<SendChatMessageUseCase>(),
        markReadUseCase: getIt<MarkChatReadUseCase>(),
        realtime: getIt<AccountRealtimeService>(),
        authCubit: context.read<AuthCubit>(),
      )..load(),
      child: const _ChatRoomView(),
    );
  }
}

class _ChatRoomView extends StatefulWidget {
  const _ChatRoomView();

  @override
  State<_ChatRoomView> createState() => _ChatRoomViewState();
}

class _ChatRoomViewState extends State<_ChatRoomView> {
  final _composerController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _composerController.addListener(_onComposerChanged);
  }

  @override
  void dispose() {
    _composerController
      ..removeListener(_onComposerChanged)
      ..dispose();
    super.dispose();
  }

  void _onComposerChanged() {
    if (_composerController.text.trim().isEmpty) {
      return;
    }

    context.read<ChatRoomCubit>().emitTyping();
  }

  Future<void> _send() async {
    final text = _composerController.text;
    await context.read<ChatRoomCubit>().send(text);
    if (mounted) {
      _composerController.clear();
    }
  }

  String _presenceSubtitle(ChatRoom room, String currentUsername) {
    if (!room.isDirect) {
      return '';
    }

    for (final member in room.members) {
      if (member.user.username == currentUsername) {
        continue;
      }

      if (member.isOnline) {
        return 'в сети';
      }

      if (member.lastVisitAt.trim().isNotEmpty) {
        return member.lastVisitAt.trim();
      }
    }

    return '';
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatRoomCubit, ChatRoomState>(
      listenWhen: (previous, current) {
        if (current is! ChatRoomLoaded || current.actionError == null) {
          return false;
        }
        return previous is! ChatRoomLoaded || previous.actionError != current.actionError;
      },
      listener: (context, state) {
        if (state is ChatRoomLoaded && state.actionError != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.actionError!)),
          );
        }
      },
      builder: (context, state) {
        final title = switch (state) {
          ChatRoomLoaded(:final room, :final currentUsername) =>
            room.displayTitle(currentUsername),
          _ => 'Чат',
        };
        final subtitle = switch (state) {
          final ChatRoomLoaded loaded when loaded.typingUsers.isNotEmpty => loaded.typingLabel,
          ChatRoomLoaded(:final room, :final currentUsername) => _presenceSubtitle(room, currentUsername),
          _ => '',
        };

        return Scaffold(
          appBar: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                if (subtitle.isNotEmpty)
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
              ],
            ),
          ),
          body: switch (state) {
            ChatRoomInitial() || ChatRoomLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            ChatRoomFailure(:final message) => ErrorView(
              message: message,
              onRetry: () => context.read<ChatRoomCubit>().load(),
            ),
            ChatRoomLoaded(
              :final messages,
              :final currentUsername,
              :final canWrite,
              :final sending,
              :final room,
            ) => Column(
              children: [
                Expanded(
                  child: messages.isEmpty
                    ? const EmptyState(
                      icon: Icons.chat_bubble_outline,
                      message: 'Напишите первое сообщение',
                    )
                    : ListView.builder(
                      reverse: true,
                      padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final message = messages[messages.length - 1 - index];
                        final isOwn = message.isOwn(currentUsername);
                        return _MessageBubble(
                          message: message,
                          isOwn: isOwn,
                          showRead: isOwn &&
                              room.othersLastReadMessageId != null &&
                              message.id <= room.othersLastReadMessageId!,
                        );
                      },
                    ),
                ),
                if (canWrite)
                  SafeArea(
                    top: false,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _composerController,
                              enabled: !sending,
                              minLines: 1,
                              maxLines: 5,
                              textInputAction: TextInputAction.newline,
                              decoration: const InputDecoration(
                                hintText: 'Сообщение',
                                border: OutlineInputBorder(),
                              ),
                              onSubmitted: (_) {
                                if (!sending) {
                                  _send();
                                }
                              },
                            ),
                          ),
                          const SizedBox(width: 8),
                          IconButton.filled(
                            tooltip: 'Отправить',
                            onPressed: sending ? null : _send,
                            icon: sending
                              ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              )
                              : const Icon(Icons.send),
                          ),
                        ],
                      ),
                    ),
                  )
                else
                  SafeArea(
                    top: false,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'Нет права отправлять сообщения',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
              ],
            ),
          },
        );
      },
    );
  }
}

class _MessageBubble extends StatelessWidget {
  const _MessageBubble({
    required this.message,
    required this.isOwn,
    required this.showRead,
  });

  final ChatMessage message;
  final bool isOwn;
  final bool showRead;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final background = isOwn ? scheme.primaryContainer : scheme.surfaceContainerHighest;
    final foreground = isOwn ? scheme.onPrimaryContainer : scheme.onSurface;
    final author = message.author?.displayName ?? '';
    final body = message.body.trim().isEmpty && message.attachments.isNotEmpty
      ? 'Медиа'
      : message.body;

    return Align(
      alignment: isOwn ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.82,
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(16),
              topRight: const Radius.circular(16),
              bottomLeft: Radius.circular(isOwn ? 16 : 4),
              bottomRight: Radius.circular(isOwn ? 4 : 16),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (!isOwn && author.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text(
                    author,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: scheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              Text(
                body,
                style: theme.textTheme.bodyMedium?.copyWith(color: foreground),
              ),
              const SizedBox(height: 4),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      formatChatTime(message.createdAt),
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: foreground.withValues(alpha: 0.7),
                      ),
                    ),
                    if (showRead) ...[
                      const SizedBox(width: 4),
                      Icon(
                        Icons.done_all,
                        size: 14,
                        color: scheme.primary.withValues(alpha: 0.8),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
