import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/repositories/task_repository.dart';

class GetTaskUseCase {
  const GetTaskUseCase(this._repository);

  final TaskRepository _repository;

  Future<TaskDetail> call(int id) => _repository.getTask(id);
}
