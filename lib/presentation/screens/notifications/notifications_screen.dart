import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/utils/formatters.dart';
import 'package:katan/domain/entities/app_notification.dart';
import 'package:katan/presentation/cubit/notifications_cubit.dart';
import 'package:katan/presentation/screens/tasks/task_detail_screen.dart';
import 'package:katan/presentation/widgets/empty_state.dart';
import 'package:katan/presentation/widgets/error_view.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotificationsCubit, NotificationsState>(
      listenWhen: (previous, current) {
        if (current is! NotificationsLoaded || current.actionError == null) {
          return false;
        }

        return previous is! NotificationsLoaded || previous.actionError != current.actionError;
      },
      listener: (context, state) {
        if (state is NotificationsLoaded && state.actionError != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.actionError!)),
          );
        }
      },
      builder: (context, state) {
        final unread = state is NotificationsLoaded ? state.unreadCount : 0;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Уведомления'),
            actions: [
              if (unread > 0)
                TextButton(
                  onPressed: () => context.read<NotificationsCubit>().markAllRead(),
                  child: const Text('Прочитать все'),
                ),
              IconButton(
                tooltip: 'Обновить',
                onPressed: () => context.read<NotificationsCubit>().load(),
                icon: const Icon(Icons.refresh),
              ),
            ],
          ),
          body: switch (state) {
            NotificationsInitial() || NotificationsLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            NotificationsFailure(:final message) => ErrorView(
              message: message,
              onRetry: () => context.read<NotificationsCubit>().load(),
            ),
            NotificationsLoaded(:final items) => items.isEmpty
              ? const EmptyState(
                icon: Icons.notifications_none,
                message: 'Нет уведомлений',
              )
              : RefreshIndicator(
                onRefresh: () => context.read<NotificationsCubit>().load(),
                child: ListView.separated(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: items.length,
                  separatorBuilder: (context, index) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    return _NotificationTile(item: items[index]);
                  },
                ),
              ),
          },
        );
      },
    );
  }
}

class _NotificationTile extends StatelessWidget {
  const _NotificationTile({required this.item});

  final AppNotification item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final unread = !item.read;

    return ListTile(
      isThreeLine: item.description.trim().isNotEmpty,
      leading: CircleAvatar(
        backgroundColor: unread
          ? theme.colorScheme.primaryContainer
          : theme.colorScheme.surfaceContainerHighest,
        child: Icon(
          item.hasTask ? Icons.task_alt : Icons.info_outline,
          color: unread
            ? theme.colorScheme.onPrimaryContainer
            : theme.colorScheme.onSurfaceVariant,
        ),
      ),
      title: Text(
        item.name.isEmpty ? 'Уведомление' : item.name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: unread
          ? theme.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700)
          : theme.textTheme.titleSmall,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (item.description.trim().isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              item.description.trim(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          if (item.createdAt != null) ...[
            const SizedBox(height: 4),
            Text(
              formatDateTime(item.createdAt),
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ],
        ],
      ),
      trailing: unread
        ? Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            shape: BoxShape.circle,
          ),
        )
        : null,
      onTap: () async {
        if (item.canMarkRead) {
          await context.read<NotificationsCubit>().markRead(item.id);
        }

        if (!context.mounted) {
          return;
        }

        final taskId = item.taskId;
        if (taskId != null && taskId > 0) {
          await Navigator.of(context).push(
            MaterialPageRoute<void>(builder: (_) => TaskDetailScreen(taskId: taskId)),
          );
        }
      },
    );
  }
}
