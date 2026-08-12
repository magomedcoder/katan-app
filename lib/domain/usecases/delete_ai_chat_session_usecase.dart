import 'package:katan/domain/repositories/ai_chat_repository.dart';

class DeleteAiChatSessionUseCase {
  const DeleteAiChatSessionUseCase(this._repository);

  final AiChatRepository _repository;

  Future<void> call(int sessionId) => _repository.deleteSession(sessionId);
}
