import 'package:katan/domain/repositories/task_repository.dart';

class SetTaskTagsUseCase {
  const SetTaskTagsUseCase(this._repository);

  final TaskRepository _repository;

  Future<void> call({
    required int taskId,
    required List<int> tagIds,
  }) => _repository.setTaskTags(taskId: taskId, tagIds: tagIds);
}
