import 'package:katan/domain/entities/task_history_entry.dart';
import 'package:katan/domain/repositories/task_repository.dart';

class GetTaskHistoryUseCase {
  const GetTaskHistoryUseCase(this._repository);

  final TaskRepository _repository;

  Future<List<TaskHistoryEntry>> call(int taskId) => _repository.getTaskHistory(taskId);
}
