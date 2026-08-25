import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart';

abstract class TaskRepository {
  Future<PagedResult<TaskSummary>> getTasks({
    required int page,
    required int limit,
    String query = '',
    int? projectId,
    String status = '',
  });

  Future<TaskDetail> getTask(int id);

  Future<List<TaskComment>> getTaskComments(int taskId);

  Future<TaskComment> addTaskComment({
    required int taskId,
    required String content,
  });

  Future<TaskDetail> createTask({
    required String title,
    required String description,
    int? projectId,
  });

  Future<TaskDetail> appendTaskDescription({
    required int taskId,
    required String text,
  });
}
