import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';

class GetAiChatMessagesAtVersionUseCase {
  const GetAiChatMessagesAtVersionUseCase(this._repository);

  final AiChatRepository _repository;

  Future<List<AiChatMessage>> call({
    required int sessionId,
    required int assistantMessageId,
    required int versionIndex,
  }) => _repository.getMessagesAtAssistantVersion(
    sessionId: sessionId,
    assistantMessageId: assistantMessageId,
    versionIndex: versionIndex,
  );
}
