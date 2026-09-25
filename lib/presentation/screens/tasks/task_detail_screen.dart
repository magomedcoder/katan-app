import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/utils/formatters.dart';
import 'package:katan/core/utils/task_object_types.dart';
import 'package:katan/core/utils/task_status.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/entities/file_attachment.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart';
import 'package:katan/domain/entities/task_history_entry.dart';
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/domain/repositories/account_repository.dart';
import 'package:katan/domain/repositories/file_repository.dart';
import 'package:katan/domain/usecases/add_task_comment_usecase.dart';
import 'package:katan/domain/usecases/create_direct_chat_usecase.dart';
import 'package:katan/domain/usecases/create_task_label_usecase.dart';
import 'package:katan/domain/usecases/delete_task_comment_usecase.dart';
import 'package:katan/domain/usecases/delete_task_file_usecase.dart';
import 'package:katan/domain/usecases/delete_task_label_usecase.dart';
import 'package:katan/domain/usecases/delete_task_usecase.dart';
import 'package:katan/domain/usecases/get_ai_chat_status_usecase.dart';
import 'package:katan/domain/usecases/get_task_comments_usecase.dart';
import 'package:katan/domain/usecases/get_task_files_usecase.dart';
import 'package:katan/domain/usecases/get_task_history_usecase.dart';
import 'package:katan/domain/usecases/get_task_labels_usecase.dart';
import 'package:katan/domain/usecases/get_task_usecase.dart';
import 'package:katan/domain/usecases/run_task_workflow_action_usecase.dart';
import 'package:katan/domain/usecases/set_task_assignee_usecase.dart';
import 'package:katan/domain/usecases/set_task_observers_usecase.dart';
import 'package:katan/domain/usecases/set_task_tags_usecase.dart';
import 'package:katan/domain/usecases/update_task_usecase.dart';
import 'package:katan/domain/usecases/upload_task_file_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/cubit/task_detail_cubit.dart';
import 'package:katan/presentation/screens/ai_chat/ai_chat_screen.dart';
import 'package:katan/presentation/screens/chat/chat_room_screen.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_avatar.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_user_picker_sheet.dart';
import 'package:katan/presentation/screens/tasks/create_task_sheet.dart';
import 'package:katan/presentation/screens/tasks/edit_task_sheet.dart';
import 'package:katan/presentation/screens/tasks/task_observers_sheet.dart';
import 'package:katan/presentation/screens/tasks/task_tags_sheet.dart';
import 'package:katan/presentation/widgets/error_view.dart';
import 'package:katan/presentation/widgets/object_qr_dialog.dart';
import 'package:katan/presentation/widgets/task_actions.dart';
import 'package:katan/presentation/widgets/task_user_search.dart';
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
        deleteTaskCommentUseCase: getIt<DeleteTaskCommentUseCase>(),
        getTaskHistoryUseCase: getIt<GetTaskHistoryUseCase>(),
        getTaskFilesUseCase: getIt<GetTaskFilesUseCase>(),
        uploadTaskFileUseCase: getIt<UploadTaskFileUseCase>(),
        deleteTaskFileUseCase: getIt<DeleteTaskFileUseCase>(),
        updateTaskUseCase: getIt<UpdateTaskUseCase>(),
        deleteTaskUseCase: getIt<DeleteTaskUseCase>(),
        runTaskWorkflowActionUseCase: getIt<RunTaskWorkflowActionUseCase>(),
        setTaskAssigneeUseCase: getIt<SetTaskAssigneeUseCase>(),
        setTaskObserversUseCase: getIt<SetTaskObserversUseCase>(),
        setTaskTagsUseCase: getIt<SetTaskTagsUseCase>(),
        getTaskLabelsUseCase: getIt<GetTaskLabelsUseCase>(),
        createTaskLabelUseCase: getIt<CreateTaskLabelUseCase>(),
        deleteTaskLabelUseCase: getIt<DeleteTaskLabelUseCase>(),
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

class _TaskDetailViewState extends State<_TaskDetailView>
    with SingleTickerProviderStateMixin {
  final _commentController = TextEditingController();
  final _pendingAttachments = <({String fileName, Uint8List bytes})>[];

  late final TabController _tabController = TabController(length: 5, vsync: this);

  Account? get _account => getIt<AccountRepository>().cachedAccount;

  @override
  void dispose() {
    _commentController.dispose();
    _tabController.dispose();
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

  Future<void> _pickCommentAttachment() async {
    final result = await FilePicker.platform.pickFiles(withData: true);
    if (!mounted || result == null || result.files.isEmpty) {
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

    setState(() => _pendingAttachments.add((fileName: file.name, bytes: bytes)));
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

  Future<void> _askAi(TaskDetail task) async {
    try {
      final status = await getIt<GetAiChatStatusUseCase>()();
      if (!status.canUse || status.hideAskAiButton) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('AI-чат сейчас недоступен')));
        }
        return;
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
      }
      return;
    }

    if (!mounted) {
      return;
    }

    final desc = task.description.trim();
    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => AiChatScreen(
          showCloseButton: true,
          initialMapContext: AiChatMapContext(
            kind: 'task',
            objectId: task.id,
            title: task.title.isEmpty ? 'Задача #${task.id}' : task.title,
            path: '/tasks/${task.id}',
            summary: desc.length > 500 ? '${desc.substring(0, 500)}...' : desc,
          ),
        ),
      ),
    );
  }

  Future<void> _delegate(TaskDetail task) async {
    final cubit = context.read<TaskDetailCubit>();
    final picked = await showChatUserPicker(
      context: context,
      search: buildTaskUserSearch(projectId: task.projectId),
      title: 'Исполнитель',
      multi: false,
    );

    if (picked == null || picked.isEmpty) {
      return;
    }

    await cubit.setAssignee(picked.first.id);
  }

  Future<void> _runAction(TaskAction action, TaskDetail task) async {
    final cubit = context.read<TaskDetailCubit>();

    switch (action) {
      case TaskAction.delegate:
        await _delegate(task);
      case TaskAction.delete:
        final confirmed = await confirmTaskDelete(context, title: task.title);
        if (!confirmed) {
          return;
        }

        final deleted = await cubit.deleteTask();
        if (deleted && mounted) {
          Navigator.of(context).pop(true);
        }
      case TaskAction.start:
      case TaskAction.pause:
      case TaskAction.complete:
      case TaskAction.postpone:
      case TaskAction.reopen:
        await cubit.runWorkflowAction(action.workflowAction!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final account = _account;
    final canWrite = account?.canWriteTask ?? false;

    return BlocConsumer<TaskDetailCubit, TaskDetailState>(
      listenWhen: (prev, next) => next is TaskDetailLoaded && (next.actionError != null || next.actionMessage != null),
      listener: (context, state) {
        if (state is! TaskDetailLoaded) {
          return;
        }

        final message = state.actionError ?? state.actionMessage;
        if (message != null && message.isNotEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );
        }
        context.read<TaskDetailCubit>().consumeMessages();
      },
      builder: (context, state) {
        return switch (state) {
          TaskDetailInitial() || TaskDetailLoading() => Scaffold(
            appBar: AppBar(title: const Text('Задача')),
            body: const Center(child: CircularProgressIndicator()),
          ),
          TaskDetailDeleted() => Scaffold(
            appBar: AppBar(title: const Text('Задача')),
            body: const Center(child: Text('Задача удалена')),
          ),
          TaskDetailFailure(:final message) => Scaffold(
              appBar: AppBar(title: const Text('Задача')),
              body: ErrorView(
                message: message,
                onRetry: () => context.read<TaskDetailCubit>().load(),
              ),
            ),
          TaskDetailLoaded() => _buildLoaded(
            context,
            state,
            canWrite: canWrite,
            account: account,
          ),
        };
      },
    );
  }

  Widget _buildLoaded(
    BuildContext context,
    TaskDetailLoaded state, {
    required bool canWrite,
    required Account? account,
  }) {
    final task = state.task;
    final isComplete = task.isComplete;
    final canEdit = canWrite && !isComplete;
    final canDelete = account?.canDeleteTaskOf(task.creator?.username) ?? false;

    final actions = buildTaskActions(
      status: task.status,
      isRunning: task.isRunning,
      isPaused: task.isPaused,
      canWrite: canWrite,
      canDelete: false,
    );

    return Scaffold(
      backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text(task.title.isEmpty ? 'Задача' : task.title),
          actions: [
            IconButton(
              tooltip: 'Спросить AI',
              onPressed: () => _askAi(task),
              icon: const Icon(Icons.smart_toy_outlined),
            ),
            if (canEdit)
              IconButton(
                tooltip: 'Изменить',
                onPressed: () => showEditTaskSheet(
                  context,
                  task: task,
                  onSubmit: ({
                    required String title,
                    required String description,
                    DateTime? dueAt,
                    int storyPoints = 0,
                  }) => context.read<TaskDetailCubit>().updateTask(
                    title: title,
                    description: description,
                    dueAt: dueAt,
                    storyPoints: storyPoints,
                  ),
                ),
                icon: const Icon(Icons.edit_outlined),
              ),
            PopupMenuButton<String>(
              tooltip: 'Ещё',
              onSelected: (value) async {
                switch (value) {
                  case 'qr':
                    await showObjectQrDialog(
                      context,
                      kind: 'task',
                      id: task.id,
                      kindLabel: 'Задача',
                      title: task.title,
                    );
                  case 'refresh':
                    await context.read<TaskDetailCubit>().load();
                  case 'delete':
                    await _runAction(TaskAction.delete, task);
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(value: 'qr', child: Text('QR-код')),
                const PopupMenuItem(value: 'refresh', child: Text('Обновить')),
                if (canDelete)
                  const PopupMenuItem(
                    value: 'delete',
                    child: Text('Удалить', style: TextStyle(color: AppColors.danger)),
                  ),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
          _TaskHeader(
            task: task,
            tick: state.tick,
            actions: actions,
            busy: state.busy,
            runningAction: state.runningAction,
            onAction: (action) => _runAction(action, task),
          ),
          TabBar(
            controller: _tabController,
            isScrollable: true,
            tabAlignment: TabAlignment.start,
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.textSecondary,
            indicatorColor: AppColors.primary,
            tabs: const [
              Tab(text: 'Описание'),
              Tab(text: 'Комменты'),
              Tab(text: 'Файлы'),
              Tab(text: 'История'),
              Tab(text: 'Документация'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _OverviewTab(
                  state: state,
                  canEdit: canEdit,
                  onDelegate: () => _delegate(task),
                  onEditObservers: () => showTaskObserversSheet(
                    context,
                    cubit: context.read<TaskDetailCubit>(),
                    observers: task.observers,
                    projectId: task.projectId,
                  ),
                  onEditTags: () => showTaskTagsSheet(
                    context,
                    cubit: context.read<TaskDetailCubit>(),
                    projectId: task.projectId,
                    tags: task.tags,
                    canManage: canEdit,
                  ),
                  onCreateSubtask: () async {
                    final created = await showCreateTaskSheet(
                      context,
                      projectId: task.projectId > 0 ? task.projectId : null,
                      projectTitle: task.projectTitle,
                      columnId: task.columnId > 0 ? task.columnId : null,
                      parentId: task.id,
                      parentTitle: task.title,
                      openDetailAfterCreate: false,
                    );
                    if (created != null && context.mounted) {
                      await context.read<TaskDetailCubit>().refreshTask();
                    }
                  },
                  onOpenTask: (taskId) => Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => TaskDetailScreen(taskId: taskId),
                    ),
                  ),
                ),
                _CommentsTab(
                  state: state,
                  canEdit: canEdit,
                  controller: _commentController,
                  pendingAttachments: _pendingAttachments,
                  onAttach: _pickCommentAttachment,
                  onRemoveAttachment: (index) => setState(() => _pendingAttachments.removeAt(index)),
                  onSend: () async {
                    final cubit = context.read<TaskDetailCubit>();
                    final ok = await cubit.addComment(
                      _commentController.text,
                      attachments: List.of(_pendingAttachments),
                    );
                    if (ok && mounted) {
                      _commentController.clear();
                      setState(_pendingAttachments.clear);
                    }
                  },
                  onDeleteComment: (comment) async {
                    final confirmed = await showDialog<bool>(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Удалить комментарий?'),
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
                      await context.read<TaskDetailCubit>().deleteComment(comment.id);
                    }
                  },
                  onOpenFile: (file) {
                    final cubit = context.read<TaskDetailCubit>();
                    _openUrl(cubit.downloadUrl(file.url));
                  },
                ),
                _FilesTab(
                  state: state,
                  canEdit: canEdit,
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
                _HistoryTab(state: state),
                const _DocsTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TaskHeader extends StatelessWidget {
  const _TaskHeader({
    required this.task,
    required this.tick,
    required this.actions,
    required this.busy,
    required this.runningAction,
    required this.onAction,
  });

  final TaskDetail task;
  final int tick;
  final List<TaskActionSpec> actions;
  final bool busy;
  final String? runningAction;
  final ValueChanged<TaskAction> onAction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final seconds = taskWorkSeconds(
      timeSpentSeconds: task.timeSpentSeconds,
      workStartedAt: task.workStartedAt,
    );

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      color: AppColors.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 8,
            runSpacing: 8,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: taskStatusBackground(task.status),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  taskStatusLabel(task.status, columnTitle: task.columnTitle),
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: taskStatusForeground(task.status),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              if (task.isOverdue)
                Chip(
                  label: const Text('Просрочена'),
                  backgroundColor: theme.colorScheme.errorContainer,
                  visualDensity: VisualDensity.compact,
                ),
              Text(
                formatWorkDuration(seconds),
                style: theme.textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: task.isRunning ? AppColors.warning : AppColors.textRegular,
                ),
              ),
              if (task.isRunning)
                Text(
                  'идёт учёт',
                  style: theme.textTheme.bodySmall?.copyWith(color: AppColors.warning),
                )
              else if (task.isPaused)
                Text(
                  'на паузе',
                  style: theme.textTheme.bodySmall?.copyWith(color: AppColors.textSecondary),
                  ),
                ],
              ),
          if (actions.isNotEmpty) ...[
            const SizedBox(height: 12),
            TaskActionsBar(
              actions: actions,
              onAction: onAction,
              busy: busy,
              runningAction: runningAction,
            ),
          ],
        ],
      ),
    );
  }
}

class _OverviewTab extends StatelessWidget {
  const _OverviewTab({
    required this.state,
    required this.canEdit,
    required this.onDelegate,
    required this.onEditObservers,
    required this.onEditTags,
    required this.onCreateSubtask,
    required this.onOpenTask,
  });

  final TaskDetailLoaded state;
  final bool canEdit;
  final VoidCallback onDelegate;
  final VoidCallback onEditObservers;
  final VoidCallback onEditTags;
  final VoidCallback onCreateSubtask;
  final ValueChanged<int> onOpenTask;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final task = state.task;
    final objectLabel = taskObjectLinkLabel(
      objectType: task.objectType,
      objectId: task.objectId,
      objectName: task.objectName,
    );

    return RefreshIndicator(
      onRefresh: () => context.read<TaskDetailCubit>().load(),
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
        if (task.parentId > 0 || task.projectId > 0 || objectLabel.isNotEmpty)
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              if (task.parentId > 0)
                ActionChip(
                  avatar: const Icon(Icons.subdirectory_arrow_right, size: 16),
                  label: Text(
                    task.parentTitle.trim().isEmpty
                      ? 'Подзадача #${task.parentId}'
                      : 'Подзадача ${task.parentTitle.trim()}',
                  ),
                  onPressed: () => onOpenTask(task.parentId),
                ),
              if (task.projectId > 0)
                Chip(
                  avatar: const Icon(Icons.folder_open, size: 16),
                  label: Text(
                    task.projectTitle.isEmpty
                      ? 'Проект #${task.projectId}'
                      : task.projectTitle,
                  ),
                  visualDensity: VisualDensity.compact,
                ),
              if (objectLabel.isNotEmpty)
                Chip(
                  avatar: const Icon(Icons.link, size: 16),
                  label: Text(objectLabel),
                  visualDensity: VisualDensity.compact,
                ),
            ],
          ),
          const SizedBox(height: 12),
          Text('Описание', style: theme.textTheme.labelMedium?.copyWith(
            color: AppColors.textSecondary,
          )),
          const SizedBox(height: 6),
          Text(
            task.description.trim().isEmpty ? 'Описание не указано' : task.description,
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(height: 20),
          _SubtasksSection(
            task: task,
            canEdit: canEdit,
            onCreate: onCreateSubtask,
            onOpen: onOpenTask,
          ),
          const SizedBox(height: 20),
          _SectionHeader(
            title: 'Исполнитель',
            actionLabel: canEdit ? (task.assignee == null ? 'Назначить' : 'Изменить') : null,
            onAction: onDelegate,
          ),
          if (task.assignee == null)
            Text(
              'Не назначен',
              style: theme.textTheme.bodyMedium?.copyWith(color: AppColors.textSecondary),
            )
          else
            _UserTile(user: task.assignee!),
          const SizedBox(height: 12),
          _SectionHeader(title: 'Постановщик'),
          if (task.creator == null)
            Text(
              'Неизвестен',
              style: theme.textTheme.bodyMedium?.copyWith(color: AppColors.textSecondary),
            )
          else
            _UserTile(user: task.creator!),
          const SizedBox(height: 12),
          _SectionHeader(
            title: 'Наблюдатели',
            actionLabel: canEdit ? (task.observers.isEmpty ? 'Добавить' : 'Изменить') : null,
            onAction: onEditObservers,
          ),
          if (task.observers.isEmpty)
            Text(
              'Наблюдатели не назначены',
              style: theme.textTheme.bodyMedium?.copyWith(color: AppColors.textSecondary),
            )
          else
            ...task.observers.map((user) => _UserTile(user: user, chat: false)),
          const SizedBox(height: 12),
          _SectionHeader(
            title: 'Теги',
            actionLabel: canEdit ? (task.tags.isEmpty ? 'Добавить' : 'Изменить') : null,
            onAction: onEditTags,
          ),
          if (task.tags.isEmpty)
            Text(
              'Не назначены',
              style: theme.textTheme.bodyMedium?.copyWith(color: AppColors.textSecondary),
            )
          else
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                for (final tag in task.tags)
                  Chip(
                    label: Text(tag.name),
                    visualDensity: VisualDensity.compact,
                  ),
              ],
            ),
          const SizedBox(height: 20),
        _MetaRow(label: 'Срок', value: formatDateTime(task.dueAt)),
        _MetaRow(label: 'Стори Поинты', value: task.storyPoints.toString()),
        _MetaRow(label: 'Создана', value: formatDateTime(task.createdAt)),
        _MetaRow(label: 'Обновлена', value: formatDateTime(task.updatedAt)),
          if (task.workPauses.isNotEmpty) ...[
            const SizedBox(height: 16),
            _SectionHeader(title: 'История пауз (${task.workPauses.length})'),
            ...task.workPauses.map(
              (pause) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.fill,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              formatDateTime(pause.pausedAt),
                              style: theme.textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          if (pause.isOpen)
                            Text(
                              'сейчас',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: AppColors.warning,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Сегмент до паузы: ${formatWorkDuration(pause.workSecondsBefore)}',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: AppColors.textSecondary,
                        ),
                      ),
                      if (pause.resumedAt != null)
                        Text(
                          'Пауза: ${formatWorkDuration(pause.resumedAt!.difference(pause.pausedAt ?? pause.resumedAt!).inSeconds)} до ${formatDateTime(pause.resumedAt)}',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _SubtasksSection extends StatelessWidget {
  const _SubtasksSection({
    required this.task,
    required this.canEdit,
    required this.onCreate,
    required this.onOpen,
  });

  final TaskDetail task;
  final bool canEdit;
  final VoidCallback onCreate;
  final ValueChanged<int> onOpen;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final total = task.subtaskCount > 0 ? task.subtaskCount : task.subtasks.length;
    final completed = task.subtaskCompletedCount;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: theme.colorScheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                    total > 0 ? 'Подзадачи $completed / $total' : 'Подзадачи',
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
                if (canEdit)
                  TextButton.icon(
                    onPressed: onCreate,
                    icon: const Icon(Icons.add, size: 18),
                    label: const Text('Добавить'),
                  ),
            ],
          ),
          if (total > 0) ...[
            const SizedBox(height: 4),
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: LinearProgressIndicator(
                value: total == 0 ? 0 : completed / total,
                minHeight: 6,
                backgroundColor: AppColors.fill,
              ),
            ),
          ],
          const SizedBox(height: 8),
          if (task.subtasks.isEmpty)
            Text(
              'Подзадач пока нет',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.textSecondary,
              ),
            )
          else
            ...task.subtasks.map(
              (sub) => ListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(sub.title.isEmpty ? 'Без названия' : sub.title),
                subtitle: Text(
                  [
                    sub.assignee?.displayName ?? 'Без исполнителя',
                    if (sub.dueAt != null) 'до ${formatDateTime(sub.dueAt)}',
                  ].toString(),
                  style: theme.textTheme.bodySmall,
                ),
                trailing: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: taskStatusBackground(sub.status),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    taskStatusLabel(sub.status, columnTitle: sub.columnTitle),
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: taskStatusForeground(sub.status),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                onTap: () => onOpen(sub.id),
              ),
            ),
        ],
      ),
    );
  }
}

class _CommentsTab extends StatelessWidget {
  const _CommentsTab({
    required this.state,
    required this.canEdit,
    required this.controller,
    required this.pendingAttachments,
    required this.onAttach,
    required this.onRemoveAttachment,
    required this.onSend,
    required this.onDeleteComment,
    required this.onOpenFile,
  });

  final TaskDetailLoaded state;
  final bool canEdit;
  final TextEditingController controller;
  final List<({String fileName, Uint8List bytes})> pendingAttachments;
  final VoidCallback onAttach;
  final ValueChanged<int> onRemoveAttachment;
  final VoidCallback onSend;
  final ValueChanged<TaskComment> onDeleteComment;
  final ValueChanged<FileAttachment> onOpenFile;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final comments = state.comments;

    return Column(
      children: [
        Expanded(
          child: comments.isEmpty
            ? Center(
              child: Text(
                'Комментариев пока нет',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                ),
              ),
            )
            : ListView.builder(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              itemCount: comments.length,
              itemBuilder: (context, index) {
                final comment = comments[index];
                final files = state.commentFiles[comment.id] ?? const [];
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: AppColors.fill,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ChatAvatar(
                            label: comment.author?.displayName ?? 'Пользователь',
                            size: 32,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  comment.author?.displayName ?? 'Пользователь',
                                  style: theme.textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  formatDateTime(comment.createdAt),
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (canEdit)
                            IconButton(
                              tooltip: 'Удалить',
                              onPressed: () => onDeleteComment(comment),
                              icon: const Icon(Icons.delete_outline, size: 18),
                            ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(comment.content),
                      if (files.isNotEmpty) ...[
                        const SizedBox(height: 8),
                        ...files.map(
                          (file) => InkWell(
                            onTap: () => onOpenFile(file),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 4),
                              child: Row(
                                children: [
                                  const Icon(Icons.attach_file, size: 16),
                                  const SizedBox(width: 6),
                                  Expanded(
                                    child: Text(
                                      file.name,
                                      style: theme.textTheme.bodySmall?.copyWith(
                                        color: AppColors.primary,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                );
              },
            ),
        ),
        if (!canEdit)
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              state.task.isComplete
                ? 'Задача завершена - комментарии недоступны'
                : 'Нет права комментировать',
              style: theme.textTheme.bodySmall?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          )
        else
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Column(
                children: [
                  if (pendingAttachments.isNotEmpty)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: [
                          for (var i = 0; i < pendingAttachments.length; i++)
                            InputChip(
                              label: Text(pendingAttachments[i].fileName),
                              avatar: const Icon(Icons.attach_file, size: 16),
                              onDeleted: () => onRemoveAttachment(i),
                            ),
                        ],
                      ),
                    ),
                  Row(
                    children: [
                      IconButton(
                        tooltip: 'Прикрепить файл',
                        onPressed: state.submittingComment ? null : onAttach,
                        icon: const Icon(Icons.attach_file),
                      ),
                      Expanded(
                        child: TextField(
                          controller: controller,
                          minLines: 1,
                          maxLines: 4,
                          enabled: !state.submittingComment,
                          decoration: const InputDecoration(
                            hintText: 'Комментарий...',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton.filled(
                        onPressed: state.submittingComment ? null : onSend,
                        icon: state.submittingComment
                          ? const SizedBox(
                            width: 18,
                            height: 18,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                          : const Icon(Icons.send),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class _FilesTab extends StatelessWidget {
  const _FilesTab({
    required this.state,
    required this.canEdit,
    required this.onAttach,
    required this.onOpen,
    required this.onDelete,
  });

  final TaskDetailLoaded state;
  final bool canEdit;
  final VoidCallback onAttach;
  final ValueChanged<FileAttachment> onOpen;
  final ValueChanged<FileAttachment> onDelete;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final commentFiles = state.commentFiles.entries
      .expand((entry) => entry.value)
      .toList();

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Row(
          children: [
            Expanded(
              child: Text('Вложения задачи', style: theme.textTheme.titleMedium),
            ),
            if (state.uploadingFile)
              const SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(strokeWidth: 2),
              )
            else if (canEdit)
              TextButton.icon(
                onPressed: onAttach,
                icon: const Icon(Icons.attach_file),
                label: const Text('Прикрепить'),
              ),
          ],
        ),
        const SizedBox(height: 8),
        if (state.files.isEmpty)
          Text(
            'Файлов нет',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: AppColors.textSecondary,
            ),
          )
        else
          ...state.files.map(
            (file) => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.insert_drive_file_outlined),
              title: Text(file.name),
              subtitle: Text(
                [
                  if (file.user != null) file.user!.displayName,
                  if (file.createdAt != null) formatDateTime(file.createdAt),
                ].where((value) => value.isNotEmpty).toString(),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    tooltip: 'Открыть',
                    onPressed: () => onOpen(file),
                    icon: const Icon(Icons.download_outlined),
                  ),
                  if (canEdit)
                  IconButton(
                    tooltip: 'Удалить',
                    onPressed: () => onDelete(file),
                    icon: const Icon(Icons.delete_outline),
                  ),
                ],
              ),
            ),
          ),
        if (commentFiles.isNotEmpty) ...[
          const SizedBox(height: 20),
          Text('Вложения комментариев', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          ...commentFiles.map(
            (file) => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const Icon(Icons.attach_file),
              title: Text(file.name),
              subtitle: Text(
                [
                  if (file.user != null) file.user!.displayName,
                  if (file.createdAt != null) formatDateTime(file.createdAt),
                ].where((value) => value.isNotEmpty).toString(),
              ),
              trailing: IconButton(
                tooltip: 'Открыть',
                onPressed: () => onOpen(file),
                icon: const Icon(Icons.download_outlined),
              ),
            ),
          ),
        ],
      ],
    );
  }
}

class _HistoryTab extends StatelessWidget {
  const _HistoryTab({required this.state});

  final TaskDetailLoaded state;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (state.history.isEmpty) {
      return Center(
        child: Text(
          'История изменений пуста',
          style: theme.textTheme.bodyMedium?.copyWith(
            color: AppColors.textSecondary,
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: state.history.length,
      itemBuilder: (context, index) {
        final entry = state.history[index];
        return _HistoryTile(entry: entry);
      },
    );
  }
}

class _HistoryTile extends StatelessWidget {
  const _HistoryTile({required this.entry});

  final TaskHistoryEntry entry;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.only(left: 12),
      decoration: const BoxDecoration(
        border: Border(
          left: BorderSide(color: AppColors.primaryLighter, width: 2),
        ),
      ),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              taskHistoryActionLabel(entry.action),
              style: theme.textTheme.labelSmall?.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              formatDateTime(entry.createdAt),
              style: theme.textTheme.labelSmall?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
        if (entry.message.isNotEmpty) ...[
          const SizedBox(height: 4),
          Text(
            entry.message,
          style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
        if (entry.user != null)
          Text(
            entry.user!.displayName,
            style: theme.textTheme.bodySmall?.copyWith(
              color: AppColors.textSecondary,
            ),
          ),
        if (entry.oldValue.isNotEmpty || entry.newValue.isNotEmpty) ...[
          const SizedBox(height: 4),
          Row(
            children: [
              if (entry.oldValue.isNotEmpty)
                Flexible(
                  child: Text(
                    entry.oldValue,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                ),
              if (entry.oldValue.isNotEmpty && entry.newValue.isNotEmpty)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Icon(Icons.arrow_forward, size: 12, color: AppColors.textSecondary),
                ),
              if (entry.newValue.isNotEmpty)
                Flexible(
                  child: Text(
                    entry.newValue,
                    style: theme.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
            ],
          ),
        ],
        ],
      ),
    );
  }
}

class _DocsTab extends StatelessWidget {
  const _DocsTab();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.menu_book_outlined, size: 40, color: theme.colorScheme.outline),
            const SizedBox(height: 12),
            Text(
              'Документация задачи скоро появится',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({
    required this.title,
    this.actionLabel,
    this.onAction,
  });

  final String title;
  final String? actionLabel;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: theme.textTheme.labelMedium?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          if (actionLabel != null && onAction != null)
            TextButton(
              onPressed: onAction,
              child: Text(actionLabel!),
            ),
        ],
      ),
    );
  }
}

class _UserTile extends StatelessWidget {
  const _UserTile({required this.user, this.chat = true});

  final UserRef user;
  final bool chat;

  @override
  Widget build(BuildContext context) {
    final displayName = user.displayName;
    final userId = user.id;
    return ListTile(
      contentPadding: EdgeInsets.zero,
      dense: true,
      leading: ChatAvatar(label: displayName, size: 34),
      title: Text(displayName),
      trailing: chat && userId > 0
        ? IconButton(
          tooltip: 'Написать',
          onPressed: () => _openDirectChat(context, userId),
          icon: const Icon(Icons.chat_bubble_outline, size: 20),
        )
        : null,
    );
  }
}

Future<void> _openDirectChat(BuildContext context, int userId) async {
  final account = getIt<AccountRepository>().cachedAccount;
  if (account == null || !account.canWriteChat) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Нет права писать в чат')),
    );
    return;
  }

  try {
    final room = await getIt<CreateDirectChatUseCase>()(userId);
    if (!context.mounted) {
      return;
    }

    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => ChatRoomScreen(
          roomId: room.id,
          currentUsername: account.username,
          canWrite: account.canWriteChat,
          canManage: account.canManageChat,
        ),
      ),
    );
  } catch (e) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }
}

class _MetaRow extends StatelessWidget {
  const _MetaRow({
    required this.label,
    required this.value,
  });

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
            width: 130,
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ),
          Expanded(child: Text(value.isEmpty ? '-' : value)),
        ],
      ),
    );
  }
}
