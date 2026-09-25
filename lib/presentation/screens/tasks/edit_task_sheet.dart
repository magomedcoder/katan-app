import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/utils/formatters.dart';
import 'package:katan/domain/entities/task.dart';

typedef TaskUpdateSubmit = Future<bool> Function({
  required String title,
  required String description,
  DateTime? dueAt,
  int storyPoints,
});

Future<bool> showEditTaskSheet(
  BuildContext context, {
  required TaskDetail task,
  required TaskUpdateSubmit onSubmit,
}) async {
  if (task.isComplete) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Завершённую задачу нельзя изменить - сначала возобновите её'),
      ),
    );
    return false;
  }

  final saved = await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (sheetContext) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.viewInsetsOf(sheetContext).bottom,
      ),
      child: _EditTaskForm(task: task, onSubmit: onSubmit),
    ),
  );

  return saved == true;
}

class _EditTaskForm extends StatefulWidget {
  const _EditTaskForm({
    required this.task,
    required this.onSubmit,
  });

  final TaskDetail task;
  final TaskUpdateSubmit onSubmit;

  @override
  State<_EditTaskForm> createState() => _EditTaskFormState();
}

class _EditTaskFormState extends State<_EditTaskForm> {
  late final TextEditingController _titleController = TextEditingController(text: widget.task.title);
  late final TextEditingController _descriptionController = TextEditingController(text: widget.task.description);
  late final TextEditingController _storyPointsController = TextEditingController(text: widget.task.storyPoints.toString());

  late DateTime? _dueAt = widget.task.dueAt;
  bool _submitting = false;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _storyPointsController.dispose();
    super.dispose();
  }

  Future<void> _pickDueDate() async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: _dueAt ?? now,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 5),
    );
    if (date == null || !mounted) {
      return;
    }

    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_dueAt ?? now),
    );
    if (!mounted) {
      return;
    }

    setState(() {
      _dueAt = DateTime(
        date.year,
        date.month,
        date.day,
        time?.hour ?? 18,
        time?.minute ?? 0,
      );
    });
  }

  Future<void> _submit() async {
    final title = _titleController.text.trim();
    if (title.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Укажите название')),
      );
      return;
    }

    setState(() => _submitting = true);
    final ok = await widget.onSubmit(
      title: title,
      description: _descriptionController.text.trim(),
      dueAt: _dueAt,
      storyPoints: int.tryParse(_storyPointsController.text.trim()) ?? 0,
    );

    if (!mounted) {
      return;
    }

    if (ok) {
      Navigator.of(context).pop(true);
      return;
    }

    setState(() => _submitting = false);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(context).height * 0.9,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Изменить задачу', style: theme.textTheme.titleLarge),
              const SizedBox(height: 16),
              TextField(
                controller: _titleController,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(labelText: 'Название'),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _descriptionController,
                minLines: 4,
                maxLines: 10,
                decoration: const InputDecoration(
                  labelText: 'Описание',
                  alignLabelWithHint: true,
                ),
              ),
              const SizedBox(height: 8),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.event_outlined, color: AppColors.textSecondary),
                title: Text('Крайний срок', style: theme.textTheme.bodySmall),
                subtitle: Text(
                  _dueAt == null ? 'Не задан' : formatDateTime(_dueAt),
                  style: theme.textTheme.bodyMedium,
                ),
                trailing: _dueAt == null
                  ? const Icon(Icons.chevron_right)
                  : IconButton(
                    tooltip: 'Очистить',
                    onPressed: () => setState(() => _dueAt = null),
                    icon: const Icon(Icons.close, size: 18),
                  ),
                onTap: _pickDueDate,
              ),
              const SizedBox(height: 4),
              TextField(
                controller: _storyPointsController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Стори Поинты'),
              ),
              const SizedBox(height: 20),
              FilledButton(
                onPressed: _submitting ? null : _submit,
                child: _submitting
                  ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                  : const Text('Сохранить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
