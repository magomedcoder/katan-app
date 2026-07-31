import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/usecases/get_tasks_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/cubit/tasks_cubit.dart';
import 'package:katan/presentation/screens/tasks/task_detail_screen.dart';
import 'package:katan/presentation/utils/formatters.dart';
import 'package:katan/presentation/widgets/empty_state.dart';
import 'package:katan/presentation/widgets/error_view.dart';
import 'package:katan/presentation/widgets/search_app_bar.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({
    super.key,
    this.projectId,
    this.projectTitle,
  });

  final int? projectId;
  final String? projectTitle;

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
      ),
    );
  }
}

class _TasksView extends StatefulWidget {
  const _TasksView({
    this.projectId,
    this.projectTitle,
  });

  final int? projectId;
  final String? projectTitle;

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

  @override
  Widget build(BuildContext context) {
    final title = widget.projectTitle ?? 'Задачи';

    return Scaffold(
      appBar: SearchAppBar(
        title: title,
        hintText: 'Поиск задач',
        onChanged: _onSearchChanged,
        onRefresh: () => context.read<TasksCubit>().load(),
      ),
      body: BlocBuilder<TasksCubit, TasksState>(
        builder: (context, state) {
          return switch (state) {
            TasksInitial() || TasksLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            TasksFailure(:final message) => ErrorView(
              message: message,
              onRetry: () => context.read<TasksCubit>().load(),
            ),
            TasksLoaded(:final items, :final loadingMore) => items.isEmpty
              ? const EmptyState(
                icon: Icons.task_alt,
                message: 'Задач пока нет',
              )
              : RefreshIndicator(
                onRefresh: () => context.read<TasksCubit>().load(),
                child: ListView.separated(
                  controller: _scrollController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  itemCount: items.length + (loadingMore ? 1 : 0),
                  separatorBuilder: (_, index) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    if (index >= items.length) {
                      return const Padding(
                        padding: EdgeInsets.all(16),
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    return _TaskTile(task: items[index]);
                  },
                ),
              ),
          };
        },
      ),
    );
  }
}

class _TaskTile extends StatelessWidget {
  const _TaskTile({required this.task});

  final TaskSummary task;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      title: Text(task.title.isEmpty ? 'Без названия' : task.title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 4),
          Wrap(
            spacing: 8,
            runSpacing: 4,
            children: [
              Chip(
                label: Text(statusLabel(task.status)),
                visualDensity: VisualDensity.compact,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              if (task.projectTitle.isNotEmpty)
                Text(
                  task.projectTitle,
                  style: theme.textTheme.bodySmall,
                ),
            ],
          ),
          if (task.assignee != null || task.dueAt != null) ...[
            const SizedBox(height: 4),
            Text(
              [
                if (task.assignee != null) task.assignee!.displayName,
                if (task.dueAt != null) formatDateTime(task.dueAt),
              ].join(' · '),
              style: theme.textTheme.bodySmall?.copyWith(
                color: task.isOverdue ? theme.colorScheme.error : null,
              ),
            ),
          ],
        ],
      ),
      isThreeLine: true,
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) => TaskDetailScreen(taskId: task.id),
          ),
        );
      },
    );
  }
}
