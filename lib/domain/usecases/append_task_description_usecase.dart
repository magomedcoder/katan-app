import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/repositories/task_repository.dart';

class AppendTaskDescriptionUseCase {
  const AppendTaskDescriptionUseCase(this._repository);

  final TaskRepository _repository;

  Future<TaskDetail> call({
    required int taskId,
    required String text,
  }) => _repository.appendTaskDescription(
      taskId: taskId,
      text: text
  );
}
