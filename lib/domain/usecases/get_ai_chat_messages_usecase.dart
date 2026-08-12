import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';

class GetAiChatMessagesUseCase {
  const GetAiChatMessagesUseCase(this._repository);

  final AiChatRepository _repository;

  Future<List<AiChatMessage>> call(int sessionId) => _repository.getMessages(sessionId);
}
