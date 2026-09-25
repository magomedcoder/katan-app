import 'package:katan/domain/repositories/task_repository.dart';

class DeleteTaskUseCase {
  const DeleteTaskUseCase(this._repository);

  final TaskRepository _repository;

  Future<void> call(int taskId) => _repository.deleteTask(taskId);
}
