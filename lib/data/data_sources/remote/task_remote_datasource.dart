import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/data/mappers/entity_mappers.dart';
import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart' as domain;
import 'package:katan/domain/entities/task_history_entry.dart';
import 'package:katan/domain/entities/task_tag.dart';
import 'package:katan/generated/pb/common.pb.dart';
import 'package:katan/generated/pb/task.pbgrpc.dart';

class TaskRemoteDataSource {
  TaskRemoteDataSource(this._factory, this._storage);

  final GrpcClientFactory _factory;
  final SessionStorage _storage;

  Future<PagedResult<TaskSummary>> getTasks({
    required int page,
    required int limit,
    String query = '',
    int? projectId,
    String status = '',
    int? parentId,
    int? objectType,
    int? objectId,
  }) async {
    try {
      final client = await _client();
      final response = await client.getTasks(
        GetTasksRequest(
          pagination: Pagination(
            page: Int64(page),
            limit: Int64(limit),
          ),
          query: query,
          projectId: projectId != null ? Int64(projectId) : Int64.ZERO,
          status: status,
          parentId: parentId != null ? Int64(parentId) : Int64.ZERO,
          objectType: objectType ?? 0,
          objectId: objectId != null ? Int64(objectId) : Int64.ZERO,
        ),
        options: await _authOptions(),
      );

      return PagedResult(
        items: response.items.map(mapTaskSummary).toList(),
        total: response.total.toInt(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить задачи');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<TaskDetail> getTask(int id) async {
    try {
      final client = await _client();
      final response = await client.getTask(
        GetTaskRequest(id: Int64(id)),
        options: await _authOptions(),
      );
      return mapTaskDetail(response.task);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить задачу');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<List<domain.TaskComment>> getTaskComments(int taskId) async {
    try {
      final client = await _client();
      final response = await client.getTaskComments(
        GetTaskCommentsRequest(taskId: Int64(taskId)),
        options: await _authOptions(),
      );
      return response.items.map(mapTaskComment).toList();
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить комментарии');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.TaskComment> addTaskComment({
    required int taskId,
    required String content,
  }) async {
    try {
      final client = await _client();
      final response = await client.addTaskComment(
        AddTaskCommentRequest(
          taskId: Int64(taskId),
          content: content,
        ),
        options: await _authOptions(),
      );
      return mapTaskComment(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось добавить комментарий');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> deleteTaskComment(int commentId) async {
    try {
      final client = await _client();
      await client.deleteTaskComment(
        DeleteTaskCommentRequest(id: Int64(commentId)),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось удалить комментарий');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<List<TaskHistoryEntry>> getTaskHistory(int taskId) async {
    try {
      final client = await _client();
      final response = await client.getTaskHistory(
        GetTaskHistoryRequest(taskId: Int64(taskId)),
        options: await _authOptions(),
      );
      return response.items.map(mapTaskHistoryEntry).toList();
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить историю');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

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
  }) async {
    try {
      final client = await _client();
      final response = await client.createTask(
        CreateTaskRequest(
          title: title,
          description: description,
          projectId: projectId != null ? Int64(projectId) : Int64.ZERO,
          assigneeId: assigneeId != null ? Int64(assigneeId) : Int64.ZERO,
          columnId: columnId != null ? Int64(columnId) : Int64.ZERO,
          parentId: parentId != null ? Int64(parentId) : Int64.ZERO,
          dueAt: _toUnix(dueAt),
          storyPoints: storyPoints,
          objectType: objectType,
          objectId: objectId != null ? Int64(objectId) : Int64.ZERO,
        ),
        options: await _authOptions(),
      );
      return getTask(response.id.toInt());
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось создать задачу');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<TaskDetail> updateTask({
    required int taskId,
    required String title,
    required String description,
    DateTime? dueAt,
    int storyPoints = 0,
  }) async {
    try {
      final client = await _client();
      final options = await _authOptions();
      final current = await client.getTask(
        GetTaskRequest(id: Int64(taskId)),
        options: options,
      );
      final task = current.task;

      await client.updateTask(
        UpdateTaskRequest(
          id: task.id,
          title: title,
          description: description,
          creatorId: task.hasCreator() ? task.creator.id : Int64.ZERO,
          assigneeId: task.hasAssignee() ? task.assignee.id : Int64.ZERO,
          observerIds: task.observers.map((user) => user.id),
          columnId: task.columnId,
          dueAt: _toUnix(dueAt),
          tagIds: task.tags.map((tag) => tag.id),
          storyPoints: storyPoints,
        ),
        options: options,
      );

      final refreshed = await client.getTask(
        GetTaskRequest(id: Int64(taskId)),
        options: options,
      );
      return mapTaskDetail(refreshed.task);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось сохранить задачу');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> deleteTask(int taskId) async {
    try {
      final client = await _client();
      await client.deleteTask(
        DeleteTaskRequest(id: Int64(taskId)),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось удалить задачу');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<TaskWorkflowResult> runTaskWorkflowAction({
    required int taskId,
    required String action,
  }) async {
    try {
      final client = await _client();
      final response = await client.runTaskWorkflowAction(
        RunTaskWorkflowActionRequest(
          taskId: Int64(taskId),
          action: action,
        ),
        options: await _authOptions(),
      );
      return TaskWorkflowResult(
        task: mapTaskDetail(response.task),
        changed: response.changed,
        message: response.message,
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось выполнить действие');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> setTaskAssignee({
    required int taskId,
    required int assigneeId,
  }) async {
    try {
      final client = await _client();
      await client.setTaskAssignee(
        SetTaskAssigneeRequest(
          taskId: Int64(taskId),
          assigneeId: Int64(assigneeId),
        ),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось назначить исполнителя');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> setTaskObservers({
    required int taskId,
    required List<int> observerIds,
  }) async {
    try {
      final client = await _client();
      await client.setTaskObservers(
        SetTaskObserversRequest(
          taskId: Int64(taskId),
          observerIds: observerIds.map(Int64.new),
        ),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось сохранить наблюдателей');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> setTaskTags({
    required int taskId,
    required List<int> tagIds,
  }) async {
    try {
      final client = await _client();
      await client.setTaskTags(
        SetTaskTagsRequest(
          taskId: Int64(taskId),
          tagIds: tagIds.map(Int64.new),
        ),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось сохранить теги');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<List<TaskLabel>> getTaskLabels({int projectId = 0}) async {
    try {
      final client = await _client();
      final response = await client.getTaskLabels(
        GetTaskLabelsRequest(projectId: Int64(projectId)),
        options: await _authOptions(),
      );
      return response.items.map(mapTaskLabel).toList();
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить метки');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<TaskLabel> createTaskLabel({
    required String name,
    String color = '#409eff',
    int projectId = 0,
  }) async {
    try {
      final client = await _client();
      final response = await client.createTaskLabel(
        CreateTaskLabelRequest(
          name: name,
          color: color,
          projectId: Int64(projectId),
        ),
        options: await _authOptions(),
      );
      return mapTaskLabel(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось создать метку');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> deleteTaskLabel(int labelId) async {
    try {
      final client = await _client();
      await client.deleteTaskLabel(
        DeleteTaskLabelRequest(id: Int64(labelId)),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось удалить метку');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<TaskDetail> appendTaskDescription({
    required int taskId,
    required String text,
  }) async {
    try {
      final client = await _client();
      final options = await _authOptions();
      final current = await client.getTask(
        GetTaskRequest(id: Int64(taskId)),
        options: options,
      );
      final task = current.task;
      final prev = task.description.trim();
      final merged = prev.isEmpty ? text.trim() : '$prev\n\n---\n\n${text.trim()}';

      await client.updateTask(
        UpdateTaskRequest(
          id: task.id,
          title: task.title,
          description: merged,
          creatorId: task.hasCreator() ? task.creator.id : Int64.ZERO,
          assigneeId: task.hasAssignee() ? task.assignee.id : Int64.ZERO,
          observerIds: task.observers.map((user) => user.id),
          columnId: task.columnId,
          dueAt: task.dueAt,
          tagIds: task.tags.map((tag) => tag.id),
          storyPoints: task.storyPoints,
        ),
        options: options,
      );

      final refreshed = await client.getTask(
        GetTaskRequest(id: Int64(taskId)),
        options: options,
      );
      return mapTaskDetail(refreshed.task);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось обновить описание задачи');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Int64 _toUnix(DateTime? value) {
    if (value == null) {
      return Int64.ZERO;
    }

    return Int64(value.millisecondsSinceEpoch ~/ 1000);
  }

  Future<TaskServiceClient> _client() async {
    await _requireToken();
    final channel = _factory.requireChannel();
    return TaskServiceClient(channel);
  }

  Future<CallOptions> _authOptions() async {
    final token = await _requireToken();
    return _factory.authOptions(token);
  }

  Future<String> _requireToken() async {
    final token = await _storage.accessToken;
    if (token == null || token.isEmpty) {
      throw const AuthFailure('Сессия не найдена');
    }
    return token;
  }

  Failure _mapGrpc(GrpcError e, String fallback) {
    if (e.code == StatusCode.unauthenticated) {
      return AuthFailure(e.message ?? 'Сессия истекла');
    }
    return ServerFailure(e.message ?? fallback);
  }
}
