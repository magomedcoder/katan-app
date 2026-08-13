import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';

class UpdateAiChatSessionTitleUseCase {
  const UpdateAiChatSessionTitleUseCase(this._repository);

  final AiChatRepository _repository;

  Future<AiChatSession> call({
    required int sessionId,
    required String title,
  }) => _repository.updateSessionTitle(sessionId: sessionId, title: title);
}
