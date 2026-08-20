import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/repositories/task_repository.dart';

class CreateTaskUseCase {
  const CreateTaskUseCase(this._repository);

  final TaskRepository _repository;

  Future<TaskDetail> call({
    required String title,
    required String description,
    int? projectId,
  }) => _repository.createTask(
    title: title,
    description: description,
    projectId: projectId,
  );
}
