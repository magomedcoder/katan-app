import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/repositories/task_repository.dart';

class GetTasksUseCase {
  const GetTasksUseCase(this._repository);

  final TaskRepository _repository;

  Future<PagedResult<TaskSummary>> call({
    required int page,
    int limit = 20,
    String query = '',
    int? projectId,
  }) => _repository.getTasks(
    page: page,
    limit: limit,
    query: query,
    projectId: projectId,
  );
}
