import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/utils/task_status.dart';
import 'package:katan/domain/usecases/get_tasks_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/cubit/tasks_cubit.dart';
import 'package:katan/presentation/screens/tasks/create_task_sheet.dart';
import 'package:katan/presentation/screens/tasks/task_detail_screen.dart';
import 'package:katan/presentation/widgets/empty_state.dart';
import 'package:katan/presentation/widgets/error_view.dart';
import 'package:katan/presentation/widgets/search_app_bar.dart';
import 'package:katan/presentation/widgets/task_list_card.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({
    super.key,
    this.projectId,
    this.projectTitle,
    this.embedded = false,
    this.canWriteTask = true,
  });

  final int? projectId;
  final String? projectTitle;
  final bool embedded;
  final bool canWriteTask;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksCubit(
        getTasksUseCase: getIt<GetTasksUseCase>(),
        authCubit: context.read<AuthCubit>(),
        projectId: projectId,
      )..load(),
      child: _TasksView(
        projectId: projectId,
        projectTitle: projectTitle,
        embedded: embedded,
        canWriteTask: canWriteTask,
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
  });

  final int? projectId;
  final String? projectTitle;
  final bool embedded;
  final bool canWriteTask;

  @override
  State<_TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<_TasksView> {
  final _scrollController = ScrollController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _scrollController.dispose();
    super.dispose();
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
      onCreated: () => context.read<TasksCubit>().load(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final title = widget.projectTitle ?? 'Задачи';
    final body = Column(
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
        _StatusFilterBar(
          showProjectLess: widget.projectId == null,
        ),
        Expanded(child: _buildList()),
      ],
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
    return BlocBuilder<TasksCubit, TasksState>(
      builder: (context, state) {
        return switch (state) {
          TasksInitial() || TasksLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
          TasksFailure(:final message) => ErrorView(
            message: message,
            onRetry: () => context.read<TasksCubit>().load(),
          ),
          TasksLoaded(:final items, :final loadingMore, :final total) => items.isEmpty
            ? const EmptyState(
              icon: Icons.task_alt,
              message: 'Задач пока нет',
            )
            : RefreshIndicator(
              onRefresh: () => context.read<TasksCubit>().load(),
              child: ListView.builder(
                controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 88),
                itemCount: items.length + (loadingMore ? 2 : 1),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                      child: Text(
                        'Найдено: $total',
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
                  return TaskListCard(
                    task: task,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute<void>(
                          builder: (_) => TaskDetailScreen(taskId: task.id),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
        };
      },
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
        final selected = state is TasksLoaded ? state.status : '';
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
