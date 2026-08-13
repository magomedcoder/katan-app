import 'package:katan/domain/repositories/ai_chat_repository.dart';

class ListAiChatAssistantRegenerationsUseCase {
  const ListAiChatAssistantRegenerationsUseCase(this._repository);

  final AiChatRepository _repository;

  Future<int> call({
    required int sessionId,
    required int assistantMessageId,
  }) => _repository.listAssistantRegenerationCount(
    sessionId: sessionId,
    assistantMessageId: assistantMessageId,
  );
}
