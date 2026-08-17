import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/data/mappers/chat_mappers.dart';
import 'package:katan/domain/entities/chat.dart' as domain;
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
