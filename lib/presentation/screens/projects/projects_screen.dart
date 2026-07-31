import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/usecases/get_projects_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/cubit/projects_cubit.dart';
import 'package:katan/presentation/screens/projects/project_tasks_screen.dart';
import 'package:katan/presentation/widgets/empty_state.dart';
import 'package:katan/presentation/widgets/error_view.dart';
import 'package:katan/presentation/widgets/search_app_bar.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectsCubit(
        getProjectsUseCase: getIt<GetProjectsUseCase>(),
        authCubit: context.read<AuthCubit>(),
      )..load(),
      child: const _ProjectsView(),
    );
  }
}

class _ProjectsView extends StatefulWidget {
  const _ProjectsView();

  @override
  State<_ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<_ProjectsView> {
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
      context.read<ProjectsCubit>().loadMore();
    }
  }

  void _onSearchChanged(String value) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 400), () {
      if (mounted) {
        context.read<ProjectsCubit>().search(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(
        title: 'Проекты',
        hintText: 'Поиск проектов',
        onChanged: _onSearchChanged,
        onRefresh: () => context.read<ProjectsCubit>().load(),
      ),
      body: BlocBuilder<ProjectsCubit, ProjectsState>(
        builder: (context, state) {
          return switch (state) {
            ProjectsInitial() || ProjectsLoading() => const Center(
              child: CircularProgressIndicator(),
            ),
            ProjectsFailure(:final message) => ErrorView(
              message: message,
              onRetry: () => context.read<ProjectsCubit>().load(),
            ),
            ProjectsLoaded(:final items, :final loadingMore) => items.isEmpty
              ? const EmptyState(
                icon: Icons.folder_open,
                message: 'Проектов пока нет',
              )
              : RefreshIndicator(
                onRefresh: () => context.read<ProjectsCubit>().load(),
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
                    return _ProjectTile(project: items[index]);
                  },
                ),
              ),
          };
        },
      ),
    );
  }
}

class _ProjectTile extends StatelessWidget {
  const _ProjectTile({required this.project});

  final ProjectSummary project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Icon(
        project.isClosed ? Icons.folder_off_outlined : Icons.folder_outlined,
      ),
      title: Text(project.title.isEmpty ? 'Без названия' : project.title),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (project.description.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              project.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          const SizedBox(height: 4),
          Text(
            [
              '${project.tasksCount} задач',
              if (project.owner != null)
                project.owner!.displayName,
              if (project.isClosed)
                'закрыт',
            ].join(' · '),
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
      isThreeLine: project.description.isNotEmpty,
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) => ProjectTasksScreen(
              projectId: project.id,
              projectTitle: project.title,
            ),
          ),
        );
      },
    );
  }
}
