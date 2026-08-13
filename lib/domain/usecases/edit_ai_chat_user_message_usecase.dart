import 'package:katan/domain/repositories/ai_chat_repository.dart';

class EditAiChatUserMessageUseCase {
  const EditAiChatUserMessageUseCase(this._repository);

  final AiChatRepository _repository;

  Future<AiChatStreamHandle> call({
    required int sessionId,
    required int userMessageId,
    required String newContent,
  }) => _repository.editUserMessageAndContinue(
    sessionId: sessionId,
    userMessageId: userMessageId,
    newContent: newContent,
  );
}
