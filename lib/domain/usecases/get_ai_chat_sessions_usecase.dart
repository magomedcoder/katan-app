import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';

class GetAiChatSessionsUseCase {
  const GetAiChatSessionsUseCase(this._repository);

  final AiChatRepository _repository;

  Future<List<AiChatSession>> call() => _repository.getSessions();
}
