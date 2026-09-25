import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/utils/task_status.dart';
import 'package:katan/domain/usecases/run_task_workflow_action_usecase.dart';

enum TaskAction {
  start,
  pause,
  complete,
  postpone,
  reopen,
  delegate,
  delete;

  String? get workflowAction => switch (this) {
    TaskAction.start => TaskWorkflowActions.start,
    TaskAction.pause => TaskWorkflowActions.pause,
    TaskAction.complete => TaskWorkflowActions.complete,
    TaskAction.postpone => TaskWorkflowActions.postpone,
    TaskAction.reopen => TaskWorkflowActions.reopen,
    TaskAction.delegate || TaskAction.delete => null,
  };
}

class TaskActionSpec {
  const TaskActionSpec({
    required this.action,
    required this.label,
    required this.icon,
    this.danger = false,
    this.primary = false,
  });

  final TaskAction action;
  final String label;
  final IconData icon;
  final bool danger;
  final bool primary;
}

List<TaskActionSpec> buildTaskActions({
  required String status,
  required bool isRunning,
  required bool isPaused,
  required bool canWrite,
  required bool canDelete,
  bool includeDelegate = true,
  bool excludeDelete = false,
}) {
  final actions = <TaskActionSpec>[];
  final isComplete = status == TaskStatuses.complete;

  if (canWrite) {
    if (isComplete) {
      actions.add(const TaskActionSpec(
        action: TaskAction.reopen,
        label: 'Возобновить',
        icon: Icons.restart_alt,
        primary: true,
      ));
    } else {
      if (isRunning) {
        actions.add(const TaskActionSpec(
          action: TaskAction.pause,
          label: 'Пауза',
          icon: Icons.pause,
        ));
      } else {
        actions.add(TaskActionSpec(
          action: TaskAction.start,
          label: isPaused ? 'Продолжить' : 'Начать',
          icon: Icons.play_arrow,
        ));
      }

      actions.addAll([
        const TaskActionSpec(
          action: TaskAction.complete,
          label: 'Завершить',
          icon: Icons.check,
          primary: true,
        ),
        const TaskActionSpec(
          action: TaskAction.postpone,
          label: 'Отложить',
          icon: Icons.schedule,
        ),
        if (includeDelegate)
          const TaskActionSpec(
            action: TaskAction.delegate,
            label: 'Делегировать',
            icon: Icons.person_outline,
          ),
      ]);
    }
  }

  if (canDelete && !excludeDelete) {
    actions.add(const TaskActionSpec(
      action: TaskAction.delete,
      label: 'Удалить',
      icon: Icons.delete_outline,
      danger: true,
    ));
  }

  return actions;
}

class TaskActionsBar extends StatelessWidget {
  const TaskActionsBar({
    super.key,
    required this.actions,
    required this.onAction,
    this.busy = false,
    this.runningAction,
  });

  final List<TaskActionSpec> actions;
  final ValueChanged<TaskAction> onAction;
  final bool busy;
  final String? runningAction;

  @override
  Widget build(BuildContext context) {
    if (actions.isEmpty) {
      return const SizedBox.shrink();
    }

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final spec in actions)
          _ActionButton(
            spec: spec,
            busy: busy,
            running: runningAction != null && (runningAction == spec.action.workflowAction || runningAction == spec.action.name),
            onPressed: () => onAction(spec.action),
          ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.spec,
    required this.busy,
    required this.running,
    required this.onPressed,
  });

  final TaskActionSpec spec;
  final bool busy;
  final bool running;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final icon = running
      ? const SizedBox(
        width: 16,
        height: 16,
        child: CircularProgressIndicator(strokeWidth: 2),
      )
      : Icon(spec.icon, size: 18);

    if (spec.primary) {
      return FilledButton.icon(
        onPressed: busy ? null : onPressed,
        icon: icon,
        label: Text(spec.label),
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.success,
          minimumSize: const Size(0, 40),
          padding: const EdgeInsets.symmetric(horizontal: 14),
        ),
      );
    }

    return OutlinedButton.icon(
      onPressed: busy ? null : onPressed,
      icon: icon,
      label: Text(spec.label),
      style: OutlinedButton.styleFrom(
        foregroundColor: spec.danger ? AppColors.danger : AppColors.primary,
        side: BorderSide(color: spec.danger ? AppColors.danger : AppColors.primary),
        minimumSize: const Size(0, 40),
        padding: const EdgeInsets.symmetric(horizontal: 14),
      ),
    );
  }
}

class TaskActionsMenu extends StatelessWidget {
  const TaskActionsMenu({
    super.key,
    required this.actions,
    required this.onAction,
    this.busy = false,
  });

  final List<TaskActionSpec> actions;
  final ValueChanged<TaskAction> onAction;
  final bool busy;

  @override
  Widget build(BuildContext context) {
    if (actions.isEmpty) {
      return const SizedBox.shrink();
    }

    if (busy) {
      return const Padding(
        padding: EdgeInsets.all(10),
        child: SizedBox(
          width: 18,
          height: 18,
          child: CircularProgressIndicator(strokeWidth: 2),
        ),
      );
    }

    return PopupMenuButton<TaskAction>(
      tooltip: 'Действия',
      icon: const Icon(Icons.more_vert, size: 20),
      padding: EdgeInsets.zero,
      onSelected: onAction,
      itemBuilder: (context) => [
        for (final spec in actions)
          PopupMenuItem<TaskAction>(
            value: spec.action,
            child: Row(
              children: [
                Icon(
                  spec.icon,
                  size: 18,
                  color: spec.danger ? AppColors.danger : AppColors.textRegular,
                ),
                const SizedBox(width: 10),
                Text(
                  spec.label,
                  style: TextStyle(
                    color: spec.danger ? AppColors.danger : AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

Future<bool> confirmTaskDelete(BuildContext context, {String? title}) async {
  final confirmed = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Удалить задачу?'),
      content: Text(title?.trim().isNotEmpty == true ? title!.trim() : 'Действие нельзя отменить'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text('Отмена'),
        ),
        FilledButton(
          onPressed: () => Navigator.pop(context, true),
          style: FilledButton.styleFrom(backgroundColor: AppColors.danger),
          child: const Text('Удалить'),
        ),
      ],
    ),
  );

  return confirmed == true;
}
