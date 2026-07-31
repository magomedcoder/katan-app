import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart';

abstract class TaskRepository {
  Future<PagedResult<TaskSummary>> getTasks({
    required int page,
    required int limit,
    String query = '',
    int? projectId,
  });

  Future<TaskDetail> getTask(int id);

  Future<List<TaskComment>> getTaskComments(int taskId);

  Future<TaskComment> addTaskComment({
    required int taskId,
    required String content,
  });
}
