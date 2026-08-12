import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';

class CreateAiChatSessionUseCase {
  const CreateAiChatSessionUseCase(this._repository);

  final AiChatRepository _repository;

  Future<AiChatSession> call({
    String title = '',
    String systemPrompt = '',
    String templateId = '',
    AiChatMapContext? mapContext,
  }) => _repository.createSession(
    title: title,
    systemPrompt: systemPrompt,
    templateId: templateId,
    mapContext: mapContext,
  );
}
