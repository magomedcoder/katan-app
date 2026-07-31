import 'package:katan/domain/entities/task_comment.dart';
import 'package:katan/domain/repositories/task_repository.dart';

class AddTaskCommentUseCase {
  const AddTaskCommentUseCase(this._repository);

  final TaskRepository _repository;

  Future<TaskComment> call({
    required int taskId,
    required String content,
  }) => _repository.addTaskComment(taskId: taskId, content: content);
}
