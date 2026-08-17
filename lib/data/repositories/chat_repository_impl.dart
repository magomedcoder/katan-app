import 'package:katan/data/data_sources/remote/chat_remote_datasource.dart';
import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl(this._remote);

  final ChatRemoteDataSource _remote;

  @override
  Future<List<ChatRoom>> listRooms() => _remote.listRooms();

  @override
  Future<ChatRoom> getRoom(int roomId) => _remote.getRoom(roomId);

  @override
  Future<List<ChatMessage>> listMessages({
    required int roomId,
    int beforeId = 0,
    int limit = 50,
  }) => _remote.listMessages(
    roomId: roomId,
    beforeId: beforeId,
    limit: limit,
  );

  @override
  Future<ChatMessage> sendMessage({
    required int roomId,
    required String body,
    int replyToId = 0,
    bool hasMedia = false,
  }) => _remote.sendMessage(
    roomId: roomId,
    body: body,
    replyToId: replyToId,
    hasMedia: hasMedia,
  );

  @override
  Future<void> markRead({
    required int roomId,
    required int messageId,
  }) => _remote.markRead(roomId: roomId, messageId: messageId);

  @override
  Future<ChatUnreadCounts> getUnreadCounts() => _remote.getUnreadCounts();
}
