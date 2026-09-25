import 'package:katan/domain/repositories/task_repository.dart';

class SetTaskObserversUseCase {
  const SetTaskObserversUseCase(this._repository);

  final TaskRepository _repository;

  Future<void> call({
    required int taskId,
    required List<int> observerIds,
  }) => _repository.setTaskObservers(taskId: taskId, observerIds: observerIds);
}
