import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/utils/formatters.dart';
import 'package:katan/core/utils/task_status.dart';
import 'package:katan/domain/entities/task.dart';

class TaskListCard extends StatelessWidget {
  const TaskListCard({
    super.key,
    required this.task,
    required this.onTap,
  });

  final TaskSummary task;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final title = task.title.isEmpty ? 'Без названия' : task.title;
    final due = formatDateTime(task.dueAt);
    final metaParts = <String>[
      if (task.assignee != null) task.assignee!.displayName,
      if (due.isNotEmpty) due,
      if (task.subtaskCount > 0)
        '${task.subtaskCompletedCount}/${task.subtaskCount}',
    ];

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      elevation: 0,
      color: theme.colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: theme.colorScheme.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  if (task.isPaused)
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Icon(
                        Icons.pause_circle_outline,
                        size: 18,
                        color: AppColors.warning,
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 8),
              Wrap(
                spacing: 6,
                runSpacing: 6,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  _StatusBadge(status: task.status, columnTitle: task.columnTitle),
                  if (task.isOverdue)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Просрочена',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onErrorContainer,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  if (task.projectTitle.isNotEmpty)
                    Text(
                      task.projectTitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                ],
              ),
              if (metaParts.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  metaParts.join(' · '),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: task.isOverdue
                      ? theme.colorScheme.error
                      : AppColors.textRegular,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({
    required this.status,
    this.columnTitle,
  });

  final String status;
  final String? columnTitle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: taskStatusBackground(status),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        taskStatusLabel(status, columnTitle: columnTitle),
        style: theme.textTheme.labelSmall?.copyWith(
          color: taskStatusForeground(status),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
