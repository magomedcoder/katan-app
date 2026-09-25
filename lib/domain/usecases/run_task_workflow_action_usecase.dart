import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/repositories/task_repository.dart';

abstract final class TaskWorkflowActions {
  static const start = 'start';
  static const pause = 'pause';
  static const complete = 'complete';
  static const postpone = 'postpone';
  static const reopen = 'reopen';
}

class RunTaskWorkflowActionUseCase {
  const RunTaskWorkflowActionUseCase(this._repository);

  final TaskRepository _repository;

  Future<TaskWorkflowResult> call({
    required int taskId,
    required String action,
  }) => _repository.runTaskWorkflowAction(taskId: taskId, action: action);
}
