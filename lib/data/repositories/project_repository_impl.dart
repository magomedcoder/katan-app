import 'package:katan/data/data_sources/remote/project_remote_datasource.dart';
import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/repositories/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  ProjectRepositoryImpl(this._remote);

  final ProjectRemoteDataSource _remote;

  @override
  Future<PagedResult<ProjectSummary>> getProjects({
    required int page,
    required int limit,
    String query = '',
  }) => _remote.getProjects(
      page: page,
      limit: limit,
      query: query
  );

  @override
  Future<ProjectSummary> getProject(int id) => _remote.getProject(id);
}
