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

  Future<AiChatSession> updateSessionTitle({
    required int sessionId,
    required String title,
  });

  Future<AiChatSession> updateSessionSystemPrompt({
    required int sessionId,
    required String systemPrompt,
  });

  Future<AiChatSession> forkSession(int sessionId);

  Future<List<AiChatMessage>> getMessages(int sessionId);

  Future<int> listAssistantRegenerationCount({
    required int sessionId,
    required int assistantMessageId,
  });

  Future<List<AiChatMessage>> getMessagesAtAssistantVersion({
    required int sessionId,
    required int assistantMessageId,
    required int versionIndex,
  });

  Future<AiChatStreamHandle> sendMessage({
    required int sessionId,
    required String userMessage,
    List<int> attachmentFileIds = const [],
    AiChatMapContext? mapContext,
  });

  Future<AiChatStreamHandle> regenerateAssistant({
    required int sessionId,
    required int assistantMessageId,
  });

  Future<AiChatStreamHandle> continueAssistant({
    required int sessionId,
    required int assistantMessageId,
  });

  Future<AiChatStreamHandle> editUserMessageAndContinue({
    required int sessionId,
    required int userMessageId,
    required String newContent,
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
