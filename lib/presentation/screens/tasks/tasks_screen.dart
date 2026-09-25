import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/core/utils/task_status.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/repositories/account_repository.dart';
import 'package:katan/domain/usecases/delete_task_usecase.dart';
import 'package:katan/domain/usecases/get_projects_usecase.dart';
import 'package:katan/domain/usecases/get_tasks_usecase.dart';
import 'package:katan/domain/usecases/run_task_workflow_action_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/cubit/tasks_cubit.dart';
import 'package:katan/presentation/screens/tasks/create_task_sheet.dart';
import 'package:katan/presentation/screens/tasks/task_detail_screen.dart';
import 'package:katan/presentation/widgets/empty_state.dart';
import 'package:katan/presentation/widgets/error_view.dart';
import 'package:katan/presentation/widgets/list_skeleton.dart';
import 'package:katan/presentation/widgets/search_app_bar.dart';
import 'package:katan/presentation/widgets/task_actions.dart';
import 'package:katan/presentation/widgets/task_list_card.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({
    super.key,
    this.projectId,
    this.projectTitle,
    this.embedded = false,
    this.canWriteTask = true,
    this.showProjectFilter = false,
  });

  final int? projectId;
  final String? projectTitle;
  final bool embedded;
  final bool canWriteTask;
  final bool showProjectFilter;

  @override
  Widget build(BuildContext context) {
    final account = getIt<AccountRepository>().cachedAccount;

    return BlocProvider(
      create: (context) => TasksCubit(
        getTasksUseCase: getIt<GetTasksUseCase>(),
        runTaskWorkflowActionUseCase: getIt<RunTaskWorkflowActionUseCase>(),
        deleteTaskUseCase: getIt<DeleteTaskUseCase>(),
        authCubit: context.read<AuthCubit>(),
        storage: getIt<SessionStorage>(),
        projectId: projectId,
        currentUsername: account?.username ?? '',
        persistStatusFilter: projectId == null,
      )..load(),
      child: _TasksView(
        projectId: projectId,
        projectTitle: projectTitle,
        embedded: embedded,
        canWriteTask: canWriteTask,
        showProjectFilter: showProjectFilter && projectId == null,
      ),
    );
  }
}

class _TasksView extends StatefulWidget {
  const _TasksView({
    this.projectId,
    this.projectTitle,
    this.embedded = false,
    this.canWriteTask = true,
    this.showProjectFilter = false,
  });

  final int? projectId;
  final String? projectTitle;
  final bool embedded;
  final bool canWriteTask;
  final bool showProjectFilter;

  @override
  State<_TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<_TasksView> {
  final _scrollController = ScrollController();
  Timer? _debounce;
  List<ProjectSummary> _projects = const [];

  Account? get _account => getIt<AccountRepository>().cachedAccount;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    if (widget.showProjectFilter) {
      _loadProjects();
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _loadProjects() async {
    try {
      final result = await getIt<GetProjectsUseCase>()(page: 1, limit: 100);
      if (mounted) {
        setState(() => _projects = result.items);
      }
    } catch (_) {}
  }

  void _onScroll() {
    if (!_scrollController.hasClients) {
      return;
    }
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 200) {
      context.read<TasksCubit>().loadMore();
    }
  }

  void _onSearchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 400), () {
      if (mounted) {
        context.read<TasksCubit>().search(value);
      }
    });
  }

  Future<void> _createTask() async {
    await showCreateTaskSheet(
      context,
      projectId: widget.projectId,
      projectTitle: widget.projectTitle,
      lockProject: widget.projectId != null,
      onCreated: () => context.read<TasksCubit>().load(),
    );
  }

  Future<void> _handleAction(TaskAction action, TaskSummary task) async {
    final cubit = context.read<TasksCubit>();

    switch (action) {
      case TaskAction.delegate:
        await Navigator.of(context).push(MaterialPageRoute<void>(builder: (_) => TaskDetailScreen(taskId: task.id)));
        if (mounted) {
          await cubit.load();
        }
      case TaskAction.delete:
        final confirmed = await confirmTaskDelete(context, title: task.title);
        if (!confirmed) {
          return;
        }
        await cubit.deleteTask(task.id);
      case TaskAction.start:
      case TaskAction.pause:
      case TaskAction.complete:
      case TaskAction.postpone:
      case TaskAction.reopen:
        await cubit.runAction(taskId: task.id, action: action.workflowAction!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.projectTitle ?? 'Задачи';
    final body = BlocListener<TasksCubit, TasksState>(
      listenWhen: (prev, next) => next is TasksLoaded && next.actionError != null,
      listener: (context, state) {
        if (state is TasksLoaded && state.actionError != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.actionError!)),
          );
        }
      },
      child: Column(
        children: [
          if (widget.embedded)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: TextField(
                onChanged: _onSearchChanged,
                decoration: InputDecoration(
                  hintText: 'Поиск задач',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  suffixIcon: IconButton(
                    tooltip: 'Обновить',
                    onPressed: () => context.read<TasksCubit>().load(),
                    icon: const Icon(Icons.refresh),
                  ),
                ),
              ),
            ),
          _StatusFilterBar(showProjectLess: widget.projectId == null),
          if (widget.showProjectFilter) _ProjectFilterBar(projects: _projects),
          const _ExtraFilterBar(),
          Expanded(child: _buildList()),
        ],
      ),
    );

    if (widget.embedded) {
      return ColoredBox(
        color: AppColors.fill,
        child: Stack(
          children: [
            body,
            if (widget.canWriteTask)
              Positioned(
                right: 16,
                bottom: 16,
                child: FloatingActionButton(
                  heroTag: 'create-task-embedded',
                  onPressed: _createTask,
                  child: const Icon(Icons.add),
                ),
              ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.fill,
      appBar: SearchAppBar(
        title: title,
        hintText: 'Поиск задач',
        onChanged: _onSearchChanged,
        onRefresh: () => context.read<TasksCubit>().load(),
      ),
      floatingActionButton: widget.canWriteTask
        ? FloatingActionButton(
          heroTag: 'create-task',
          onPressed: _createTask,
          child: const Icon(Icons.add),
        )
        : null,
      body: body,
    );
  }

  Widget _buildList() {
    final account = _account;
    final canWrite = account?.canWriteTask ?? widget.canWriteTask;

    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        return switch (state) {
          TasksInitial() || TasksLoading() => const ListSkeleton(),
          TasksFailure(:final message) => ErrorView(
            message: message,
            onRetry: () => context.read<TasksCubit>().load(),
          ),
          TasksLoaded() => _buildLoadedList(
            context,
            state,
            account: account,
            canWrite: canWrite,
          ),
        };
      },
    );
  }

  Widget _buildLoadedList(
    BuildContext context,
    TasksLoaded state, {
    required Account? account,
    required bool canWrite,
  }) {
    if (state.refreshing && state.items.isEmpty) {
      return const ListSkeleton();
    }

    final items = state.visibleItems;
    if (items.isEmpty) {
      return EmptyState(
        icon: Icons.task_alt,
        message: state.query.isNotEmpty || state.status.isNotEmpty || state.hasClientFilters
          ? 'Задач по фильтрам не найдено'
          : 'Задач пока нет',
        actionLabel: canWrite ? 'Создать задачу' : null,
        onAction: canWrite ? _createTask : null,
      );
    }

    final shownTotal = state.hasClientFilters ? items.length : state.total;

    return RefreshIndicator(
      onRefresh: () => context.read<TasksCubit>().load(),
      child: Stack(
        children: [
          ListView.builder(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(0, 4, 0, 88),
            itemCount: items.length + (state.loadingMore ? 2 : 1),
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                  child: Text(
                    'Найдено: $shownTotal',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                );
              }
              final itemIndex = index - 1;
              if (itemIndex >= items.length) {
                return const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              final task = items[itemIndex];
              final actions = buildTaskActions(
                status: task.status,
                isRunning: task.isRunning,
                isPaused: task.isPaused,
                canWrite: canWrite,
                canDelete: account?.canDeleteTaskOf(task.creator?.username) ?? false,
              );

              return TaskListCard(
                task: task,
                menu: actions.isEmpty
                  ? null
                  : TaskActionsMenu(
                    actions: actions,
                    busy: state.actionTaskId == task.id,
                    onAction: (action) => _handleAction(action, task),
                  ),
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => TaskDetailScreen(taskId: task.id),
                    ),
                  );
                  if (context.mounted) {
                    await context.read<TasksCubit>().load();
                  }
                },
              );
            },
          ),
          if (state.refreshing)
            const Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: LinearProgressIndicator(minHeight: 2),
            ),
        ],
      ),
    );
  }
}

class _StatusFilterBar extends StatelessWidget {
  const _StatusFilterBar({required this.showProjectLess});

  final bool showProjectLess;

  @override
  Widget build(BuildContext context) {
    final options = showProjectLess
      ? TaskStatuses.filterOptions
      : TaskStatuses.filterOptions
        .where((o) => o.value != TaskStatuses.noProject)
        .toList();

    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        final selected = state is TasksLoaded
          ? state.status
          : context.read<TasksCubit>().status;
        return SizedBox(
          height: 48,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.fromLTRB(12, 10, 12, 4),
            itemCount: options.length,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final option = options[index];
              final isSelected = selected == option.value;
              return FilterChip(
                selected: isSelected,
                label: Text(option.label),
                showCheckmark: false,
                onSelected: (_) => context.read<TasksCubit>().setStatus(option.value),
                selectedColor: AppColors.primary.withValues(alpha: 0.15),
                labelStyle: TextStyle(
                  color: isSelected ? AppColors.primaryDark : AppColors.textRegular,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
                  fontSize: 13,
                ),
                side: BorderSide(
                  color: isSelected ? AppColors.primary : AppColors.border,
                ),
                backgroundColor: Colors.white,
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              );
            },
          ),
        );
      },
    );
  }
}

class _ProjectFilterBar extends StatelessWidget {
  const _ProjectFilterBar({required this.projects});

  final List<ProjectSummary> projects;

  @override
  Widget build(BuildContext context) {
    if (projects.isEmpty) {
      return const SizedBox.shrink();
    }

    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        final selected = state is TasksLoaded ? state.projectFilterId : null;
        return Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 4),
          child: DropdownButtonFormField<int?>(
            initialValue: projects.any((project) => project.id == selected) ? selected : null,
            isExpanded: true,
            decoration: const InputDecoration(
              isDense: true,
              labelText: 'Проект',
              contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            ),
            items: [
              const DropdownMenuItem<int?>(child: Text('Все проекты')),
              for (final project in projects)
                DropdownMenuItem<int?>(
                  value: project.id,
                  child: Text(
                    project.title.isEmpty ? 'Проект #${project.id}' : project.title,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
            ],
            onChanged: (value) => context.read<TasksCubit>().setProjectFilter(value),
          ),
        );
      },
    );
  }
}

class _ExtraFilterBar extends StatelessWidget {
  const _ExtraFilterBar();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        final mineOnly = state is TasksLoaded && state.mineOnly;
        final overdueOnly = state is TasksLoaded && state.overdueOnly;

        return Padding(
          padding: const EdgeInsets.fromLTRB(12, 0, 12, 4),
          child: Row(
            children: [
              FilterChip(
                selected: mineOnly,
                showCheckmark: false,
                avatar: const Icon(Icons.person_outline, size: 16),
                label: const Text('Мои'),
                onSelected: (value) => context.read<TasksCubit>().setMineOnly(value),
                selectedColor: AppColors.primary.withValues(alpha: 0.15),
                backgroundColor: Colors.white,
                side: BorderSide(color: mineOnly ? AppColors.primary : AppColors.border),
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              const SizedBox(width: 8),
              FilterChip(
                selected: overdueOnly,
                showCheckmark: false,
                avatar: const Icon(Icons.warning_amber_outlined, size: 16),
                label: const Text('Просроченные'),
                onSelected: (value) => context.read<TasksCubit>().setOverdueOnly(value),
                selectedColor: AppColors.danger.withValues(alpha: 0.15),
                backgroundColor: Colors.white,
                side: BorderSide(color: overdueOnly ? AppColors.danger : AppColors.border),
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ],
          ),
        );
      },
    );
  }
}
