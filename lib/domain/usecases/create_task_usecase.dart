import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/repositories/task_repository.dart';

class CreateTaskUseCase {
  const CreateTaskUseCase(this._repository);

  final TaskRepository _repository;

  Future<TaskDetail> call({
    required String title,
    required String description,
    int? projectId,
    int? assigneeId,
    int? columnId,
    int? parentId,
    DateTime? dueAt,
    int storyPoints = 0,
    int objectType = 0,
    int? objectId,
  }) => _repository.createTask(
    title: title,
    description: description,
    projectId: projectId,
    assigneeId: assigneeId,
    columnId: columnId,
    parentId: parentId,
    dueAt: dueAt,
    storyPoints: storyPoints,
    objectType: objectType,
    objectId: objectId,
  );
}
