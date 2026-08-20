import 'package:flutter/material.dart';
import 'package:katan/app/di.dart';
import 'package:katan/domain/usecases/create_task_usecase.dart';
import 'package:katan/presentation/screens/tasks/task_detail_screen.dart';

Future<void> showAiChatTaskDraftDialog({
  required BuildContext context,
  required String initialTitle,
  required String initialDescription,
  int? projectId,
}) async {
  await showDialog<void>(
    context: context,
    builder: (context) => _AiChatTaskDraftDialog(
      initialTitle: initialTitle,
      initialDescription: initialDescription,
      projectId: projectId,
    ),
  );
}

class _AiChatTaskDraftDialog extends StatefulWidget {
  const _AiChatTaskDraftDialog({
    required this.initialTitle,
    required this.initialDescription,
    this.projectId,
  });

  final String initialTitle;
  final String initialDescription;
  final int? projectId;

  @override
  State<_AiChatTaskDraftDialog> createState() => _AiChatTaskDraftDialogState();
}

class _AiChatTaskDraftDialogState extends State<_AiChatTaskDraftDialog> {
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  var _saving = false;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.initialTitle);
    _descriptionController = TextEditingController(text: widget.initialDescription);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final title = _titleController.text.trim();
    if (title.isEmpty || _saving) {
      return;
    }

    setState(() => _saving = true);
    try {
      final task = await getIt<CreateTaskUseCase>()(
        title: title,
        description: _descriptionController.text.trim(),
        projectId: widget.projectId,
      );
      if (!mounted) {
        return;
      }
      Navigator.of(context).pop();
      await Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => TaskDetailScreen(taskId: task.id)));
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    } finally {
      if (mounted) {
        setState(() => _saving = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Создать задачу'),
      content: SizedBox(
        width: 480,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _titleController,
              enabled: !_saving,
              decoration: const InputDecoration(
                labelText: 'Название',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: _descriptionController,
              enabled: !_saving,
              minLines: 4,
              maxLines: 8,
              decoration: const InputDecoration(
                labelText: 'Описание',
                border: OutlineInputBorder(),
                alignLabelWithHint: true,
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: _saving ? null : () => Navigator.pop(context),
          child: const Text('Отмена'),
        ),
        FilledButton(
          onPressed: _saving ? null : _submit,
          child: Text(_saving ? 'Создание' : 'Создать'),
        ),
      ],
    );
  }
}
