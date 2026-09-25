import 'package:katan/domain/repositories/project_repository.dart';

class DeleteProjectUseCase {
  const DeleteProjectUseCase(this._repository);

  final ProjectRepository _repository;

  Future<void> call(int id) => _repository.deleteProject(id);
}
