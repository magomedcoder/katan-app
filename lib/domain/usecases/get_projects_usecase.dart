import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/repositories/project_repository.dart';

class GetProjectsUseCase {
  const GetProjectsUseCase(this._repository);

  final ProjectRepository _repository;

  Future<PagedResult<ProjectSummary>> call({
    required int page,
    int limit = 20,
    String query = '',
  }) => _repository.getProjects(
      page: page,
      limit: limit,
      query: query
  );
}
