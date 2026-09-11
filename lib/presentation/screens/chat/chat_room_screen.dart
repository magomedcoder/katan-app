import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:katan/app/di.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/core/utils/chat_attachments.dart';
import 'package:katan/core/utils/formatters.dart';
import 'package:katan/data/realtime/account_realtime_service.dart';
import 'package:katan/domain/entities/chat.dart';
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
import 'package:katan/presentation/cubit/chat_room_cubit.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_avatar.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_user_picker_sheet.dart';
import 'package:katan/presentation/widgets/empty_state.dart';
import 'package:katan/presentation/widgets/error_view.dart';
import 'package:url_launcher/url_launcher.dart';

class ChatRoomScreen extends StatelessWidget {
  const ChatRoomScreen({
    super.key,
    required this.roomId,
    required this.currentUsername,
    required this.canWrite,
    this.canManage = false,
  });

  final int roomId;
  final String currentUsername;
  final bool canWrite;
  final bool canManage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatRoomCubit(
        roomId: roomId,
        currentUsername: currentUsername,
        canWrite: canWrite,
        canManage: canManage,
        getRoomUseCase: getIt<GetChatRoomUseCase>(),
        listMessagesUseCase: getIt<ListChatMessagesUseCase>(),
        sendMessageUseCase: getIt<SendChatMessageUseCase>(),
        markReadUseCase: getIt<MarkChatReadUseCase>(),
        editMessageUseCase: getIt<EditChatMessageUseCase>(),
        deleteMessageUseCase: getIt<DeleteChatMessageUseCase>(),
        refreshMessageUseCase: getIt<RefreshChatMessageUseCase>(),
        uploadAttachmentUseCase: getIt<UploadChatAttachmentUseCase>(),
        updateGroupUseCase: getIt<UpdateGroupChatUseCase>(),
        addMembersUseCase: getIt<AddChatMembersUseCase>(),
        removeMemberUseCase: getIt<RemoveChatMemberUseCase>(),
        leaveRoomUseCase: getIt<LeaveChatRoomUseCase>(),
        searchChatUseCase: getIt<SearchChatUseCase>(),
        chatRepository: getIt<ChatRepository>(),
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
  final _scrollController = ScrollController();
  int? _filledEditId;

  @override
  void initState() {
    super.initState();
    _composerController.addListener(_onComposerChanged);
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _composerController
      ..removeListener(_onComposerChanged)
      ..dispose();
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onComposerChanged() {
    if (_composerController.text.trim().isEmpty) {
      return;
    }

    context.read<ChatRoomCubit>().emitTyping();
  }

  void _onScroll() {
    if (!_scrollController.hasClients) {
      return;
    }

    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 64) {
      context.read<ChatRoomCubit>().loadMore();
    }
  }

  Future<void> _send() async {
    final text = _composerController.text;
    await context.read<ChatRoomCubit>().send(text);
    if (mounted) {
      _composerController.clear();
      _filledEditId = null;
    }
  }

  Future<void> _pickFiles() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      withData: true,
      type: FileType.custom,
      allowedExtensions: chatAttachmentExtensions,
    );
    if (!mounted || result == null) {
      return;
    }

    final cubit = context.read<ChatRoomCubit>();
    for (final file in result.files) {
      final bytes = file.bytes;
      if (bytes == null || bytes.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Не удалось прочитать ${file.name}')),
        );
        continue;
      }

      cubit.addPendingAttachment(ChatPendingAttachment(
        name: file.name,
        mimeType: guessMimeType(file.name),
        bytes: bytes,
      ));
    }
  }

  String _presenceSubtitle(ChatRoom room, String currentUsername) {
    if (!room.isDirect) {
      return room.isGroup ? '${room.memberCount} уч.' : '';
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

  Future<void> _showMembers(ChatRoomLoaded state) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (context) => _MembersSheet(
        state: state,
        onAddMembers: state.canManage && state.room.isGroup
          ? () async {
            Navigator.pop(context);
            final users = await showChatUserPicker(
              context: this.context,
              title: 'Добавить участников',
              search: this.context.read<ChatRoomCubit>().searchUsers,
              excludeIds: {
                for (final member in state.room.members) member.user.id,
              },
            );
            if (users != null && users.isNotEmpty && mounted) {
              await this.context.read<ChatRoomCubit>().addMembers(
                users.map((u) => u.id).toList(),
              );
            }
          }
          : null,
        onRename: state.canManage && state.room.isGroup
          ? () async {
              Navigator.pop(context);
              final controller = TextEditingController(text: state.room.title);
              final title = await showDialog<String>(
                context: this.context,
                builder: (context) => AlertDialog(
                  title: const Text('Название группы'),
                  content: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Отмена'),
                    ),
                    FilledButton(
                      onPressed: () => Navigator.pop(context, controller.text.trim()),
                      child: const Text('Сохранить'),
                    ),
                  ],
                ),
              );
              controller.dispose();
              if (title != null && title.isNotEmpty && mounted) {
                await this.context.read<ChatRoomCubit>().updateGroupTitle(title);
              }
            }
          : null,
        onRemove: state.canManage && state.room.isGroup
          ? (userId) => this.context.read<ChatRoomCubit>().removeMember(userId)
          : null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatRoomCubit, ChatRoomState>(
      listenWhen: (previous, current) {
        if (current is ChatRoomLoaded && current.left) {
          return true;
        }

        if (current is ChatRoomLoaded && current.editingMessageId != null && (previous is! ChatRoomLoaded || previous.editingMessageId != current.editingMessageId)) {
          return true;
        }

        if (current is ChatRoomLoaded && current.editingMessageId == null && previous is ChatRoomLoaded && previous.editingMessageId != null) {
          return true;
        }

        if (current is! ChatRoomLoaded || current.actionError == null) {
          return false;
        }
        return previous is! ChatRoomLoaded || previous.actionError != current.actionError;
      },
      listener: (context, state) {
        if (state is ChatRoomLoaded && state.left) {
          Navigator.of(context).pop();
          return;
        }

        if (state is ChatRoomLoaded) {
          final editingId = state.editingMessageId;
          if (editingId != null && _filledEditId != editingId) {
            final message = state.messageById(editingId);
            if (message != null) {
              _composerController.text = message.body;
              _composerController.selection = TextSelection.collapsed(
                offset: _composerController.text.length,
              );
              _filledEditId = editingId;
            }
          } else if (editingId == null && _filledEditId != null) {
            _filledEditId = null;
          }
        }

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
            actions: [
              if (state is ChatRoomLoaded) ...[
                IconButton(
                  tooltip: 'Участники',
                  onPressed: () => _showMembers(state),
                  icon: const Icon(Icons.people_outline),
                ),
                if (!state.room.isGlobal)
                  PopupMenuButton<_RoomMenuAction>(
                    onSelected: (action) async {
                      switch (action) {
                        case _RoomMenuAction.leave:
                          final ok = await showDialog<bool>(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Покинуть чат?'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, false),
                                  child: const Text('Отмена'),
                                ),
                                FilledButton(
                                  onPressed: () => Navigator.pop(context, true),
                                  child: const Text('Покинуть'),
                                ),
                              ],
                            ),
                          );
                          if (ok == true && context.mounted) {
                            await context.read<ChatRoomCubit>().leaveRoom();
                          }
                      }
                    },
                    itemBuilder: (context) => const [
                      PopupMenuItem(
                        value: _RoomMenuAction.leave,
                        child: Text('Покинуть'),
                      ),
                    ],
                  ),
              ],
            ],
          ),
          body: switch (state) {
            ChatRoomInitial() || ChatRoomLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            ChatRoomFailure(:final message) => ErrorView(
              message: message,
              onRetry: () => context.read<ChatRoomCubit>().load(),
            ),
            ChatRoomLoaded() => Column(
              children: [
                if (state.loadingMore) const LinearProgressIndicator(minHeight: 2),
                Expanded(
                  child: state.messages.isEmpty
                      ? const EmptyState(
                          icon: Icons.chat_bubble_outline,
                          message: 'Напишите первое сообщение',
                        )
                      : ListView.builder(
                          controller: _scrollController,
                          reverse: true,
                          padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
                          itemCount: state.messages.length,
                          itemBuilder: (context, index) {
                            final chronologicalIndex =
                                state.messages.length - 1 - index;
                            final message = state.messages[chronologicalIndex];
                            final previous = chronologicalIndex > 0
                                ? state.messages[chronologicalIndex - 1]
                                : null;
                            final next = chronologicalIndex < state.messages.length - 1
                                ? state.messages[chronologicalIndex + 1]
                                : null;
                            final showDate = previous == null ||
                                !_sameDay(previous.createdAt, message.createdAt);
                            final isOwn = message.isOwn(state.currentUsername);
                            final showAuthor = !isOwn && (previous == null || previous.author?.id != message.author?.id || !_sameDay(previous.createdAt, message.createdAt));
                            final isLastInGroup = next == null || next.author?.id != message.author?.id || !_sameDay(next.createdAt, message.createdAt);

                            return Column(
                              children: [
                                if (showDate)
                                  _DateDivider(date: message.createdAt),
                                _MessageBubble(
                                  message: message,
                                  replyTo: state.messageById(message.replyToId),
                                  isOwn: isOwn,
                                  showAuthor: showAuthor,
                                  isLastInGroup: isLastInGroup,
                                  showRead: isOwn && state.room.othersLastReadMessageId != null && message.id <= state.room.othersLastReadMessageId!,
                                  canWrite: state.canWrite,
                                  viewUrl: context.read<ChatRoomCubit>().attachmentViewUrl,
                                  downloadUrl: context.read<ChatRoomCubit>().attachmentDownloadUrl,
                                  onReply: () => context.read<ChatRoomCubit>().setReplyTo(message),
                                  onEdit: isOwn
                                    ? () => context.read<ChatRoomCubit>().startEdit(message)
                                    : null,
                                  onDelete: isOwn
                                    ? () async {
                                        final ok = await showDialog<bool>(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            title: const Text('Удалить сообщение?'),
                                            actions: [
                                              TextButton(
                                                onPressed: () => Navigator.pop(context, false),
                                                child: const Text('Отмена'),
                                              ),
                                              FilledButton(
                                                onPressed: () => Navigator.pop(context, true),
                                                child: const Text('Удалить'),
                                              ),
                                            ],
                                          ),
                                        );
                                        if (ok == true && context.mounted) {
                                          await context.read<ChatRoomCubit>().deleteMessage(message.id);
                                        }
                                      }
                                    : null,
                                ),
                              ],
                            );
                          },
                        ),
                ),
                if (state.canWrite)
                  _Composer(
                    controller: _composerController,
                    sending: state.sending,
                    replyTo: state.replyTo,
                    editing: state.editingMessageId != null,
                    pending: state.pendingAttachments,
                    onSend: _send,
                    onAttach: _pickFiles,
                    onClearReply: () => context.read<ChatRoomCubit>().setReplyTo(null),
                    onCancelEdit: () {
                      context.read<ChatRoomCubit>().cancelEdit();
                      _composerController.clear();
                      _filledEditId = null;
                    },
                    onRemovePending: context.read<ChatRoomCubit>().removePendingAttachment,
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

  bool _sameDay(DateTime? a, DateTime? b) {
    if (a == null || b == null) {
      return a == b;
    }

    return a.year == b.year && a.month == b.month && a.day == b.day;
  }
}

enum _RoomMenuAction { leave }

class _DateDivider extends StatelessWidget {
  const _DateDivider({required this.date});

  final DateTime? date;

  @override
  Widget build(BuildContext context) {
    final label = formatChatDateDivider(date);
    if (label.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            label,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ),
    );
  }
}

class _Composer extends StatelessWidget {
  const _Composer({
    required this.controller,
    required this.sending,
    required this.replyTo,
    required this.editing,
    required this.pending,
    required this.onSend,
    required this.onAttach,
    required this.onClearReply,
    required this.onCancelEdit,
    required this.onRemovePending,
  });

  final TextEditingController controller;
  final bool sending;
  final ChatMessage? replyTo;
  final bool editing;
  final List<ChatPendingAttachment> pending;
  final VoidCallback onSend;
  final VoidCallback onAttach;
  final VoidCallback onClearReply;
  final VoidCallback onCancelEdit;
  final ValueChanged<int> onRemovePending;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (replyTo != null || editing)
            Material(
              color: scheme.surfaceContainerHighest,
              child: ListTile(
                dense: true,
                leading: Icon(editing ? Icons.edit : Icons.reply),
                title: Text(editing ? 'Редактирование' : 'Ответ'),
                subtitle: Text(
                  editing ? controller.text
                    : (replyTo?.body.trim().isNotEmpty == true
                      ? replyTo!.body
                      : 'Медиа'),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: editing ? onCancelEdit : onClearReply,
                ),
              ),
            ),
          if (pending.isNotEmpty)
            SizedBox(
              height: 56,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                itemCount: pending.length,
                separatorBuilder: (_, _) => const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final file = pending[index];
                  return Chip(
                    label: Text(file.name, overflow: TextOverflow.ellipsis),
                    onDeleted: () => onRemovePending(index),
                  );
                },
              ),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 12, 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                  tooltip: 'Вложение',
                  onPressed: sending || editing ? null : onAttach,
                  icon: const Icon(Icons.attach_file),
                ),
                Expanded(
                  child: TextField(
                    controller: controller,
                    enabled: !sending,
                    minLines: 1,
                    maxLines: 5,
                    textInputAction: TextInputAction.newline,
                    decoration: InputDecoration(
                      hintText: editing ? 'Изменить сообщение' : 'Сообщение',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton.filled(
                  tooltip: editing ? 'Сохранить' : 'Отправить',
                  onPressed: sending ? null : onSend,
                  icon: sending
                    ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                    : Icon(editing ? Icons.check : Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MessageBubble extends StatelessWidget {
  const _MessageBubble({
    required this.message,
    required this.replyTo,
    required this.isOwn,
    required this.showAuthor,
    required this.isLastInGroup,
    required this.showRead,
    required this.canWrite,
    required this.viewUrl,
    required this.downloadUrl,
    required this.onReply,
    required this.onEdit,
    required this.onDelete,
  });

  final ChatMessage message;
  final ChatMessage? replyTo;
  final bool isOwn;
  final bool showAuthor;
  final bool isLastInGroup;
  final bool showRead;
  final bool canWrite;
  final String Function(String) viewUrl;
  final String Function(String) downloadUrl;
  final VoidCallback onReply;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;
    final background = isOwn ? scheme.primaryContainer : scheme.surfaceContainerHighest;
    final foreground = isOwn ? scheme.onPrimaryContainer : scheme.onSurface;
    final author = message.author?.displayName ?? '';
    final body = message.body.trim().isEmpty && message.attachments.isNotEmpty
      ? ''
      : message.body;

    return Align(
      alignment: isOwn ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.82,
        ),
        child: GestureDetector(
          onLongPress: canWrite
            ? () async {
                final action = await showModalBottomSheet<String>(
                  context: context,
                  showDragHandle: true,
                  builder: (context) => SafeArea(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: const Icon(Icons.reply),
                          title: const Text('Ответить'),
                          onTap: () => Navigator.pop(context, 'reply'),
                        ),
                        if (onEdit != null)
                          ListTile(
                            leading: const Icon(Icons.edit_outlined),
                            title: const Text('Изменить'),
                            onTap: () => Navigator.pop(context, 'edit'),
                          ),
                        if (onDelete != null)
                          ListTile(
                            leading: Icon(Icons.delete_outline, color: scheme.error),
                            title: Text('Удалить', style: TextStyle(color: scheme.error)),
                            onTap: () => Navigator.pop(context, 'delete'),
                          ),
                      ],
                    ),
                  ),
                );
                switch (action) {
                  case 'reply':
                    onReply();
                  case 'edit':
                    onEdit?.call();
                  case 'delete':
                    onDelete?.call();
                }
              }
            : null,
          child: Container(
            margin: EdgeInsets.only(
              top: showAuthor ? 8 : 2,
              bottom: isLastInGroup ? 6 : 2,
            ),
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(16),
                topRight: const Radius.circular(16),
                bottomLeft: Radius.circular(isOwn ? 16 : (isLastInGroup ? 4 : 12)),
                bottomRight: Radius.circular(isOwn ? (isLastInGroup ? 4 : 12) : 16),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showAuthor && author.isNotEmpty)
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
                if (replyTo != null)
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 6),
                    padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
                    decoration: BoxDecoration(
                      border: Border(left: BorderSide(color: scheme.primary, width: 3)),
                      color: scheme.surface.withValues(alpha: 0.35),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          replyTo!.author?.displayName ?? 'Сообщение',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: scheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          replyTo!.body.trim().isEmpty ? 'Медиа' : replyTo!.body,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall?.copyWith(color: foreground.withValues(alpha: 0.85)),
                        ),
                      ],
                    ),
                  ),
                if (body.isNotEmpty)
                  Text(
                    body,
                    style: theme.textTheme.bodyMedium?.copyWith(color: foreground),
                  ),
                if (message.attachments.isNotEmpty) ...[
                  if (body.isNotEmpty) const SizedBox(height: 6),
                  _AttachmentsBlock(
                    attachments: message.attachments,
                    viewUrl: viewUrl,
                    downloadUrl: downloadUrl,
                  ),
                ],
                const SizedBox(height: 4),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (message.isEdited) ...[
                        Text(
                          'изм.',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: foreground.withValues(alpha: 0.7),
                          ),
                        ),
                        const SizedBox(width: 4),
                      ],
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
      ),
    );
  }
}

class _AttachmentsBlock extends StatelessWidget {
  const _AttachmentsBlock({
    required this.attachments,
    required this.viewUrl,
    required this.downloadUrl,
  });

  final List<ChatAttachment> attachments;
  final String Function(String) viewUrl;
  final String Function(String) downloadUrl;

  Future<Map<String, String>> _authHeaders() async {
    final token = await getIt<SessionStorage>().accessToken;
    if (token == null || token.isEmpty) {
      return const {};
    }

    return {'Authorization': token};
  }

  Future<void> _openImage(BuildContext context, ChatAttachment attachment) async {
    final headers = await _authHeaders();
    if (!context.mounted) {
      return;
    }

    await showDialog<void>(
      context: context,
      builder: (context) => Dialog(
        child: InteractiveViewer(
          child: Image.network(
            viewUrl(attachment.id),
            headers: headers,
            fit: BoxFit.contain,
            errorBuilder: (_, _, _) => const Padding(
              padding: EdgeInsets.all(24),
              child: Text('Не удалось открыть изображение'),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _download(BuildContext context, ChatAttachment attachment) async {
    final headers = await _authHeaders();
    final response = await http.get(
      Uri.parse(downloadUrl(attachment.id)),
      headers: headers,
    );

    if (response.statusCode < 200 || response.statusCode >= 300) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Не удалось скачать файл')),
        );
      }
      return;
    }

    final uri = Uri.parse(downloadUrl(attachment.id));
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (final attachment in attachments) ...[
          if (isChatImageAttachment(attachment.name, attachment.mimeType))
            FutureBuilder<Map<String, String>>(
              future: _authHeaders(),
              builder: (context, snapshot) {
                return GestureDetector(
                  onTap: () => _openImage(context, attachment),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      viewUrl(attachment.id),
                      headers: snapshot.data,
                      height: 160,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (_, _, _) => ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: const Icon(Icons.broken_image_outlined),
                        title: Text(attachment.name),
                      ),
                    ),
                  ),
                );
              },
            )
          else
            ListTile(
              contentPadding: EdgeInsets.zero,
              dense: true,
              leading: Icon(
                isChatVideoAttachment(attachment.name, attachment.mimeType) ? Icons.videocam_outlined : Icons.attach_file,
              ),
              title: Text(attachment.name, maxLines: 1, overflow: TextOverflow.ellipsis),
              subtitle: Text(formatAttachmentSize(attachment.size)),
              onTap: () => _download(context, attachment),
            ),
          const SizedBox(height: 4),
        ],
      ],
    );
  }
}

class _MembersSheet extends StatelessWidget {
  const _MembersSheet({
    required this.state,
    this.onAddMembers,
    this.onRename,
    this.onRemove,
  });

  final ChatRoomLoaded state;
  final VoidCallback? onAddMembers;
  final VoidCallback? onRename;
  final ValueChanged<int>? onRemove;

  @override
  Widget build(BuildContext context) {
    final members = state.room.members;
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.65,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 4, 8, 8),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Участники (${members.length})',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                if (onRename != null)
                  IconButton(
                    tooltip: 'Переименовать',
                    onPressed: onRename,
                    icon: const Icon(Icons.edit_outlined),
                  ),
                if (onAddMembers != null)
                  IconButton(
                    tooltip: 'Добавить',
                    onPressed: onAddMembers,
                    icon: const Icon(Icons.person_add_alt_1_outlined),
                  ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: members.length,
              itemBuilder: (context, index) {
                final member = members[index];
                final isSelf = member.user.username == state.currentUsername;
                return ListTile(
                  leading: ChatAvatar(
                    label: member.user.displayName,
                    online: member.isOnline,
                  ),
                  title: Text(member.user.displayName),
                  subtitle: Text(
                    [
                      '@${member.user.username}',
                      if (member.role.isNotEmpty) member.role,
                      if (member.isOnline) 'в сети',
                    ].toString(),
                  ),
                  trailing: onRemove != null && !isSelf
                    ? IconButton(
                      tooltip: 'Удалить',
                      onPressed: () => onRemove!(member.user.id),
                      icon: const Icon(Icons.remove_circle_outline),
                    )
                    : null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
