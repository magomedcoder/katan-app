import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';

class UpdateAiChatSessionSystemPromptUseCase {
  const UpdateAiChatSessionSystemPromptUseCase(this._repository);

  final AiChatRepository _repository;

  Future<AiChatSession> call({
    required int sessionId,
    required String systemPrompt,
  }) => _repository.updateSessionSystemPrompt(
    sessionId: sessionId,
    systemPrompt: systemPrompt,
  );
}
