import 'package:katan/domain/entities/kanban.dart';
import 'package:katan/domain/repositories/project_repository.dart';

class GetProjectKanbanUseCase {
  const GetProjectKanbanUseCase(this._repository);

  final ProjectRepository _repository;

  Future<ProjectKanban> call(int projectId) => _repository.getProjectKanban(projectId);
}
