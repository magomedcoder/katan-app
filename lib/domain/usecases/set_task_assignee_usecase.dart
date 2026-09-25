import 'package:katan/domain/repositories/task_repository.dart';

class SetTaskAssigneeUseCase {
  const SetTaskAssigneeUseCase(this._repository);

  final TaskRepository _repository;

  Future<void> call({
    required int taskId,
    required int assigneeId,
  }) => _repository.setTaskAssignee(taskId: taskId, assigneeId: assigneeId);
}
