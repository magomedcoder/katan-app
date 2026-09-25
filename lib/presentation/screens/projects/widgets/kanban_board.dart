import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/domain/entities/kanban.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_avatar.dart';

class KanbanBoard extends StatelessWidget {
  const KanbanBoard({
    super.key,
    required this.columns,
    required this.canMove,
    required this.canCreate,
    required this.canDragFrom,
    required this.onMove,
    required this.onCreate,
    required this.onOpenTask,
    this.movingTaskId,
  });

  final List<KanbanColumn> columns;
  final bool canMove;
  final bool canCreate;
  final bool Function(KanbanColumn column) canDragFrom;
  final void Function(int taskId, int columnId) onMove;
  final void Function(KanbanColumn column) onCreate;
  final ValueChanged<int> onOpenTask;
  final int? movingTaskId;

  @override
  Widget build(BuildContext context) {
    if (columns.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            'В проекте пока нет колонок',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        ),
      );
    }

    final width = MediaQuery.sizeOf(context).width;
    final columnWidth = width < 420 ? width * 0.82 : 300.0;

    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
      itemCount: columns.length,
      separatorBuilder: (_, _) => const SizedBox(width: 12),
      itemBuilder: (context, index) {
        final column = columns[index];
        return SizedBox(
          width: columnWidth,
          child: _KanbanColumnView(
            column: column,
            columns: columns,
            canMove: canMove,
            canCreate: canCreate,
            draggable: canMove && canDragFrom(column),
            movingTaskId: movingTaskId,
            onMove: onMove,
            onCreate: onCreate,
            onOpenTask: onOpenTask,
          ),
        );
      },
    );
  }
}

class _KanbanColumnView extends StatefulWidget {
  const _KanbanColumnView({
    required this.column,
    required this.columns,
    required this.canMove,
    required this.canCreate,
    required this.draggable,
    required this.onMove,
    required this.onCreate,
    required this.onOpenTask,
    this.movingTaskId,
  });

  final KanbanColumn column;
  final List<KanbanColumn> columns;
  final bool canMove;
  final bool canCreate;
  final bool draggable;
  final void Function(int taskId, int columnId) onMove;
  final void Function(KanbanColumn column) onCreate;
  final ValueChanged<int> onOpenTask;
  final int? movingTaskId;

  @override
  State<_KanbanColumnView> createState() => _KanbanColumnViewState();
}

class _KanbanColumnViewState extends State<_KanbanColumnView> {
  bool _hovered = false;

  Color get _accent {
    final raw = widget.column.color.replaceAll('#', '').trim();
    if (raw.length == 6) {
      final value = int.tryParse(raw, radix: 16);
      if (value != null) {
        return Color(0xFF000000 | value);
      }
    }

    return AppColors.primary;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tasks = widget.column.tasks;

    return DragTarget<_KanbanDragData>(
      onWillAcceptWithDetails: (details) => widget.canMove && details.data.fromColumnId != widget.column.id,
      onAcceptWithDetails: (details) {
        setState(() => _hovered = false);
        widget.onMove(details.data.taskId, widget.column.id);
      },
      onMove: (_) {
        if (!_hovered) {
          setState(() => _hovered = true);
        }
      },
      onLeave: (_) => setState(() => _hovered = false),
      builder: (context, candidate, rejected) {
        return Container(
          decoration: BoxDecoration(
            color: _hovered ? AppColors.primary.withValues(alpha: 0.06) : AppColors.fill,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: _hovered ? AppColors.primary : theme.colorScheme.outlineVariant,
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(12, 10, 8, 10),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(13)),
                  border: Border(
                    top: BorderSide(color: _accent, width: 3),
                    bottom: BorderSide(color: theme.colorScheme.outlineVariant),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: _accent,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        widget.column.title,
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                        color: AppColors.fill,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '${tasks.length}',
                        style: theme.textTheme.labelSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: [
                    for (final task in tasks)
                      _KanbanCard(
                        task: task,
                        column: widget.column,
                        columns: widget.columns,
                        draggable: widget.draggable,
                        canMove: widget.canMove,
                        moving: widget.movingTaskId == task.id,
                        onMove: widget.onMove,
                        onOpen: widget.onOpenTask,
                      ),
                    if (widget.canCreate)
                      OutlinedButton.icon(
                        onPressed: () => widget.onCreate(widget.column),
                        icon: const Icon(Icons.add, size: 18),
                        label: const Text('Добавить'),
                        style: OutlinedButton.styleFrom(
                          minimumSize: const Size.fromHeight(40),
                          side: const BorderSide(color: AppColors.border),
                          foregroundColor: AppColors.textRegular,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _KanbanDragData {
  const _KanbanDragData({
    required this.taskId,
    required this.fromColumnId,
  });

  final int taskId;
  final int fromColumnId;
}

class _KanbanCard extends StatelessWidget {
  const _KanbanCard({
    required this.task,
    required this.column,
    required this.columns,
    required this.draggable,
    required this.canMove,
    required this.moving,
    required this.onMove,
    required this.onOpen,
  });

  final KanbanTaskCard task;
  final KanbanColumn column;
  final List<KanbanColumn> columns;
  final bool draggable;
  final bool canMove;
  final bool moving;
  final void Function(int taskId, int columnId) onMove;
  final ValueChanged<int> onOpen;

  @override
  Widget build(BuildContext context) {
    final card = _card(context);
    if (!draggable) {
      return card;
    }

    return LongPressDraggable<_KanbanDragData>(
      data: _KanbanDragData(taskId: task.id, fromColumnId: column.id),
      feedback: Opacity(
        opacity: 0.9,
        child: SizedBox(
          width: 260,
          child: Material(
            elevation: 6,
            borderRadius: BorderRadius.circular(12),
            child: _card(context),
          ),
        ),
      ),
      childWhenDragging: Opacity(opacity: 0.4, child: card),
      child: card,
    );
  }

  Widget _card(BuildContext context) {
    final theme = Theme.of(context);
    final assignee = task.assignee;

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => onOpen(task.id),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      task.title.isEmpty ? 'Без названия' : task.title,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (moving)
                    const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  else if (canMove)
                    _MoveMenu(
                      columns: columns,
                      currentColumnId: column.id,
                      onSelected: (columnId) => onMove(task.id, columnId),
                    ),
                ],
              ),
              if (task.storyPoints > 0) ...[
                const SizedBox(height: 6),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFBEB),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    '${task.storyPoints} SP',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: const Color(0xFFB45309),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
              if (assignee != null) ...[
                const SizedBox(height: 8),
                Row(
                  children: [
                    ChatAvatar(label: assignee.displayName, size: 26),
                    const SizedBox(width: 6),
                    Expanded(
                      child: Text(
                        assignee.displayName,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _MoveMenu extends StatelessWidget {
  const _MoveMenu({
    required this.columns,
    required this.currentColumnId,
    required this.onSelected,
  });

  final List<KanbanColumn> columns;
  final int currentColumnId;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    final targets = columns.where((column) => column.id != currentColumnId).toList();
    if (targets.isEmpty) {
      return const SizedBox.shrink();
    }

    return PopupMenuButton<int>(
      tooltip: 'Переместить',
      icon: const Icon(Icons.drive_file_move_outline, size: 18),
      padding: EdgeInsets.zero,
      onSelected: onSelected,
      itemBuilder: (context) => [
        for (final column in targets)
          PopupMenuItem<int>(
            value: column.id,
            child: Text(column.title),
          ),
      ],
    );
  }
}
