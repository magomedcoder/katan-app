import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/domain/repositories/account_repository.dart';
import 'package:katan/domain/usecases/get_projects_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/cubit/projects_cubit.dart';
import 'package:katan/presentation/screens/projects/project_detail_screen.dart';
import 'package:katan/presentation/screens/projects/widgets/create_project_dialog.dart';
import 'package:katan/presentation/widgets/empty_state.dart';
import 'package:katan/presentation/widgets/error_view.dart';
import 'package:katan/presentation/widgets/list_skeleton.dart';
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

  bool get _canCreateProject => getIt<AccountRepository>().cachedAccount?.canWriteTask ?? false;

  Future<void> _createProject() async {
    final cubit = context.read<ProjectsCubit>();
    final projectId = await showCreateProjectDialog(context);
    if (projectId == null || !mounted) {
      return;
    }

    await cubit.load();
    if (!mounted) {
      return;
    }

    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => ProjectDetailScreen(projectId: projectId),
      ),
    );
    if (mounted) {
      await cubit.load();
    }
  }

  Future<void> _openProject(int projectId, String title) async {
    final cubit = context.read<ProjectsCubit>();
    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => ProjectDetailScreen(
          projectId: projectId,
          projectTitle: title,
        ),
      ),
    );
    if (mounted) {
      await cubit.load();
    }
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
      return ColoredBox(
        color: AppColors.fill,
        child: Stack(
          children: [
            body,
            if (_canCreateProject)
              Positioned(
                right: 16,
                bottom: 16,
                child: FloatingActionButton(
                  heroTag: 'create-project-embedded',
                  onPressed: _createProject,
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
        title: 'Проекты',
        hintText: 'Поиск проектов',
        onChanged: _onSearchChanged,
        onRefresh: () => context.read<ProjectsCubit>().load(),
      ),
      floatingActionButton: _canCreateProject
        ? FloatingActionButton(
          heroTag: 'create-project',
          onPressed: _createProject,
          child: const Icon(Icons.add),
        )
        : null,
      body: body,
    );
  }

  Widget _buildList() {
    return BlocBuilder<ProjectsCubit, ProjectsState>(
      builder: (context, state) {
        return switch (state) {
          ProjectsInitial() || ProjectsLoading() => const ListSkeleton(),
          ProjectsFailure(:final message) => ErrorView(
            message: message,
            onRetry: () => context.read<ProjectsCubit>().load(),
          ),
          ProjectsLoaded() => _buildLoadedList(context, state),
        };
      },
    );
  }

  Widget _buildLoadedList(BuildContext context, ProjectsLoaded state) {
    if (state.refreshing && state.items.isEmpty) {
      return const ListSkeleton();
    }

    if (state.items.isEmpty) {
      return EmptyState(
        icon: Icons.folder_open,
        message: state.query.isEmpty
          ? 'Проектов пока нет'
          : 'Проектов по запросу не найдено',
        actionLabel: _canCreateProject ? 'Создать проект' : null,
        onAction: _canCreateProject ? _createProject : null,
      );
    }

    return RefreshIndicator(
      onRefresh: () => context.read<ProjectsCubit>().load(),
      child: Stack(
        children: [
          ListView.builder(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.fromLTRB(0, 4, 0, 88),
            itemCount: state.items.length + (state.loadingMore ? 2 : 1),
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                  child: Text(
                    'Найдено: ${state.total}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
                );
              }
              final itemIndex = index - 1;
              if (itemIndex >= state.items.length) {
                return const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              final project = state.items[itemIndex];
              return ProjectListCard(
                project: project,
                onTap: () => _openProject(project.id, project.title),
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
