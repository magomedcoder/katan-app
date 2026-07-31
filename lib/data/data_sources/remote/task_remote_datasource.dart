import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/data/mappers/entity_mappers.dart';
import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart' as domain;
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
