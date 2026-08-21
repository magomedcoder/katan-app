import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';

class PutAiChatSessionFileUseCase {
  const PutAiChatSessionFileUseCase(this._repository);

  final AiChatRepository _repository;

  Future<AiChatPendingAttachment> call({
    required int sessionId,
    required String filename,
    required List<int> content,
  }) => _repository.putSessionFile(
    sessionId: sessionId,
    filename: filename,
    content: content,
  );
}
