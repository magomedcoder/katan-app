import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';

class GetAiChatStatusUseCase {
  const GetAiChatStatusUseCase(this._repository);

  final AiChatRepository _repository;

  Future<AiChatStatus> call() => _repository.getStatus();
}
