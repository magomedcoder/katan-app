import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';

class GetAiChatSessionFileUseCase {
  const GetAiChatSessionFileUseCase(this._repository);

  final AiChatRepository _repository;

  Future<AiChatSessionFile> call({
    required int sessionId,
    required int fileId,
  }) => _repository.getSessionFile(
      sessionId: sessionId,
      fileId: fileId
  );
}
