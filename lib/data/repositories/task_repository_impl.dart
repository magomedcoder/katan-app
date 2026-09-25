import 'package:katan/data/data_sources/remote/task_remote_datasource.dart';
import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart';
import 'package:katan/domain/entities/task_history_entry.dart';
import 'package:katan/domain/entities/task_tag.dart';
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
    String status = '',
    int? parentId,
    int? objectType,
    int? objectId,
  }) => _remote.getTasks(
    page: page,
    limit: limit,
    query: query,
    projectId: projectId,
    status: status,
    parentId: parentId,
    objectType: objectType,
    objectId: objectId,
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

  @override
  Future<void> deleteTaskComment(int commentId) => _remote.deleteTaskComment(commentId);

  @override
  Future<List<TaskHistoryEntry>> getTaskHistory(int taskId) => _remote.getTaskHistory(taskId);

  @override
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
  }) => _remote.createTask(
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

  @override
  Future<TaskDetail> updateTask({
    required int taskId,
    required String title,
    required String description,
    DateTime? dueAt,
    int storyPoints = 0,
  }) => _remote.updateTask(
    taskId: taskId,
    title: title,
    description: description,
    dueAt: dueAt,
    storyPoints: storyPoints,
  );

  @override
  Future<void> deleteTask(int taskId) => _remote.deleteTask(taskId);

  @override
  Future<TaskWorkflowResult> runTaskWorkflowAction({
    required int taskId,
    required String action,
  }) => _remote.runTaskWorkflowAction(taskId: taskId, action: action);

  @override
  Future<void> setTaskAssignee({
    required int taskId,
    required int assigneeId,
  }) => _remote.setTaskAssignee(taskId: taskId, assigneeId: assigneeId);

  @override
  Future<void> setTaskObservers({
    required int taskId,
    required List<int> observerIds,
  }) => _remote.setTaskObservers(taskId: taskId, observerIds: observerIds);

  @override
  Future<void> setTaskTags({
    required int taskId,
    required List<int> tagIds,
  }) => _remote.setTaskTags(taskId: taskId, tagIds: tagIds);

  @override
  Future<List<TaskLabel>> getTaskLabels({int projectId = 0}) => _remote.getTaskLabels(projectId: projectId);

  @override
  Future<TaskLabel> createTaskLabel({
    required String name,
    String color = '#409eff',
    int projectId = 0,
  }) => _remote.createTaskLabel(name: name, color: color, projectId: projectId);

  @override
  Future<void> deleteTaskLabel(int labelId) => _remote.deleteTaskLabel(labelId);

  @override
  Future<TaskDetail> appendTaskDescription({
    required int taskId,
    required String text,
  }) => _remote.appendTaskDescription(taskId: taskId, text: text);
}
