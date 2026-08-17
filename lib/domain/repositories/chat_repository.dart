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
}
