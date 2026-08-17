import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/entities/chat.dart';
import 'package:katan/presentation/cubit/chat_rooms_cubit.dart';
import 'package:katan/presentation/screens/chat/chat_room_screen.dart';
import 'package:katan/presentation/utils/formatters.dart';
import 'package:katan/presentation/widgets/empty_state.dart';
import 'package:katan/presentation/widgets/error_view.dart';

class ChatRoomsScreen extends StatelessWidget {
  const ChatRoomsScreen({
    super.key,
    required this.account,
  });

  final Account account;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Чат'),
        actions: [
          IconButton(
            tooltip: 'Обновить',
            onPressed: () => context.read<ChatRoomsCubit>().load(),
            icon: const Icon(Icons.refresh),
          ),
        ],
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
            ChatRoomsLoaded(:final rooms) => rooms.isEmpty
              ? const EmptyState(
                icon: Icons.forum_outlined,
                message: 'Комнат пока нет',
              )
              : RefreshIndicator(
                onRefresh: () => context.read<ChatRoomsCubit>().load(),
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: rooms.length,
                  separatorBuilder: (context, index) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final room = rooms[index];
                    return _RoomTile(
                      room: room,
                      title: room.displayTitle(account.username),
                      onTap: () async {
                        await Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (_) => ChatRoomScreen(
                              roomId: room.id,
                              currentUsername: account.username,
                              canWrite: account.canWriteChat,
                            ),
                          ),
                        );
                        if (context.mounted) {
                          await context.read<ChatRoomsCubit>().load();
                        }
                      },
                    );
                  },
                ),
              ),
          };
        },
      ),
    );
  }
}

class _RoomTile extends StatelessWidget {
  const _RoomTile({
    required this.room,
    required this.title,
    required this.onTap,
  });

  final ChatRoom room;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final preview = room.lastMessage;
    final previewText = () {
      if (preview == null) {
        return 'Нет сообщений';
      }

      final body = preview.body.trim();
      if (body.isEmpty) {
        return 'Медиа';
      }

      return body;
    }();

    return ListTile(
      onTap: onTap,
      isThreeLine: true,
      leading: CircleAvatar(
        child: Icon(_roomIcon(room.type)),
      ),
      title: Text(
        title,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        '${room.typeLabel()} · $previewText',
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

  IconData _roomIcon(String type) {
    return switch (type) {
      'global' => Icons.public,
      'group' => Icons.group_outlined,
      _ => Icons.person_outline,
    };
  }
}
