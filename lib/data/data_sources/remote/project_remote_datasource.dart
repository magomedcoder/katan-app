import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/data/mappers/entity_mappers.dart';
import 'package:katan/domain/entities/kanban.dart';
import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/project.dart' as domain;
import 'package:katan/generated/pb/common.pb.dart';
import 'package:katan/generated/pb/project.pbgrpc.dart';

class ProjectRemoteDataSource {
  ProjectRemoteDataSource(this._factory, this._storage);

  final GrpcClientFactory _factory;
  final SessionStorage _storage;

  Future<PagedResult<domain.ProjectSummary>> getProjects({
    required int page,
    required int limit,
    String query = '',
  }) async {
    try {
      final client = await _client();
      final response = await client.getProjects(
        GetProjectsRequest(
          pagination: Pagination(
            page: Int64(page),
            limit: Int64(limit),
          ),
          query: query,
        ),
        options: await _authOptions(),
      );

      return PagedResult(
        items: response.items.map(mapProjectSummary).toList(),
        total: response.total.toInt(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить проекты');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.ProjectSummary> getProject(int id) async {
    try {
      final client = await _client();
      final response = await client.getProject(
        GetProjectRequest(id: Int64(id)),
        options: await _authOptions(),
      );
      return mapProjectSummary(response.project);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить проект');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<ProjectKanban> getProjectKanban(int projectId) async {
    try {
      final client = await _client();
      final response = await client.getProjectKanban(
        GetProjectKanbanRequest(projectId: Int64(projectId)),
        options: await _authOptions(),
      );

      final columns = response.columns.map(mapKanbanColumn).toList()..sort((a, b) => a.sortOrder.compareTo(b.sortOrder));

      return ProjectKanban(
        project: mapProjectSummary(response.project),
        columns: columns,
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить канбан');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> moveTask({
    required int taskId,
    required int columnId,
    int position = 0,
  }) async {
    try {
      final client = await _client();
      await client.moveTask(
        MoveTaskRequest(
          taskId: Int64(taskId),
          columnId: Int64(columnId),
          position: position,
        ),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось переместить задачу');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<List<domain.ProjectMember>> getProjectMembers(int projectId) async {
    try {
      final client = await _client();
      final response = await client.getProjectMembers(
        GetProjectMembersRequest(projectId: Int64(projectId)),
        options: await _authOptions(),
      );
      return response.items.map(mapProjectMember).toList();
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить участников');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> setProjectMembers({
    required int projectId,
    required List<domain.ProjectMemberInput> members,
  }) async {
    try {
      final client = await _client();
      await client.setProjectMembers(
        SetProjectMembersRequest(
          projectId: Int64(projectId),
          members: members.map((member) => ProjectMemberInput(
            userId: Int64(member.userId),
            role: member.role,
          )),
        ),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось сохранить участников');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<int> createProject({
    required String title,
    required String description,
    int storyPoints = 0,
    List<domain.ProjectMemberInput> members = const [],
  }) async {
    try {
      final client = await _client();
      final response = await client.createProject(
        CreateProjectRequest(
          title: title,
          description: description,
          storyPoints: storyPoints,
          members: members.map((member) => ProjectMemberInput(
            userId: Int64(member.userId),
            role: member.role,
          )),
        ),
        options: await _authOptions(),
      );
      return response.id.toInt();
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось создать проект');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> closeProject(int id) async {
    try {
      final client = await _client();
      await client.closeProject(
        CloseProjectRequest(id: Int64(id)),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось закрыть проект');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> deleteProject(int id) async {
    try {
      final client = await _client();
      await client.deleteProject(
        DeleteProjectRequest(id: Int64(id)),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось удалить проект');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<ProjectServiceClient> _client() async {
    await _requireToken();
    final channel = _factory.requireChannel();
    return ProjectServiceClient(channel);
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
