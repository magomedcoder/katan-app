import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/repositories/task_repository.dart';

class UpdateTaskUseCase {
  const UpdateTaskUseCase(this._repository);

  final TaskRepository _repository;

  Future<TaskDetail> call({
    required int taskId,
    required String title,
    required String description,
    DateTime? dueAt,
    int storyPoints = 0,
  }) => _repository.updateTask(
    taskId: taskId,
    title: title,
    description: description,
    dueAt: dueAt,
    storyPoints: storyPoints,
  );
}
