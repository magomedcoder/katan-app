import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';

class SendAiChatMessageUseCase {
  const SendAiChatMessageUseCase(this._repository);

  final AiChatRepository _repository;

  Future<AiChatStreamHandle> call({
    required int sessionId,
    required String userMessage,
    List<int> attachmentFileIds = const [],
    AiChatMapContext? mapContext,
  }) => _repository.sendMessage(
    sessionId: sessionId,
    userMessage: userMessage,
    attachmentFileIds: attachmentFileIds,
    mapContext: mapContext,
  );
}
