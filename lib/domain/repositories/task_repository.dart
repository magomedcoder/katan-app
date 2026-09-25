import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart';
import 'package:katan/domain/entities/task_history_entry.dart';
import 'package:katan/domain/entities/task_tag.dart';

abstract class TaskRepository {
  Future<PagedResult<TaskSummary>> getTasks({
    required int page,
    required int limit,
    String query = '',
    int? projectId,
    String status = '',
    int? parentId,
    int? objectType,
    int? objectId,
  });

  Future<TaskDetail> getTask(int id);

  Future<List<TaskComment>> getTaskComments(int taskId);

  Future<TaskComment> addTaskComment({
    required int taskId,
    required String content,
  });

  Future<void> deleteTaskComment(int commentId);

  Future<List<TaskHistoryEntry>> getTaskHistory(int taskId);

  Future<TaskDetail> createTask({
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
  });

  Future<TaskDetail> updateTask({
    required int taskId,
    required String title,
    required String description,
    DateTime? dueAt,
    int storyPoints = 0,
  });

  Future<void> deleteTask(int taskId);

  Future<TaskWorkflowResult> runTaskWorkflowAction({
    required int taskId,
    required String action,
  });

  Future<void> setTaskAssignee({
    required int taskId,
    required int assigneeId,
  });

  Future<void> setTaskObservers({
    required int taskId,
    required List<int> observerIds,
  });

  Future<void> setTaskTags({
    required int taskId,
    required List<int> tagIds,
  });

  Future<List<TaskLabel>> getTaskLabels({int projectId = 0});

  Future<TaskLabel> createTaskLabel({
    required String name,
    String color = '#409eff',
    int projectId = 0,
  });

  Future<void> deleteTaskLabel(int labelId);

  Future<TaskDetail> appendTaskDescription({
    required int taskId,
    required String text,
  });
}
