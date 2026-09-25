import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/usecases/delete_task_usecase.dart';
import 'package:katan/domain/usecases/get_tasks_usecase.dart';
import 'package:katan/domain/usecases/run_task_workflow_action_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';

sealed class TasksState extends Equatable {
  const TasksState();

  @override
  List<Object?> get props => [];
}

class TasksInitial extends TasksState {
  const TasksInitial();
}

class TasksLoading extends TasksState {
  const TasksLoading();
}

class TasksLoaded extends TasksState {
  const TasksLoaded({
    required this.items,
    required this.total,
    required this.query,
    required this.status,
    required this.loadingMore,
    this.projectFilterId,
    this.mineOnly = false,
    this.overdueOnly = false,
    this.refreshing = false,
    this.actionTaskId,
    this.actionError,
  });

  final List<TaskSummary> items;
  final int total;
  final String query;
  final String status;
  final bool loadingMore;
  final int? projectFilterId;
  final bool mineOnly;
  final bool overdueOnly;
  final bool refreshing;
  final int? actionTaskId;
  final String? actionError;

  bool get hasMore => items.length < total;

  bool get hasClientFilters => mineOnly || overdueOnly;

  List<TaskSummary> get visibleItems {
    if (!hasClientFilters) {
      return items;
    }

    return items.where((task) {
      if (overdueOnly && !task.isOverdue) {
        return false;
      }
      return true;
    }).toList();
  }

  TasksLoaded copyWith({
    List<TaskSummary>? items,
    int? total,
    String? query,
    String? status,
    bool? loadingMore,
    int? projectFilterId,
    bool clearProjectFilter = false,
    bool? mineOnly,
    bool? overdueOnly,
    bool? refreshing,
    int? actionTaskId,
    bool clearActionTaskId = false,
    String? actionError,
    bool clearActionError = false,
  }) {
    return TasksLoaded(
      items: items ?? this.items,
      total: total ?? this.total,
      query: query ?? this.query,
      status: status ?? this.status,
      loadingMore: loadingMore ?? this.loadingMore,
      projectFilterId: clearProjectFilter ? null : (projectFilterId ?? this.projectFilterId),
      mineOnly: mineOnly ?? this.mineOnly,
      overdueOnly: overdueOnly ?? this.overdueOnly,
      refreshing: refreshing ?? this.refreshing,
      actionTaskId: clearActionTaskId ? null : (actionTaskId ?? this.actionTaskId),
      actionError: clearActionError ? null : (actionError ?? this.actionError),
    );
  }

  @override
  List<Object?> get props => [
    items,
    total,
    query,
    status,
    loadingMore,
    projectFilterId,
    mineOnly,
    overdueOnly,
    refreshing,
    actionTaskId,
    actionError,
  ];
}

class TasksFailure extends TasksState {
  const TasksFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class TasksCubit extends Cubit<TasksState> {
  TasksCubit({
    required GetTasksUseCase getTasksUseCase,
    required RunTaskWorkflowActionUseCase runTaskWorkflowActionUseCase,
    required DeleteTaskUseCase deleteTaskUseCase,
    required AuthCubit authCubit,
    required SessionStorage storage,
    this.projectId,
    this.currentUsername = '',
    this.persistStatusFilter = false,
  })  : _getTasksUseCase = getTasksUseCase,
        _runTaskWorkflowActionUseCase = runTaskWorkflowActionUseCase,
        _deleteTaskUseCase = deleteTaskUseCase,
        _authCubit = authCubit,
        _storage = storage,
        super(const TasksInitial()) {
    if (persistStatusFilter) {
      _status = _storage.taskStatusFilter ?? '';
    }
  }

  static const _pageSize = 20;

  final GetTasksUseCase _getTasksUseCase;
  final RunTaskWorkflowActionUseCase _runTaskWorkflowActionUseCase;
  final DeleteTaskUseCase _deleteTaskUseCase;
  final AuthCubit _authCubit;
  final SessionStorage _storage;
  final int? projectId;
  final String currentUsername;
  final bool persistStatusFilter;

  int _page = 1;
  String _query = '';
  String _status = '';
  int? _projectFilterId;
  bool _mineOnly = false;
  bool _overdueOnly = false;

  String get status => _status;

  int? get projectFilterId => _projectFilterId;

  int? get _effectiveProjectId => projectId ?? _projectFilterId;

  Future<void> load({
    String? query,
    String? status,
    bool showSkeleton = false,
  }) async {
    _page = 1;
    if (query != null) {
      _query = query;
    }
    if (status != null) {
      _status = status;
    }

    final current = state;
    if (current is TasksLoaded && !showSkeleton) {
      emit(current.copyWith(refreshing: true, clearActionError: true));
    } else {
      emit(const TasksLoading());
    }

    try {
      final result = await _getTasksUseCase(
        page: _page,
        limit: _pageSize,
        query: _query,
        projectId: _effectiveProjectId,
        status: _status,
      );

      emit(TasksLoaded(
        items: _applyMineFilter(result.items),
        total: result.total,
        query: _query,
        status: _status,
        loadingMore: false,
        projectFilterId: _projectFilterId,
        mineOnly: _mineOnly,
        overdueOnly: _overdueOnly,
      ));
    } on AuthFailure catch (e) {
      emit(TasksFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(TasksFailure(e.message));
    } catch (e) {
      emit(TasksFailure(e.toString()));
    }
  }

  Future<void> loadMore() async {
    final current = state;
    if (current is! TasksLoaded || current.loadingMore || !current.hasMore) {
      return;
    }

    emit(current.copyWith(loadingMore: true));

    try {
      final nextPage = _page + 1;
      final result = await _getTasksUseCase(
        page: nextPage,
        limit: _pageSize,
        query: _query,
        projectId: _effectiveProjectId,
        status: _status,
      );
      _page = nextPage;
      emit(current.copyWith(
        items: [...current.items, ..._applyMineFilter(result.items)],
        total: result.total,
        loadingMore: false,
      ));
    } on AuthFailure catch (e) {
      emit(TasksFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(loadingMore: false, actionError: e.message));
    } catch (e) {
      emit(current.copyWith(loadingMore: false, actionError: e.toString()));
    }
  }

  Future<void> search(String query) => load(query: query.trim(), showSkeleton: true);

  Future<void> setStatus(String status) async {
    if (persistStatusFilter) {
      await _storage.setTaskStatusFilter(status);
    }

    await load(status: status, showSkeleton: true);
  }

  Future<void> setProjectFilter(int? projectFilterId) {
    _projectFilterId = projectFilterId;
    return load(showSkeleton: true);
  }

  Future<void> setMineOnly(bool value) {
    _mineOnly = value;
    return load(showSkeleton: true);
  }

  Future<void> setOverdueOnly(bool value) {
    _overdueOnly = value;
    final current = state;
    if (current is TasksLoaded) {
      emit(current.copyWith(overdueOnly: value));
    }

    return Future.value();
  }

  Future<bool> runAction({
    required int taskId,
    required String action,
  }) async {
    final current = state;
    if (current is! TasksLoaded) {
      return false;
    }

    emit(current.copyWith(actionTaskId: taskId, clearActionError: true));
    try {
      final result = await _runTaskWorkflowActionUseCase(
        taskId: taskId,
        action: action,
      );
      if (!result.changed) {
        _emitActionDone(
          error: result.message.trim().isEmpty
            ? 'Изменений не требуется'
            : result.message.trim(),
        );
        return false;
      }

      await _reloadKeepingPages();
      return true;
    } on AuthFailure catch (e) {
      emit(TasksFailure(e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      _emitActionDone(error: e.message);
      return false;
    } catch (e) {
      _emitActionDone(error: e.toString());
      return false;
    }
  }

  Future<bool> deleteTask(int taskId) async {
    final current = state;
    if (current is! TasksLoaded) {
      return false;
    }

    emit(current.copyWith(actionTaskId: taskId, clearActionError: true));
    try {
      await _deleteTaskUseCase(taskId);
      await _reloadKeepingPages();
      return true;
    } on AuthFailure catch (e) {
      emit(TasksFailure(e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      _emitActionDone(error: e.message);
      return false;
    } catch (e) {
      _emitActionDone(error: e.toString());
      return false;
    }
  }

  void _emitActionDone({String? error}) {
    final latest = state;
    if (latest is TasksLoaded) {
      emit(latest.copyWith(
        clearActionTaskId: true,
        actionError: error,
        clearActionError: error == null,
      ));
    }
  }

  Future<void> _reloadKeepingPages() async {
    final pages = _page;
    final items = <TaskSummary>[];
    var total = 0;

    for (var page = 1; page <= pages; page++) {
      final result = await _getTasksUseCase(
        page: page,
        limit: _pageSize,
        query: _query,
        projectId: _effectiveProjectId,
        status: _status,
      );
      items.addAll(_applyMineFilter(result.items));
      total = result.total;
    }

    emit(TasksLoaded(
      items: items,
      total: total,
      query: _query,
      status: _status,
      loadingMore: false,
      projectFilterId: _projectFilterId,
      mineOnly: _mineOnly,
      overdueOnly: _overdueOnly,
    ));
  }

  List<TaskSummary> _applyMineFilter(List<TaskSummary> items) {
    if (!_mineOnly) {
      return items;
    }

    final me = currentUsername.trim().toLowerCase();
    if (me.isEmpty) {
      return items;
    }

    return items.where((task) => task.assignee?.username.trim().toLowerCase() == me).toList();
  }
}
