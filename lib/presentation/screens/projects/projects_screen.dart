import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/domain/usecases/get_projects_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/cubit/projects_cubit.dart';
import 'package:katan/presentation/screens/projects/project_tasks_screen.dart';
import 'package:katan/presentation/widgets/empty_state.dart';
import 'package:katan/presentation/widgets/error_view.dart';
import 'package:katan/presentation/widgets/project_list_card.dart';
import 'package:katan/presentation/widgets/search_app_bar.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({
    super.key,
    this.embedded = false,
  });

  final bool embedded;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectsCubit(
        getProjectsUseCase: getIt<GetProjectsUseCase>(),
        authCubit: context.read<AuthCubit>(),
      )..load(),
      child: _ProjectsView(embedded: embedded),
    );
  }
}

class _ProjectsView extends StatefulWidget {
  const _ProjectsView({this.embedded = false});

  final bool embedded;

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
    final body = Column(
      children: [
        if (widget.embedded)
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
            child: TextField(
              onChanged: _onSearchChanged,
              decoration: InputDecoration(
                hintText: 'Поиск проектов',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                suffixIcon: IconButton(
                  tooltip: 'Обновить',
                  onPressed: () => context.read<ProjectsCubit>().load(),
                  icon: const Icon(Icons.refresh),
                ),
              ),
            ),
          ),
        Expanded(child: _buildList()),
      ],
    );

    if (widget.embedded) {
      return ColoredBox(color: AppColors.fill, child: body);
    }

    return Scaffold(
      backgroundColor: AppColors.fill,
      appBar: SearchAppBar(
        title: 'Проекты',
        hintText: 'Поиск проектов',
        onChanged: _onSearchChanged,
        onRefresh: () => context.read<ProjectsCubit>().load(),
      ),
      body: body,
    );
  }

  Widget _buildList() {
    return BlocBuilder<ProjectsCubit, ProjectsState>(
      builder: (context, state) {
        return switch (state) {
          ProjectsInitial() || ProjectsLoading() => const Center(
            child: CircularProgressIndicator(),
          ),
          ProjectsFailure(:final message) => ErrorView(
            message: message,
            onRetry: () => context.read<ProjectsCubit>().load(),
          ),
          ProjectsLoaded(:final items, :final loadingMore, :final total) => items.isEmpty
            ? const EmptyState(
              icon: Icons.folder_open,
              message: 'Проектов пока нет',
            )
            : RefreshIndicator(
              onRefresh: () => context.read<ProjectsCubit>().load(),
              child: ListView.builder(
                controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 24),
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
                  final project = items[itemIndex];
                  return ProjectListCard(
                    project: project,
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
                },
              ),
            ),
        };
      },
    );
  }
}
