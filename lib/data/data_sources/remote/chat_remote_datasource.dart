import 'dart:async';
import 'dart:typed_data';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/core/utils/chat_attachments.dart';
import 'package:katan/data/mappers/chat_mappers.dart';
import 'package:katan/data/mappers/entity_mappers.dart';
import 'package:katan/domain/entities/chat.dart' as domain;
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/generated/pb/chat.pbgrpc.dart';

class ChatRemoteDataSource {
  ChatRemoteDataSource(this._factory, this._storage);

  final GrpcClientFactory _factory;
  final SessionStorage _storage;

  Future<List<domain.ChatRoom>> listRooms() async {
    try {
      final client = await _client();
      final response = await client.listRooms(
        ChatListRoomsRequest(),
        options: await _authOptions(),
      );
      return response.rooms.map(mapChatRoom).toList();
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить чаты');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.ChatRoom> getRoom(int roomId) async {
    try {
      final client = await _client();
      final response = await client.getRoom(
        ChatGetRoomRequest(roomId: Int64(roomId)),
        options: await _authOptions(),
      );
      return mapChatRoom(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить комнату');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<List<domain.ChatMessage>> listMessages({
    required int roomId,
    int beforeId = 0,
    int limit = 50,
  }) async {
    try {
      final client = await _client();
      final response = await client.listMessages(
        ChatListMessagesRequest(
          roomId: Int64(roomId),
          beforeId: Int64(beforeId),
          limit: limit,
        ),
        options: await _authOptions(),
      );
      return response.messages.map(mapChatMessage).toList();
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить сообщения');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.ChatMessage> sendMessage({
    required int roomId,
    required String body,
    int replyToId = 0,
    bool hasMedia = false,
  }) async {
    try {
      final client = await _client();
      final response = await client.sendMessage(
        ChatSendMessageRequest(
          roomId: Int64(roomId),
          body: body,
          replyToId: Int64(replyToId),
          hasMedia: hasMedia,
        ),
        options: await _authOptions(),
      );
      return mapChatMessage(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось отправить сообщение');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> markRead({
    required int roomId,
    required int messageId,
  }) async {
    try {
      final client = await _client();
      await client.markRead(
        ChatMarkReadRequest(
          roomId: Int64(roomId),
          messageId: Int64(messageId),
        ),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось отметить сообщения прочитанными');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.ChatUnreadCounts> getUnreadCounts() async {
    try {
      final client = await _client();
      final response = await client.getUnreadCounts(
        ChatGetUnreadCountsRequest(),
        options: await _authOptions(),
      );
      return mapChatUnreadCounts(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить непрочитанные');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.ChatSearchResult> search({
    required String query,
    int limit = 30,
  }) async {
    try {
      final client = await _client();
      final response = await client.search(
        ChatSearchRequest(query: query, limit: limit),
        options: await _authOptions(),
      );
      return domain.ChatSearchResult(
        rooms: response.rooms.map(mapChatRoom).toList(),
        users: response.users.map((user) => mapUser(user) ?? const UserRef(
          id: 0,
          username: '',
          name: '',
          surname: '',
        )).where((user) => user.id > 0).toList(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось выполнить поиск');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.ChatRoom> createDirect(int userId) async {
    try {
      final client = await _client();
      final response = await client.createDirect(
        ChatCreateDirectRequest(userId: Int64(userId)),
        options: await _authOptions(),
      );
      return mapChatRoom(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось создать личный чат');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.ChatRoom> createGroup({
    required String title,
    required List<int> userIds,
  }) async {
    try {
      final client = await _client();
      final response = await client.createGroup(
        ChatCreateGroupRequest(
          title: title,
          userIds: userIds.map(Int64.new),
        ),
        options: await _authOptions(),
      );
      return mapChatRoom(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось создать группу');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.ChatRoom> updateGroup({
    required int roomId,
    required String title,
  }) async {
    try {
      final client = await _client();
      final response = await client.updateGroup(
        ChatUpdateGroupRequest(
          roomId: Int64(roomId),
          title: title,
        ),
        options: await _authOptions(),
      );
      return mapChatRoom(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось обновить группу');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.ChatRoom> addMembers({
    required int roomId,
    required List<int> userIds,
  }) async {
    try {
      final client = await _client();
      final response = await client.addMembers(
        ChatAddMembersRequest(
          roomId: Int64(roomId),
          userIds: userIds.map(Int64.new),
        ),
        options: await _authOptions(),
      );
      return mapChatRoom(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось добавить участников');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> removeMember({
    required int roomId,
    required int userId,
  }) async {
    try {
      final client = await _client();
      await client.removeMember(
        ChatRemoveMemberRequest(
          roomId: Int64(roomId),
          userId: Int64(userId),
        ),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось удалить участника');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> leaveRoom(int roomId) async {
    try {
      final client = await _client();
      await client.leaveRoom(
        ChatLeaveRoomRequest(roomId: Int64(roomId)),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось покинуть чат');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.ChatMessage> editMessage({
    required int messageId,
    required String body,
  }) async {
    try {
      final client = await _client();
      final response = await client.editMessage(
        ChatEditMessageRequest(
          messageId: Int64(messageId),
          body: body,
        ),
        options: await _authOptions(),
      );
      return mapChatMessage(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось изменить сообщение');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> deleteMessage(int messageId) async {
    try {
      final client = await _client();
      await client.deleteMessage(
        ChatDeleteMessageRequest(messageId: Int64(messageId)),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось удалить сообщение');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.ChatMessage> refreshMessage(int messageId) async {
    try {
      final client = await _client();
      final response = await client.refreshMessage(
        ChatRefreshMessageRequest(messageId: Int64(messageId)),
        options: await _authOptions(),
      );
      return mapChatMessage(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось обновить сообщение');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.ChatAttachment> uploadMessageAttachment({
    required int messageId,
    required String filename,
    required String mimeType,
    required List<int> bytes,
  }) async {
    if (!isChatAttachmentFile(name: filename, size: bytes.length)) {
      throw const ServerFailure('Неподдерживаемый тип файла');
    }

    try {
      final client = await _client();
      final response = await client.uploadMessageAttachment(
        _buildUploadStream(
          messageId: messageId,
          filename: filename,
          mimeType: mimeType.isEmpty ? guessMimeType(filename) : mimeType,
          bytes: bytes,
        ),
        options: await _authOptions(),
      );
      if (!response.hasAttachment()) {
        throw const ServerFailure('Пустой ответ загрузки вложения');
      }
      return mapChatAttachment(response.attachment);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить вложение');
    } catch (e) {
      if (e is Failure) rethrow;
      throw NetworkFailure(e.toString());
    }
  }

  Stream<ChatUploadAttachmentChunk> _buildUploadStream({
    required int messageId,
    required String filename,
    required String mimeType,
    required List<int> bytes,
  }) async* {
    yield ChatUploadAttachmentChunk(
      meta: ChatUploadAttachmentMeta(
        messageId: Int64(messageId),
        filename: filename,
        mimeType: mimeType,
        totalSize: Int64(bytes.length),
      ),
    );

    var offset = 0;
    while (offset < bytes.length) {
      final end = (offset + chatUploadChunkSize).clamp(0, bytes.length);
      yield ChatUploadAttachmentChunk(
        chunk: Uint8List.fromList(bytes.sublist(offset, end)),
      );
      offset = end;
    }
  }

  String attachmentViewUrl(String fileId) => '${_httpBaseUrl()}/uploads/view/$fileId';

  String attachmentDownloadUrl(String fileId) => '${_httpBaseUrl()}/uploads/download/$fileId';

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

  Future<ChatServiceClient> _client() async {
    await _requireToken();
    return ChatServiceClient(_factory.requireChannel());
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

    if (e.code == StatusCode.permissionDenied) {
      return ServerFailure(e.message ?? 'Нет доступа к чату');
    }

    return ServerFailure(e.message ?? fallback);
  }
}
