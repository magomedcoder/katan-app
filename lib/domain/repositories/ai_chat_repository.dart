import 'package:katan/domain/entities/ai_chat.dart';

abstract class AiChatRepository {
  Future<AiChatStatus> getStatus();

  Future<List<AiChatSession>> getSessions();

  Future<AiChatSession> createSession({
    String title = '',
    String systemPrompt = '',
    String templateId = '',
    AiChatMapContext? mapContext,
  });

  Future<void> deleteSession(int sessionId);

  Future<List<AiChatMessage>> getMessages(int sessionId);

  Future<AiChatStreamHandle> sendMessage({
    required int sessionId,
    required String userMessage,
    List<int> attachmentFileIds = const [],
    AiChatMapContext? mapContext,
  });
}

class AiChatStreamHandle {
  AiChatStreamHandle({
    required this.chunks,
    required this.cancel,
  });

  final Stream<AiChatChunk> chunks;
  final Future<void> Function() cancel;
}
