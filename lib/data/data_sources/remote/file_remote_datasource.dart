import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:http/http.dart' as http;
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/data/mappers/entity_mappers.dart';
import 'package:katan/domain/entities/file_attachment.dart';
import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/repositories/file_repository.dart';
import 'package:katan/generated/pb/common.pb.dart';
import 'package:katan/generated/pb/file.pbgrpc.dart';

class FileRemoteDataSource {
  FileRemoteDataSource(this._factory, this._storage);

  final GrpcClientFactory _factory;
  final SessionStorage _storage;

  Future<PagedResult<FileAttachment>> getFiles({
    required FileObjectType objectType,
    required int objectId,
    int page = 1,
    int limit = 50,
  }) async {
    try {
      final client = await _client();
      final request = GetFilesRequest(
        pagination: Pagination(
          page: Int64(page),
          limit: Int64(limit),
        ),
      );
      switch (objectType) {
        case FileObjectType.task:
          request.task = TaskFile(id: Int64(objectId));
        case FileObjectType.taskComment:
          request.taskComment = TaskCommentFile(id: Int64(objectId));
      }

      final response = await client.getFiles(
        request,
        options: await _authOptions(),
      );

      return PagedResult(
        items: response.items.map(mapFileAttachment).toList(),
        total: response.total.toInt(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить файлы');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> uploadFile({
    required FileObjectType objectType,
    required int objectId,
    required String fileName,
    required Uint8List bytes,
  }) async {
    try {
      final token = await _requireToken();
      final base = _httpBaseUrl();
      final uri = Uri.parse('$base/upload');
      final request = http.MultipartRequest('POST', uri)
        ..headers['Authorization'] = token
        ..fields['type'] = switch (objectType) {
          FileObjectType.task => 'task',
          FileObjectType.taskComment => 'task_comment',
        }
        ..fields['id'] = objectId.toString()
        ..files.add(
          http.MultipartFile.fromBytes(
            'file',
            bytes,
            filename: fileName,
          ),
        );

      final streamed = await request.send().timeout(const Duration(seconds: 60));
      final response = await http.Response.fromStream(streamed);
      if (response.statusCode == 401 || response.statusCode == 403) {
        throw const AuthFailure('Сессия истекла');
      }

      if (response.statusCode < 200 || response.statusCode >= 300) {
        throw ServerFailure('Не удалось загрузить файл (${response.statusCode})');
      }
    } on Failure {
      rethrow;
    } catch (e) {
      if (e is Failure) rethrow;
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> deleteFile({
    required FileObjectType objectType,
    required int attachmentId,
  }) async {
    try {
      final client = await _client();
      final request = DeleteFileRequest();
      switch (objectType) {
        case FileObjectType.task:
          request.task = TaskFile(id: Int64(attachmentId));
        case FileObjectType.taskComment:
          request.taskComment = TaskCommentFile(id: Int64(attachmentId));
      }

      await client.deleteFile(
        request,
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось удалить файл');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  String downloadUrl(String fileUrl) => '${_httpBaseUrl()}/uploads/download/$fileUrl';

  String viewUrl(String fileUrl) => '${_httpBaseUrl()}/uploads/view/$fileUrl';

  String _httpBaseUrl() {
    final host = _storage.host;
    if (host == null || host.isEmpty) {
      throw const AuthFailure('Хост не сохранён');
    }

    final endpoint = HostEndpoint.parse(host);
    final scheme = endpoint.useTls ? 'https' : 'http';
    final defaultPort = endpoint.useTls ? 443 : 80;
    if (endpoint.port == defaultPort) {
      return '$scheme://${endpoint.host}';
    }

    return '$scheme://${endpoint.host}:${endpoint.port}';
  }

  Future<FileServiceClient> _client() async {
    await _requireToken();
    final channel = _factory.requireChannel();
    return FileServiceClient(channel);
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
