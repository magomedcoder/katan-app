import 'package:katan/domain/entities/task_tag.dart';
import 'package:katan/domain/repositories/task_repository.dart';

class GetTaskLabelsUseCase {
  const GetTaskLabelsUseCase(this._repository);

  final TaskRepository _repository;

  Future<List<TaskLabel>> call({int projectId = 0}) => _repository.getTaskLabels(projectId: projectId);
}
