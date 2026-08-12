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
  Future<List<AiChatMessage>> getMessages(int sessionId) => _remote.getMessages(sessionId);

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
}
