import 'package:katan/data/data_sources/remote/task_remote_datasource.dart';
import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart';
import 'package:katan/domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  TaskRepositoryImpl(this._remote);

  final TaskRemoteDataSource _remote;

  @override
  Future<PagedResult<TaskSummary>> getTasks({
    required int page,
    required int limit,
    String query = '',
    int? projectId,
  }) => _remote.getTasks(
    page: page,
    limit: limit,
    query: query,
    projectId: projectId,
  );

  @override
  Future<TaskDetail> getTask(int id) => _remote.getTask(id);

  @override
  Future<List<TaskComment>> getTaskComments(int taskId) => _remote.getTaskComments(taskId);

  @override
  Future<TaskComment> addTaskComment({
    required int taskId,
    required String content,
  }) => _remote.addTaskComment(taskId: taskId, content: content);
}
