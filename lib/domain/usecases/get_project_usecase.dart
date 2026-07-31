import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/repositories/project_repository.dart';

class GetProjectUseCase {
  const GetProjectUseCase(this._repository);

  final ProjectRepository _repository;

  Future<ProjectSummary> call(int id) => _repository.getProject(id);
}
