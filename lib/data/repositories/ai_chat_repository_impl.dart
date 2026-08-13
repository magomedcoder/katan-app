import 'package:katan/data/data_sources/remote/ai_chat_remote_datasource.dart';
import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';

class AiChatRepositoryImpl implements AiChatRepository {
  AiChatRepositoryImpl(this._remote);

  final AiChatRemoteDataSource _remote;

  @override
  Future<AiChatStatus> getStatus() => _remote.getStatus();

  @override
  Future<List<AiChatSession>> getSessions() => _remote.getSessions();

  @override
  Future<AiChatSession> createSession({
    String title = '',
    String systemPrompt = '',
    String templateId = '',
    AiChatMapContext? mapContext,
  }) => _remote.createSession(
    title: title,
    systemPrompt: systemPrompt,
    templateId: templateId,
    mapContext: mapContext,
  );

  @override
  Future<void> deleteSession(int sessionId) => _remote.deleteSession(sessionId);

  @override
  Future<AiChatSession> updateSessionTitle({
    required int sessionId,
    required String title,
  }) => _remote.updateSessionTitle(sessionId: sessionId, title: title);

  @override
  Future<AiChatSession> updateSessionSystemPrompt({
    required int sessionId,
    required String systemPrompt,
  }) => _remote.updateSessionSystemPrompt(
    sessionId: sessionId,
    systemPrompt: systemPrompt,
  );

  @override
  Future<AiChatSession> forkSession(int sessionId) => _remote.forkSession(sessionId);

  @override
  Future<List<AiChatMessage>> getMessages(int sessionId) => _remote.getMessages(sessionId);

  @override
  Future<int> listAssistantRegenerationCount({
    required int sessionId,
    required int assistantMessageId,
  }) => _remote.listAssistantRegenerationCount(
    sessionId: sessionId,
    assistantMessageId: assistantMessageId,
  );

  @override
  Future<List<AiChatMessage>> getMessagesAtAssistantVersion({
    required int sessionId,
    required int assistantMessageId,
    required int versionIndex,
  }) => _remote.getMessagesAtAssistantVersion(
    sessionId: sessionId,
    assistantMessageId: assistantMessageId,
    versionIndex: versionIndex,
  );

  @override
  Future<AiChatStreamHandle> sendMessage({
    required int sessionId,
    required String userMessage,
    List<int> attachmentFileIds = const [],
    AiChatMapContext? mapContext,
  }) => _remote.sendMessage(
    sessionId: sessionId,
    userMessage: userMessage,
    attachmentFileIds: attachmentFileIds,
    mapContext: mapContext,
  );

  @override
  Future<AiChatStreamHandle> regenerateAssistant({
    required int sessionId,
    required int assistantMessageId,
  }) => _remote.regenerateAssistant(
    sessionId: sessionId,
    assistantMessageId: assistantMessageId,
  );

  @override
  Future<AiChatStreamHandle> continueAssistant({
    required int sessionId,
    required int assistantMessageId,
  }) => _remote.continueAssistant(
    sessionId: sessionId,
    assistantMessageId: assistantMessageId,
  );

  @override
  Future<AiChatStreamHandle> editUserMessageAndContinue({
    required int sessionId,
    required int userMessageId,
    required String newContent,
  }) => _remote.editUserMessageAndContinue(
    sessionId: sessionId,
    userMessageId: userMessageId,
    newContent: newContent,
  );
}
