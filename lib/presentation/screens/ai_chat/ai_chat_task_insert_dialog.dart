import 'package:flutter/material.dart';
import 'package:katan/app/di.dart';
import 'package:katan/domain/usecases/add_task_comment_usecase.dart';
import 'package:katan/domain/usecases/append_task_description_usecase.dart';

Future<bool> showAiChatTaskInsertDialog({
  required BuildContext context,
  required int taskId,
  required String content,
  String? taskTitle,
}) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (context) => _AiChatTaskInsertDialog(
      taskId: taskId,
      content: content,
      taskTitle: taskTitle,
    ),
  );
  return result == true;
}

class _AiChatTaskInsertDialog extends StatefulWidget {
  const _AiChatTaskInsertDialog({
    required this.taskId,
    required this.content,
    this.taskTitle,
  });

  final int taskId;
  final String content;
  final String? taskTitle;

  @override
  State<_AiChatTaskInsertDialog> createState() => _AiChatTaskInsertDialogState();
}

class _AiChatTaskInsertDialogState extends State<_AiChatTaskInsertDialog> {
  var _mode = _InsertMode.comment;
  var _saving = false;

  Future<void> _submit() async {
    final text = widget.content.trim();
    if (text.isEmpty || widget.taskId <= 0 || _saving) {
      return;
    }

    setState(() => _saving = true);
    try {
      if (_mode == _InsertMode.comment) {
        await getIt<AddTaskCommentUseCase>()(
          taskId: widget.taskId,
          content: text,
        );
      } else {
        await getIt<AppendTaskDescriptionUseCase>()(
          taskId: widget.taskId,
          text: text,
        );
      }
      if (mounted) {
        Navigator.of(context).pop(true);
      }
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
    final title = widget.taskTitle?.trim().isNotEmpty == true ? 'В задачу: ${widget.taskTitle}' : 'В задачу';

    return AlertDialog(
      title: Text(title),
      content: SizedBox(
        width: 480,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SegmentedButton<_InsertMode>(
              segments: const [
                ButtonSegment(
                  value: _InsertMode.comment,
                  label: Text('Комментарий'),
                ),
                ButtonSegment(
                  value: _InsertMode.description,
                  label: Text('Описание'),
                ),
              ],
              selected: {_mode},
              onSelectionChanged: _saving ? null : (value) => setState(() => _mode = value.first),
            ),
            const SizedBox(height: 12),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 240),
              child: SingleChildScrollView(
                child: SelectableText(widget.content.trim().isEmpty ? 'Нет текста для вставки' : widget.content.trim()),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: _saving ? null : () => Navigator.pop(context, false),
          child: const Text('Отмена'),
        ),
        FilledButton(
          onPressed: _saving || widget.content.trim().isEmpty ? null : _submit,
          child: Text(_saving ? 'Сохранение' : 'Сохранить'),
        ),
      ],
    );
  }
}

enum _InsertMode { comment, description }
