import 'package:flutter/material.dart';
import 'package:katan/app/di.dart';
import 'package:katan/domain/usecases/create_task_usecase.dart';
import 'package:katan/presentation/screens/tasks/task_detail_screen.dart';

Future<void> showCreateTaskSheet(
  BuildContext context, {
  int? projectId,
  String? projectTitle,
  VoidCallback? onCreated,
}) async {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  var submitting = false;

  await showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (sheetContext) {
      return StatefulBuilder(
        builder: (context, setState) {
          final bottom = MediaQuery.viewInsetsOf(context).bottom;

          Future<void> submit() async {
            final title = titleController.text.trim();
            if (title.isEmpty || submitting) {
              return;
            }

            setState(() => submitting = true);
            try {
              final task = await getIt<CreateTaskUseCase>()(
                title: title,
                description: descriptionController.text.trim(),
                projectId: projectId,
              );
              if (!context.mounted) {
                return;
              }
              Navigator.of(context).pop();
              onCreated?.call();
              await Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => TaskDetailScreen(taskId: task.id),
                ),
              );
            } catch (e) {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(e.toString())),
                );
              }
            } finally {
              if (context.mounted) {
                setState(() => submitting = false);
              }
            }
          }

          return Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 16 + bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Новая задача',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                if (projectTitle != null && projectTitle.isNotEmpty) ...[
                  const SizedBox(height: 4),
                  Text(
                    'Проект: $projectTitle',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
                const SizedBox(height: 16),
                TextField(
                  controller: titleController,
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Название',
                    hintText: 'Кратко, что сделать',
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: descriptionController,
                  minLines: 3,
                  maxLines: 6,
                  decoration: const InputDecoration(
                    labelText: 'Описание',
                    alignLabelWithHint: true,
                  ),
                ),
                const SizedBox(height: 16),
                FilledButton(
                  onPressed: submitting ? null : submit,
                  child: submitting
                    ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                    : const Text('Создать'),
                ),
              ],
            ),
          );
        },
      );
    },
  );

  titleController.dispose();
  descriptionController.dispose();
}
