import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/repositories/project_repository.dart';

class GetProjectMembersUseCase {
  const GetProjectMembersUseCase(this._repository);

  final ProjectRepository _repository;

  Future<List<ProjectMember>> call(int projectId) => _repository.getProjectMembers(projectId);
}
