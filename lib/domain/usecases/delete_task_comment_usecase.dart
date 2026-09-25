import 'package:katan/domain/repositories/task_repository.dart';

class DeleteTaskCommentUseCase {
  const DeleteTaskCommentUseCase(this._repository);

  final TaskRepository _repository;

  Future<void> call(int commentId) => _repository.deleteTaskComment(commentId);
}
