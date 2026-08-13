import 'package:katan/domain/repositories/ai_chat_repository.dart';

class RegenerateAiChatAssistantUseCase {
  const RegenerateAiChatAssistantUseCase(this._repository);

  final AiChatRepository _repository;

  Future<AiChatStreamHandle> call({
    required int sessionId,
    required int assistantMessageId,
  }) => _repository.regenerateAssistant(
    sessionId: sessionId,
    assistantMessageId: assistantMessageId,
  );
}
