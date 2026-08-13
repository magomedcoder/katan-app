import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';

class ForkAiChatSessionUseCase {
  const ForkAiChatSessionUseCase(this._repository);

  final AiChatRepository _repository;

  Future<AiChatSession> call(int sessionId) => _repository.forkSession(sessionId);
}
