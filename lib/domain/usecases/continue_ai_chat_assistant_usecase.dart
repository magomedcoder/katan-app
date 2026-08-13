import 'package:katan/domain/repositories/ai_chat_repository.dart';

class ContinueAiChatAssistantUseCase {
  const ContinueAiChatAssistantUseCase(this._repository);

  final AiChatRepository _repository;

  Future<AiChatStreamHandle> call({
    required int sessionId,
    required int assistantMessageId,
  }) => _repository.continueAssistant(
    sessionId: sessionId,
    assistantMessageId: assistantMessageId,
  );
}
