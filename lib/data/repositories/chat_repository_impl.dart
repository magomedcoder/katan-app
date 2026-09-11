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

  @override
  Future<ChatSearchResult> search({
    required String query,
    int limit = 30,
  }) => _remote.search(query: query, limit: limit);

  @override
  Future<ChatRoom> createDirect(int userId) => _remote.createDirect(userId);

  @override
  Future<ChatRoom> createGroup({
    required String title,
    required List<int> userIds,
  }) => _remote.createGroup(title: title, userIds: userIds);

  @override
  Future<ChatRoom> updateGroup({
    required int roomId,
    required String title,
  }) => _remote.updateGroup(roomId: roomId, title: title);

  @override
  Future<ChatRoom> addMembers({
    required int roomId,
    required List<int> userIds,
  }) => _remote.addMembers(roomId: roomId, userIds: userIds);

  @override
  Future<void> removeMember({
    required int roomId,
    required int userId,
  }) => _remote.removeMember(roomId: roomId, userId: userId);

  @override
  Future<void> leaveRoom(int roomId) => _remote.leaveRoom(roomId);

  @override
  Future<ChatMessage> editMessage({
    required int messageId,
    required String body,
  }) => _remote.editMessage(messageId: messageId, body: body);

  @override
  Future<void> deleteMessage(int messageId) => _remote.deleteMessage(messageId);

  @override
  Future<ChatMessage> refreshMessage(int messageId) => _remote.refreshMessage(messageId);

  @override
  Future<ChatAttachment> uploadMessageAttachment({
    required int messageId,
    required String filename,
    required String mimeType,
    required List<int> bytes,
  }) => _remote.uploadMessageAttachment(
    messageId: messageId,
    filename: filename,
    mimeType: mimeType,
    bytes: bytes,
  );

  @override
  String attachmentViewUrl(String fileId) => _remote.attachmentViewUrl(fileId);

  @override
  String attachmentDownloadUrl(String fileId) => _remote.attachmentDownloadUrl(fileId);
}
