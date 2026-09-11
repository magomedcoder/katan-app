import 'package:katan/domain/entities/chat.dart';

abstract class ChatRepository {
  Future<List<ChatRoom>> listRooms();

  Future<ChatRoom> getRoom(int roomId);

  Future<List<ChatMessage>> listMessages({
    required int roomId,
    int beforeId = 0,
    int limit = 50,
  });

  Future<ChatMessage> sendMessage({
    required int roomId,
    required String body,
    int replyToId = 0,
    bool hasMedia = false,
  });

  Future<void> markRead({
    required int roomId,
    required int messageId,
  });

  Future<ChatUnreadCounts> getUnreadCounts();

  Future<ChatSearchResult> search({
    required String query,
    int limit = 30,
  });

  Future<ChatRoom> createDirect(int userId);

  Future<ChatRoom> createGroup({
    required String title,
    required List<int> userIds,
  });

  Future<ChatRoom> updateGroup({
    required int roomId,
    required String title,
  });

  Future<ChatRoom> addMembers({
    required int roomId,
    required List<int> userIds,
  });

  Future<void> removeMember({
    required int roomId,
    required int userId,
  });

  Future<void> leaveRoom(int roomId);

  Future<ChatMessage> editMessage({
    required int messageId,
    required String body,
  });

  Future<void> deleteMessage(int messageId);

  Future<ChatMessage> refreshMessage(int messageId);

  Future<ChatAttachment> uploadMessageAttachment({
    required int messageId,
    required String filename,
    required String mimeType,
    required List<int> bytes,
  });

  String attachmentViewUrl(String fileId);

  String attachmentDownloadUrl(String fileId);
}
