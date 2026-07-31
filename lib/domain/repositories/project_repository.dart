import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/project.dart';

abstract class ProjectRepository {
  Future<PagedResult<ProjectSummary>> getProjects({
    required int page,
    required int limit,
    String query = '',
  });

  Future<ProjectSummary> getProject(int id);
}
