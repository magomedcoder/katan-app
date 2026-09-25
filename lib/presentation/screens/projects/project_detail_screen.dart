import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/di.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/utils/formatters.dart';
import 'package:katan/domain/entities/account.dart';
import 'package:katan/domain/entities/kanban.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/repositories/account_repository.dart';
import 'package:katan/domain/usecases/close_project_usecase.dart';
import 'package:katan/domain/usecases/delete_project_usecase.dart';
import 'package:katan/domain/usecases/get_project_kanban_usecase.dart';
import 'package:katan/domain/usecases/get_project_members_usecase.dart';
import 'package:katan/domain/usecases/move_task_usecase.dart';
import 'package:katan/domain/usecases/set_project_members_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/cubit/project_detail_cubit.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_avatar.dart';
import 'package:katan/presentation/screens/projects/widgets/kanban_board.dart';
import 'package:katan/presentation/screens/projects/widgets/project_members_sheet.dart';
import 'package:katan/presentation/screens/tasks/create_task_sheet.dart';
import 'package:katan/presentation/screens/tasks/task_detail_screen.dart';
import 'package:katan/presentation/screens/tasks/tasks_screen.dart';
import 'package:katan/presentation/widgets/error_view.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({
    super.key,
    required this.projectId,
    this.projectTitle,
  });

  final int projectId;
  final String? projectTitle;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProjectDetailCubit(
        projectId: projectId,
        getProjectKanbanUseCase: getIt<GetProjectKanbanUseCase>(),
        moveTaskUseCase: getIt<MoveTaskUseCase>(),
        getProjectMembersUseCase: getIt<GetProjectMembersUseCase>(),
        setProjectMembersUseCase: getIt<SetProjectMembersUseCase>(),
        closeProjectUseCase: getIt<CloseProjectUseCase>(),
        deleteProjectUseCase: getIt<DeleteProjectUseCase>(),
        authCubit: context.read<AuthCubit>(),
      )..load(),
      child: _ProjectDetailView(
        projectId: projectId,
        fallbackTitle: projectTitle,
      ),
    );
  }
}

class _ProjectDetailView extends StatefulWidget {
  const _ProjectDetailView({
    required this.projectId,
    this.fallbackTitle,
  });

  final int projectId;
  final String? fallbackTitle;

  @override
  State<_ProjectDetailView> createState() => _ProjectDetailViewState();
}

class _ProjectDetailViewState extends State<_ProjectDetailView> with SingleTickerProviderStateMixin {
  late final TabController _tabController = TabController(length: 2, vsync: this);

  Account? get _account => getIt<AccountRepository>().cachedAccount;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  bool _canCreate(ProjectSummary project) {
    return (_account?.canWriteTask ?? false) && !project.isClosed && ProjectRoles.canModifyTasks(project.myRole);
  }

  Future<void> _openMembers(ProjectDetailLoaded state) async {
    final cubit = context.read<ProjectDetailCubit>();
    await cubit.loadMembers();
    if (!mounted) {
      return;
    }

    final latest = cubit.state;
    await showProjectMembersSheet(
      context,
      cubit: cubit,
      members: latest is ProjectDetailLoaded ? latest.members : state.members,
      ownerId: state.project.owner?.id ?? 0,
      canEdit: state.project.isAdmin && !state.project.isClosed,
    );
  }

  Future<void> _closeProject(ProjectDetailLoaded state) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Закрыть проект?'),
        content: Text(
          "Проект '${state.project.title}' будет помечен закрытым.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('Отмена'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('Закрыть'),
          ),
        ],
      ),
    );

    if (confirmed != true || !mounted) {
      return;
    }

    await context.read<ProjectDetailCubit>().closeProject();
  }

  Future<void> _deleteProject(ProjectDetailLoaded state) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Удалить проект?'),
        content: Text(
          "Проект '${state.project.title}' и его колонки будут удалены безвозвратно.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: const Text('Отмена'),
          ),
          FilledButton(
            style: FilledButton.styleFrom(backgroundColor: AppColors.danger),
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: const Text('Удалить'),
          ),
        ],
      ),
    );

    if (confirmed != true || !mounted) {
      return;
    }

    await context.read<ProjectDetailCubit>().deleteProject();
  }

  Future<void> _createInColumn(
    ProjectDetailLoaded state,
    KanbanColumn column,
  ) async {
    final cubit = context.read<ProjectDetailCubit>();
    await showCreateTaskSheet(
      context,
      projectId: state.project.id,
      projectTitle: state.project.title,
      columnId: column.id,
      columnTitle: column.title,
      lockProject: true,
      openDetailAfterCreate: false,
    );

    if (mounted) {
      await cubit.load();
    }
  }

  Future<void> _openTask(int taskId) async {
    final cubit = context.read<ProjectDetailCubit>();
    await Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => TaskDetailScreen(taskId: taskId),
      ),
    );

    if (mounted) {
      await cubit.load();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectDetailCubit, ProjectDetailState>(
      listener: (context, state) {
        if (state is ProjectDetailDeleted) {
          Navigator.of(context).pop(true);
          return;
        }

        if (state is ProjectDetailLoaded) {
          final message = state.actionError ?? state.actionMessage;
          if (message != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
            context.read<ProjectDetailCubit>().consumeMessages();
          }
        }
      },
      builder: (context, state) {
        final title = switch (state) {
          ProjectDetailLoaded(:final project) when project.title.isNotEmpty => project.title,
          _ => widget.fallbackTitle?.isNotEmpty == true
            ? widget.fallbackTitle!
            : 'Проект',
        };

        return Scaffold(
          backgroundColor: AppColors.fill,
          appBar: AppBar(
            title: Text(title, overflow: TextOverflow.ellipsis),
            actions: [
              if (state is ProjectDetailLoaded) ..._buildActions(state),
              IconButton(
                tooltip: 'Обновить',
                onPressed: () => context.read<ProjectDetailCubit>().load(),
                icon: const Icon(Icons.refresh),
              ),
            ],
            bottom: state is ProjectDetailLoaded
              ? TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(text: 'Канбан'),
                  Tab(text: 'Список'),
                ],
              )
              : null,
          ),
          body: switch (state) {
            ProjectDetailInitial() || ProjectDetailLoading() || ProjectDetailDeleted() => const Center(child: CircularProgressIndicator()),
            ProjectDetailFailure(:final message) => ErrorView(
              message: message,
              onRetry: () => context.read<ProjectDetailCubit>().load(),
            ),
            ProjectDetailLoaded() => _buildLoaded(context, state),
          },
        );
      },
    );
  }

  List<Widget> _buildActions(ProjectDetailLoaded state) {
    final account = _account;
    final canDelete = state.project.isAdmin && (account?.canDeleteTask ?? false);

    return [
      IconButton(
        tooltip: 'Участники',
        onPressed: state.busy ? null : () => _openMembers(state),
        icon: const Icon(Icons.group_outlined),
      ),
      if (state.project.isAdmin)
        PopupMenuButton<String>(
          tooltip: 'Действия',
          enabled: !state.busy,
          onSelected: (value) {
            switch (value) {
              case 'close':
                _closeProject(state);
              case 'delete':
                _deleteProject(state);
            }
          },
          itemBuilder: (context) => [
            if (!state.project.isClosed)
              const PopupMenuItem<String>(
                value: 'close',
                child: ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.lock_outline),
                  title: Text('Закрыть проект'),
                ),
              ),
            if (canDelete)
              const PopupMenuItem<String>(
                value: 'delete',
                child: ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(Icons.delete_outline, color: AppColors.danger),
                  title: Text('Удалить проект', style: TextStyle(color: AppColors.danger)),
                ),
              ),
          ],
        ),
    ];
  }

  Widget _buildLoaded(BuildContext context, ProjectDetailLoaded state) {
    final project = state.project;
    final canCreate = _canCreate(project);
    final canMove = canCreate;

    return Column(
      children: [
        if (state.busy) const LinearProgressIndicator(minHeight: 2),
        _ProjectHeader(project: project),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              KanbanBoard(
                columns: state.columns,
                canMove: canMove,
                canCreate: canCreate,
                canDragFrom: context.read<ProjectDetailCubit>().canDragFromColumn,
                movingTaskId: state.movingTaskId,
                onMove: (taskId, columnId) => context.read<ProjectDetailCubit>().moveTask(taskId: taskId, columnId: columnId),
                onCreate: (column) => _createInColumn(state, column),
                onOpenTask: _openTask,
              ),
              TasksScreen(
                projectId: project.id,
                projectTitle: project.title,
                embedded: true,
                canWriteTask: canCreate,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ProjectHeader extends StatelessWidget {
  const _ProjectHeader({required this.project});

  final ProjectSummary project;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final owner = project.owner;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
      color: theme.colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 8,
            runSpacing: 6,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              if (project.isClosed)
                const _HeaderChip(
                  label: 'Закрыт',
                  color: AppColors.info,
                  icon: Icons.lock_outline,
                ),
              _HeaderChip(
                label: 'Задач: ${project.tasksCount}',
                color: AppColors.primary,
                icon: Icons.task_alt,
              ),
              if (project.storyPoints > 0)
                _HeaderChip(
                  label: '${project.storyPoints} SP',
                  color: AppColors.warning,
                  icon: Icons.bolt_outlined,
                ),
              if (project.myRole.isNotEmpty)
                _HeaderChip(
                  label: 'Роль: ${ProjectRoles.label(project.myRole)}',
                  color: AppColors.success,
                  icon: Icons.badge_outlined,
                ),
            ],
          ),
          if (project.description.trim().isNotEmpty) ...[
            const SizedBox(height: 10),
            Text(
              project.description.trim(),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: AppColors.textRegular,
              ),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          if (owner != null) ...[
            const SizedBox(height: 10),
            Row(
              children: [
                ChatAvatar(label: owner.displayName, size: 28),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'Владелец: ${owner.displayName}',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (project.createdAt != null)
                  Text(
                    formatDateTime(project.createdAt),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: AppColors.textSecondary,
                    ),
                  ),
              ],
            ),
          ],
          if (project.isClosed && project.closedBy != null) ...[
            const SizedBox(height: 6),
            Text(
              'Закрыл: ${project.closedBy!.displayName}'
              '${project.closedAt != null ? ' ${formatDateTime(project.closedAt)}' : ''}',
              style: theme.textTheme.bodySmall?.copyWith(
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _HeaderChip extends StatelessWidget {
  const _HeaderChip({
    required this.label,
    required this.color,
    required this.icon,
  });

  final String label;
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
