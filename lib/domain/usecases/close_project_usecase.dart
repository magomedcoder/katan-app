import 'package:katan/domain/repositories/project_repository.dart';

class CloseProjectUseCase {
  const CloseProjectUseCase(this._repository);

  final ProjectRepository _repository;

  Future<void> call(int id) => _repository.closeProject(id);
}
