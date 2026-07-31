import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/domain/entities/file_attachment.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart';
import 'package:katan/domain/repositories/file_repository.dart';
import 'package:katan/domain/usecases/add_task_comment_usecase.dart';
import 'package:katan/domain/usecases/delete_task_file_usecase.dart';
import 'package:katan/domain/usecases/get_task_comments_usecase.dart';
import 'package:katan/domain/usecases/get_task_files_usecase.dart';
import 'package:katan/domain/usecases/get_task_usecase.dart';
import 'package:katan/domain/usecases/upload_task_file_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/cubit/task_detail_cubit.dart';
import 'package:katan/presentation/utils/formatters.dart';
import 'package:katan/presentation/widgets/error_view.dart';
import 'package:url_launcher/url_launcher.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key, required this.taskId});

  final int taskId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TaskDetailCubit(
        taskId: taskId,
        getTaskUseCase: getIt<GetTaskUseCase>(),
        getTaskCommentsUseCase: getIt<GetTaskCommentsUseCase>(),
        addTaskCommentUseCase: getIt<AddTaskCommentUseCase>(),
        getTaskFilesUseCase: getIt<GetTaskFilesUseCase>(),
        uploadTaskFileUseCase: getIt<UploadTaskFileUseCase>(),
        deleteTaskFileUseCase: getIt<DeleteTaskFileUseCase>(),
        fileRepository: getIt<FileRepository>(),
        authCubit: context.read<AuthCubit>(),
      )..load(),
      child: const _TaskDetailView(),
    );
  }
}

class _TaskDetailView extends StatefulWidget {
  const _TaskDetailView();

  @override
  State<_TaskDetailView> createState() => _TaskDetailViewState();
}

class _TaskDetailViewState extends State<_TaskDetailView> {
  final _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  Future<void> _pickAndUpload() async {
    final result = await FilePicker.platform.pickFiles(withData: true);
    if (!mounted) {
      return;
    }

    if (result == null || result.files.isEmpty) {
      return;
    }

    final file = result.files.first;
    final bytes = file.bytes;
    if (bytes == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Не удалось прочитать файл')),
      );

      return;
    }
    await context.read<TaskDetailCubit>().uploadFile(
      fileName: file.name,
      bytes: bytes,
    );
  }

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    final ok = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!ok && mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Не удалось открыть файл')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskDetailCubit, TaskDetailState>(
      listenWhen: (prev, next) => next is TaskDetailLoaded && next.actionError != null,
      listener: (context, state) {
        if (state is TaskDetailLoaded && state.actionError != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.actionError!)),
          );
        }
      },
      builder: (context, state) {
        return switch (state) {
          TaskDetailInitial() || TaskDetailLoading() => Scaffold(
            appBar: AppBar(title: const Text('Задача')),
            body: const Center(child: CircularProgressIndicator()),
          ),
          TaskDetailFailure(:final message) => Scaffold(
              appBar: AppBar(title: const Text('Задача')),
              body: ErrorView(
                message: message,
                onRetry: () => context.read<TaskDetailCubit>().load(),
              ),
            ),
          TaskDetailLoaded(
            :final task,
            :final comments,
            :final files,
            :final submittingComment,
            :final uploadingFile,
          ) => Scaffold(
              appBar: AppBar(
                title: Text(task.title.isEmpty ? 'Задача' : task.title),
                actions: [
                  IconButton(
                    tooltip: 'Обновить',
                    onPressed: () => context.read<TaskDetailCubit>().load(),
                    icon: const Icon(Icons.refresh),
                  ),
                ],
              ),
              body: Column(
                children: [
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () => context.read<TaskDetailCubit>().load(),
                      child: ListView(
                        padding: const EdgeInsets.all(16),
                        children: [
                          _TaskMetaSection(task: task),
                          const SizedBox(height: 24),
                          _FilesSection(
                            files: files,
                            uploading: uploadingFile,
                            onAttach: _pickAndUpload,
                            onOpen: (file) {
                              final cubit = context.read<TaskDetailCubit>();
                              _openUrl(cubit.downloadUrl(file.url));
                            },
                            onDelete: (file) async {
                              final confirmed = await showDialog<bool>(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Удалить файл?'),
                                  content: Text(file.name),
                                  actions: [
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, false),
                                      child: const Text('Отмена'),
                                    ),
                                    FilledButton(
                                      onPressed: () => Navigator.pop(context, true),
                                      child: const Text('Удалить'),
                                    ),
                                  ],
                                ),
                              );
                              if (confirmed == true && context.mounted) {
                                await context.read<TaskDetailCubit>().deleteFile(file.id);
                              }
                            },
                          ),
                          const SizedBox(height: 24),
                          _CommentsSection(comments: comments),
                        ],
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _commentController,
                              minLines: 1,
                              maxLines: 4,
                              enabled: !submittingComment,
                              decoration: const InputDecoration(
                                hintText: 'Комментарий...',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          IconButton.filled(
                            onPressed: submittingComment
                              ? null
                              : () async {
                                final ok = await context.read<TaskDetailCubit>().addComment(_commentController.text);
                                if (ok && mounted) {
                                  _commentController.clear();
                                }
                              },
                            icon: submittingComment
                              ? const SizedBox(
                                width: 18,
                                height: 18,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                              : const Icon(Icons.send),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        };
      },
    );
  }
}

class _TaskMetaSection extends StatelessWidget {
  const _TaskMetaSection({required this.task});

  final TaskDetail task;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            Chip(label: Text(statusLabel(task.status))),
            if (task.columnTitle.isNotEmpty)
              Chip(label: Text(task.columnTitle)),
            if (task.isOverdue)
              Chip(
                label: const Text('Просрочена'),
                backgroundColor: theme.colorScheme.errorContainer,
              ),
          ],
        ),
        const SizedBox(height: 12),
        if (task.description.isNotEmpty)
          Text(task.description, style: theme.textTheme.bodyLarge)
        else
          Text(
            'Без описания',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.outline,
            ),
          ),
        const SizedBox(height: 16),
        _MetaRow(label: 'Проект', value: task.projectTitle.isEmpty ? '' : task.projectTitle),
        _MetaRow(
          label: 'Исполнитель',
          value: task.assignee?.displayName ?? '',
        ),
        _MetaRow(
          label: 'Автор',
          value: task.creator?.displayName ?? '',
        ),
        _MetaRow(label: 'Срок', value: formatDateTime(task.dueAt)),
        _MetaRow(label: 'Создана', value: formatDateTime(task.createdAt)),
      ],
    );
  }
}

class _MetaRow extends StatelessWidget {
  const _MetaRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}

class _FilesSection extends StatelessWidget {
  const _FilesSection({
    required this.files,
    required this.uploading,
    required this.onAttach,
    required this.onOpen,
    required this.onDelete,
  });

  final List<FileAttachment> files;
  final bool uploading;
  final VoidCallback onAttach;
  final ValueChanged<FileAttachment> onOpen;
  final ValueChanged<FileAttachment> onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Вложения', style: theme.textTheme.titleMedium),
            const Spacer(),
            if (uploading)
              const SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            else
              TextButton.icon(
                onPressed: onAttach,
                icon: const Icon(Icons.attach_file),
                label: const Text('Прикрепить'),
              ),
          ],
        ),
        const SizedBox(height: 8),
        if (files.isEmpty)
          Text(
            'Файлов нет',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.outline,
            ),
          )
        else
          ...files.map(
            (file) => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.insert_drive_file_outlined),
              title: Text(file.name),
              subtitle: Text(
                [
                  if (file.user != null) file.user!.displayName,
                  formatDateTime(file.createdAt),
                ].join(' · '),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    tooltip: 'Открыть',
                    onPressed: () => onOpen(file),
                    icon: const Icon(Icons.download_outlined),
                  ),
                  IconButton(
                    tooltip: 'Удалить',
                    onPressed: () => onDelete(file),
                    icon: const Icon(Icons.delete_outline),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class _CommentsSection extends StatelessWidget {
  const _CommentsSection({required this.comments});

  final List<TaskComment> comments;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Комментарии', style: theme.textTheme.titleMedium),
        const SizedBox(height: 8),
        if (comments.isEmpty)
          Text(
            'Комментариев пока нет',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.outline,
            ),
          )
        else
          ...comments.map(
            (comment) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    [
                      comment.author?.displayName ?? 'Пользователь',
                      formatDateTime(comment.createdAt),
                    ].join(' · '),
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: theme.colorScheme.outline,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(comment.content),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
