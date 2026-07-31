import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/data/mappers/entity_mappers.dart';
import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/generated/pb/common.pb.dart';
import 'package:katan/generated/pb/project.pbgrpc.dart';

class ProjectRemoteDataSource {
  ProjectRemoteDataSource(this._factory, this._storage);

  final GrpcClientFactory _factory;
  final SessionStorage _storage;

  Future<PagedResult<ProjectSummary>> getProjects({
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

  Future<ProjectSummary> getProject(int id) async {
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
