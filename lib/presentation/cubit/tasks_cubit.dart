import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/usecases/get_tasks_usecase.dart';
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
    required this.loadingMore,
  });

  final List<TaskSummary> items;
  final int total;
  final String query;
  final bool loadingMore;

  bool get hasMore => items.length < total;

  @override
  List<Object?> get props => [items, total, query, loadingMore];
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
    required AuthCubit authCubit,
    this.projectId,
  })  : _getTasksUseCase = getTasksUseCase,
        _authCubit = authCubit,
        super(const TasksInitial());

  static const _pageSize = 20;

  final GetTasksUseCase _getTasksUseCase;
  final AuthCubit _authCubit;
  final int? projectId;

  int _page = 1;
  String _query = '';

  Future<void> load({String? query}) async {
    _page = 1;
    if (query != null) {
      _query = query;
    }

    emit(const TasksLoading());

    try {
      final result = await _getTasksUseCase(
        page: _page,
        limit: _pageSize,
        query: _query,
        projectId: projectId,
      );

      emit(TasksLoaded(
        items: result.items,
        total: result.total,
        query: _query,
        loadingMore: false,
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

    emit(TasksLoaded(
      items: current.items,
      total: current.total,
      query: current.query,
      loadingMore: true,
    ));

    try {
      final nextPage = _page + 1;
      final result = await _getTasksUseCase(
        page: nextPage,
        limit: _pageSize,
        query: _query,
        projectId: projectId,
      );
      _page = nextPage;
      emit(TasksLoaded(
        items: [...current.items, ...result.items],
        total: result.total,
        query: _query,
        loadingMore: false,
      ));
    } on AuthFailure catch (e) {
      emit(TasksFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(TasksLoaded(
        items: current.items,
        total: current.total,
        query: current.query,
        loadingMore: false,
      ));
      emit(TasksFailure(e.message));
    } catch (e) {
      emit(TasksFailure(e.toString()));
    }
  }

  Future<void> search(String query) => load(query: query.trim());
}
