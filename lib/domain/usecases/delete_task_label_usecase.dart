import 'package:katan/domain/repositories/task_repository.dart';

class DeleteTaskLabelUseCase {
  const DeleteTaskLabelUseCase(this._repository);

  final TaskRepository _repository;

  Future<void> call(int labelId) => _repository.deleteTaskLabel(labelId);
}
