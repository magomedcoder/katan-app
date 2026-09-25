import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/utils/task_status.dart';
import 'package:katan/domain/entities/kanban.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/usecases/close_project_usecase.dart';
import 'package:katan/domain/usecases/delete_project_usecase.dart';
import 'package:katan/domain/usecases/get_project_kanban_usecase.dart';
import 'package:katan/domain/usecases/get_project_members_usecase.dart';
import 'package:katan/domain/usecases/move_task_usecase.dart';
import 'package:katan/domain/usecases/set_project_members_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';

sealed class ProjectDetailState extends Equatable {
  const ProjectDetailState();

  @override
  List<Object?> get props => [];
}

class ProjectDetailInitial extends ProjectDetailState {
  const ProjectDetailInitial();
}

class ProjectDetailLoading extends ProjectDetailState {
  const ProjectDetailLoading();
}

class ProjectDetailDeleted extends ProjectDetailState {
  const ProjectDetailDeleted();
}

class ProjectDetailLoaded extends ProjectDetailState {
  const ProjectDetailLoaded({
    required this.project,
    required this.columns,
    this.members = const [],
    this.busy = false,
    this.movingTaskId,
    this.actionError,
    this.actionMessage,
  });

  final ProjectSummary project;
  final List<KanbanColumn> columns;
  final List<ProjectMember> members;
  final bool busy;
  final int? movingTaskId;
  final String? actionError;
  final String? actionMessage;

  ProjectDetailLoaded copyWith({
    ProjectSummary? project,
    List<KanbanColumn>? columns,
    List<ProjectMember>? members,
    bool? busy,
    int? movingTaskId,
    bool clearMovingTaskId = false,
    String? actionError,
    bool clearActionError = false,
    String? actionMessage,
    bool clearActionMessage = false,
  }) {
    return ProjectDetailLoaded(
      project: project ?? this.project,
      columns: columns ?? this.columns,
      members: members ?? this.members,
      busy: busy ?? this.busy,
      movingTaskId: clearMovingTaskId ? null : (movingTaskId ?? this.movingTaskId),
      actionError: clearActionError ? null : (actionError ?? this.actionError),
      actionMessage: clearActionMessage ? null : (actionMessage ?? this.actionMessage),
    );
  }

  @override
  List<Object?> get props => [
    project,
    columns,
    members,
    busy,
    movingTaskId,
    actionError,
    actionMessage,
  ];
}

class ProjectDetailFailure extends ProjectDetailState {
  const ProjectDetailFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class ProjectDetailCubit extends Cubit<ProjectDetailState> {
  ProjectDetailCubit({
    required this.projectId,
    required GetProjectKanbanUseCase getProjectKanbanUseCase,
    required MoveTaskUseCase moveTaskUseCase,
    required GetProjectMembersUseCase getProjectMembersUseCase,
    required SetProjectMembersUseCase setProjectMembersUseCase,
    required CloseProjectUseCase closeProjectUseCase,
    required DeleteProjectUseCase deleteProjectUseCase,
    required AuthCubit authCubit,
  })  : _getProjectKanbanUseCase = getProjectKanbanUseCase,
        _moveTaskUseCase = moveTaskUseCase,
        _getProjectMembersUseCase = getProjectMembersUseCase,
        _setProjectMembersUseCase = setProjectMembersUseCase,
        _closeProjectUseCase = closeProjectUseCase,
        _deleteProjectUseCase = deleteProjectUseCase,
        _authCubit = authCubit,
        super(const ProjectDetailInitial());

  final int projectId;
  final GetProjectKanbanUseCase _getProjectKanbanUseCase;
  final MoveTaskUseCase _moveTaskUseCase;
  final GetProjectMembersUseCase _getProjectMembersUseCase;
  final SetProjectMembersUseCase _setProjectMembersUseCase;
  final CloseProjectUseCase _closeProjectUseCase;
  final DeleteProjectUseCase _deleteProjectUseCase;
  final AuthCubit _authCubit;

  Future<void> load() async {
    final current = state;
    if (current is! ProjectDetailLoaded) {
      emit(const ProjectDetailLoading());
    }

    try {
      final kanban = await _getProjectKanbanUseCase(projectId);
      final latest = state;
      emit(ProjectDetailLoaded(
        project: kanban.project,
        columns: kanban.columns,
        members: latest is ProjectDetailLoaded ? latest.members : const [],
      ));
    } on AuthFailure catch (e) {
      emit(ProjectDetailFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(ProjectDetailFailure(e.message));
    } catch (e) {
      emit(ProjectDetailFailure(e.toString()));
    }
  }

  Future<void> loadMembers() async {
    final current = state;
    if (current is! ProjectDetailLoaded) {
      return;
    }

    try {
      final members = await _getProjectMembersUseCase(projectId);
      final latest = state;
      if (latest is ProjectDetailLoaded) {
        emit(latest.copyWith(members: members));
      }
    } on AuthFailure catch (e) {
      emit(ProjectDetailFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      _fail(e.message);
    } catch (e) {
      _fail(e.toString());
    }
  }

  Future<bool> saveMembers(List<ProjectMemberInput> members) async {
    final current = state;
    if (current is! ProjectDetailLoaded) {
      return false;
    }

    emit(current.copyWith(busy: true, clearActionError: true));
    try {
      await _setProjectMembersUseCase(projectId: projectId, members: members);
      final fresh = await _getProjectMembersUseCase(projectId);
      final latest = state;
      if (latest is ProjectDetailLoaded) {
        emit(latest.copyWith(
          members: fresh,
          busy: false,
          actionMessage: 'Участники сохранены',
        ));
      }
      return true;
    } on AuthFailure catch (e) {
      emit(ProjectDetailFailure(e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      _fail(e.message, busy: false);
      return false;
    } catch (e) {
      _fail(e.toString(), busy: false);
      return false;
    }
  }

  bool canDragFromColumn(KanbanColumn column) {
    return detectTaskStatusFromColumn(column.title) != TaskStatuses.complete;
  }

  Future<bool> moveTask({
    required int taskId,
    required int columnId,
  }) async {
    final current = state;
    if (current is! ProjectDetailLoaded) {
      return false;
    }

    emit(current.copyWith(movingTaskId: taskId, clearActionError: true));
    try {
      await _moveTaskUseCase(taskId: taskId, columnId: columnId);
      final kanban = await _getProjectKanbanUseCase(projectId);
      final latest = state;
      if (latest is ProjectDetailLoaded) {
        emit(latest.copyWith(
          project: kanban.project,
          columns: kanban.columns,
          clearMovingTaskId: true,
          actionMessage: 'Задача перемещена',
        ));
      }
      return true;
    } on AuthFailure catch (e) {
      emit(ProjectDetailFailure(e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      _fail(e.message, clearMovingTaskId: true);
      return false;
    } catch (e) {
      _fail(e.toString(), clearMovingTaskId: true);
      return false;
    }
  }

  Future<bool> closeProject() async {
    final current = state;
    if (current is! ProjectDetailLoaded) {
      return false;
    }

    emit(current.copyWith(busy: true, clearActionError: true));
    try {
      await _closeProjectUseCase(projectId);
      final kanban = await _getProjectKanbanUseCase(projectId);
      final latest = state;
      if (latest is ProjectDetailLoaded) {
        emit(latest.copyWith(
          project: kanban.project,
          columns: kanban.columns,
          busy: false,
          actionMessage: 'Проект закрыт',
        ));
      }
      return true;
    } on AuthFailure catch (e) {
      emit(ProjectDetailFailure(e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      _fail(e.message, busy: false);
      return false;
    } catch (e) {
      _fail(e.toString(), busy: false);
      return false;
    }
  }

  Future<bool> deleteProject() async {
    final current = state;
    if (current is! ProjectDetailLoaded) {
      return false;
    }

    emit(current.copyWith(busy: true, clearActionError: true));
    try {
      await _deleteProjectUseCase(projectId);
      emit(const ProjectDetailDeleted());
      return true;
    } on AuthFailure catch (e) {
      emit(ProjectDetailFailure(e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      _fail(e.message, busy: false);
      return false;
    } catch (e) {
      _fail(e.toString(), busy: false);
      return false;
    }
  }

  void consumeMessages() {
    final current = state;
    if (current is ProjectDetailLoaded) {
      emit(current.copyWith(clearActionError: true, clearActionMessage: true));
    }
  }

  void _fail(
    String message, {
    bool? busy,
    bool clearMovingTaskId = false,
  }) {
    final latest = state;
    if (latest is ProjectDetailLoaded) {
      emit(latest.copyWith(
        actionError: message,
        busy: busy,
        clearMovingTaskId: clearMovingTaskId,
      ));
    }
  }
}
