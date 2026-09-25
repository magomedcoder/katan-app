import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/utils/formatters.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/presentation/cubit/chat_rooms_cubit.dart';
import 'package:katan/presentation/screens/chat/chat_room_screen.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_avatar.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_user_picker_sheet.dart';
import 'package:katan/presentation/widgets/empty_state.dart';
import 'package:katan/presentation/widgets/error_view.dart';

class ChatRoomsScreen extends StatelessWidget {
  const ChatRoomsScreen({
    super.key,
    required this.account,
  });

  final Account account;

  Future<void> _openRoom(BuildContext context, int roomId) async {
    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => ChatRoomScreen(
          roomId: roomId,
          currentUsername: account.username,
          canWrite: account.canWriteChat,
          canManage: account.canManageChat,
        ),
      ),
    );
    if (context.mounted) {
      await context.read<ChatRoomsCubit>().load();
    }
  }

  Future<void> _createGroup(BuildContext context) async {
    final titleController = TextEditingController();
    final title = await showDialog<String>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Создать группу'),
        content: TextField(
          controller: titleController,
          autofocus: true,
          decoration: const InputDecoration(
            labelText: 'Название группы',
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Отмена'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, titleController.text.trim()),
            child: const Text('Далее'),
          ),
        ],
      ),
    );
    titleController.dispose();
    if (title == null || title.isEmpty || !context.mounted) {
      return;
    }

    final users = await showChatUserPicker(
      context: context,
      title: 'Участники группы',
      search: context.read<ChatRoomsCubit>().searchUsers,
    );
    if (users == null || !context.mounted) {
      return;
    }

    final room = await context.read<ChatRoomsCubit>().createGroup(
      title: title,
      userIds: users.map((u) => u.id).toList(),
    );
    if (room != null && context.mounted) {
      await _openRoom(context, room.id);
    }
  }

  Future<void> _startDirect(BuildContext context, UserRef user) async {
    if (!account.canWriteChat) {
      return;
    }

    final room = await context.read<ChatRoomsCubit>().createDirect(user.id);
    if (room != null && context.mounted) {
      await _openRoom(context, room.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatRoomsCubit, ChatRoomsState>(
      listenWhen: (previous, current) {
        if (current is! ChatRoomsLoaded || current.actionError == null) {
          return false;
        }
        return previous is! ChatRoomsLoaded || previous.actionError != current.actionError;
      },
      listener: (context, state) {
        if (state is ChatRoomsLoaded && state.actionError != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.actionError!)),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Чат'),
          actions: [
            if (account.canManageChat)
              IconButton(
                tooltip: 'Создать группу',
                onPressed: () => _createGroup(context),
                icon: const Icon(Icons.group_add_outlined),
              ),
            IconButton(
              tooltip: 'Обновить',
              onPressed: () => context.read<ChatRoomsCubit>().load(),
              icon: const Icon(Icons.refresh),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(56),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
              child: TextField(
                onChanged: context.read<ChatRoomsCubit>().setQuery,
                decoration: InputDecoration(
                  hintText: 'Поиск чатов и людей',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
            ),
          ),
        ),
        body: BlocBuilder<ChatRoomsCubit, ChatRoomsState>(
          builder: (context, state) {
            return switch (state) {
              ChatRoomsInitial() || ChatRoomsLoading() => const Center(
                child: CircularProgressIndicator(),
              ),
              ChatRoomsFailure(:final message) => ErrorView(
                message: message,
                onRetry: () => context.read<ChatRoomsCubit>().load(),
              ),
              ChatRoomsLoaded() => _RoomsBody(
                state: state,
                account: account,
                onOpenRoom: (roomId) => _openRoom(context, roomId),
                onStartDirect: (user) => _startDirect(context, user),
              ),
            };
          },
        ),
      ),
    );
  }
}

class _RoomsBody extends StatelessWidget {
  const _RoomsBody({
    required this.state,
    required this.account,
    required this.onOpenRoom,
    required this.onStartDirect,
  });

  final ChatRoomsLoaded state;
  final Account account;
  final ValueChanged<int> onOpenRoom;
  final ValueChanged<UserRef> onStartDirect;

  @override
  Widget build(BuildContext context) {
    final rooms = state.visibleRooms;
    final users = state.isSearching ? state.searchUsers : const <UserRef>[];
    final empty = rooms.isEmpty && users.isEmpty && !state.searching;

    if (empty) {
      return EmptyState(
        icon: Icons.forum_outlined,
        message: state.isSearching ? 'Ничего не найдено' : 'Комнат пока нет',
      );
    }

    return RefreshIndicator(
      onRefresh: () => context.read<ChatRoomsCubit>().load(),
      child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          if (state.searching) const LinearProgressIndicator(minHeight: 2),
          if (state.isSearching && rooms.isNotEmpty)
            const _SectionHeader('Чаты'),
          for (final room in rooms)
            _RoomTile(
              room: room,
              title: room.displayTitle(account.username),
              onTap: () => onOpenRoom(room.id),
              onLeave: room.isGlobal
                ? null
                : () async {
                    final ok = await showDialog<bool>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Покинуть чат?'),
                        content: Text("Выйти из '${room.displayTitle(account.username)}'?"),
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
                      await context.read<ChatRoomsCubit>().leaveRoom(room.id);
                    }
                  },
            ),
          if (state.isSearching && users.isNotEmpty) ...[
            const _SectionHeader('Люди'),
            for (final user in users)
              ListTile(
                leading: ChatAvatar(label: user.displayName),
                title: Text(user.displayName),
                subtitle: Text('@${user.username}'),
                enabled: account.canWriteChat,
                onTap: account.canWriteChat ? () => onStartDirect(user) : null,
                trailing: account.canWriteChat
                    ? const Icon(Icons.chat_bubble_outline)
                    : null,
              ),
          ],
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader(this.label);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Text(
        label.toUpperCase(),
        style: Theme.of(context).textTheme.labelSmall?.copyWith(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.6,
        ),
      ),
    );
  }
}

class _RoomTile extends StatelessWidget {
  const _RoomTile({
    required this.room,
    required this.title,
    required this.onTap,
    this.onLeave,
  });

  final ChatRoom room;
  final String title;
  final VoidCallback onTap;
  final VoidCallback? onLeave;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final preview = room.lastMessage;
    final previewText = () {
      if (preview == null) {
        return room.isGlobal ? 'Общий чат команды' : 'Нет сообщений';
      }

      final body = preview.body.trim();
      if (body.isEmpty) {
        return 'Медиа';
      }

      final prefix = preview.userName.trim().isEmpty ? '' : '${preview.userName}: ';
      return '$prefix$body';
    }();

    final online = room.isDirect &&
        room.members.any((m) => m.isOnline && m.user.username.isNotEmpty);

    return ListTile(
      onTap: onTap,
      onLongPress: onLeave,
      isThreeLine: true,
      leading: ChatAvatar(
        label: title,
        online: online,
      ),
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        '${room.typeLabel()} $previewText',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            formatChatTime(preview?.createdAt),
            style: theme.textTheme.labelSmall,
          ),
          if (room.unreadCount > 0) ...[
            const SizedBox(height: 6),
            Badge(
              label: Text(
                room.unreadCount > 99 ? '99+' : '${room.unreadCount}',
              ),
            ),
          ],
        ],
      ),
    );
  }
}
