import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/repositories/project_repository.dart';

class CreateProjectUseCase {
  const CreateProjectUseCase(this._repository);

  final ProjectRepository _repository;

  Future<int> call({
    required String title,
    required String description,
    int storyPoints = 0,
    List<ProjectMemberInput> members = const [],
  }) => _repository.createProject(
    title: title,
    description: description,
    storyPoints: storyPoints,
    members: members,
  );
}
