import 'package:katan/domain/repositories/project_repository.dart';

class MoveTaskUseCase {
  const MoveTaskUseCase(this._repository);

  final ProjectRepository _repository;

  Future<void> call({
    required int taskId,
    required int columnId,
    int position = 0,
  }) => _repository.moveTask(
    taskId: taskId,
    columnId: columnId,
    position: position,
  );
}
