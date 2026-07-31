import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/usecases/get_projects_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';

sealed class ProjectsState extends Equatable {
  const ProjectsState();

  @override
  List<Object?> get props => [];
}

class ProjectsInitial extends ProjectsState {
  const ProjectsInitial();
}

class ProjectsLoading extends ProjectsState {
  const ProjectsLoading();
}

class ProjectsLoaded extends ProjectsState {
  const ProjectsLoaded({
    required this.items,
    required this.total,
    required this.query,
    required this.loadingMore,
  });

  final List<ProjectSummary> items;
  final int total;
  final String query;
  final bool loadingMore;

  bool get hasMore => items.length < total;

  @override
  List<Object?> get props => [items, total, query, loadingMore];
}

class ProjectsFailure extends ProjectsState {
  const ProjectsFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit({
    required GetProjectsUseCase getProjectsUseCase,
    required AuthCubit authCubit,
  })  : _getProjectsUseCase = getProjectsUseCase,
        _authCubit = authCubit,
        super(const ProjectsInitial());

  static const _pageSize = 20;

  final GetProjectsUseCase _getProjectsUseCase;
  final AuthCubit _authCubit;

  int _page = 1;
  String _query = '';

  Future<void> load({String? query}) async {
    _page = 1;
    if (query != null) {
      _query = query;
    }

    emit(const ProjectsLoading());

    try {
      final result = await _getProjectsUseCase(
        page: _page,
        limit: _pageSize,
        query: _query,
      );
      emit(ProjectsLoaded(
        items: result.items,
        total: result.total,
        query: _query,
        loadingMore: false,
      ));
    } on AuthFailure catch (e) {
      emit(ProjectsFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(ProjectsFailure(e.message));
    } catch (e) {
      emit(ProjectsFailure(e.toString()));
    }
  }

  Future<void> loadMore() async {
    final current = state;
    if (current is! ProjectsLoaded ||
        current.loadingMore ||
        !current.hasMore) {
      return;
    }

    emit(ProjectsLoaded(
      items: current.items,
      total: current.total,
      query: current.query,
      loadingMore: true,
    ));

    try {
      final nextPage = _page + 1;
      final result = await _getProjectsUseCase(
        page: nextPage,
        limit: _pageSize,
        query: _query,
      );
      _page = nextPage;
      emit(ProjectsLoaded(
        items: [...current.items, ...result.items],
        total: result.total,
        query: _query,
        loadingMore: false,
      ));
    } on AuthFailure catch (e) {
      emit(ProjectsFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(ProjectsLoaded(
        items: current.items,
        total: current.total,
        query: current.query,
        loadingMore: false,
      ));
      emit(ProjectsFailure(e.message));
    } catch (e) {
      emit(ProjectsFailure(e.toString()));
    }
  }

  Future<void> search(String query) => load(query: query.trim());
}
