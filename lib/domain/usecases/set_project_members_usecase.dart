import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/repositories/project_repository.dart';

class SetProjectMembersUseCase {
  const SetProjectMembersUseCase(this._repository);

  final ProjectRepository _repository;

  Future<void> call({
    required int projectId,
    required List<ProjectMemberInput> members,
  }) => _repository.setProjectMembers(projectId: projectId, members: members);
}
