import 'package:katan/domain/entities/task_comment.dart';
import 'package:katan/domain/repositories/task_repository.dart';

class GetTaskCommentsUseCase {
  const GetTaskCommentsUseCase(this._repository);

  final TaskRepository _repository;

  Future<List<TaskComment>> call(int taskId) => _repository.getTaskComments(taskId);
}
