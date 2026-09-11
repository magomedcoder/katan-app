import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class EditChatMessageUseCase {
  const EditChatMessageUseCase(this._repository);

  final ChatRepository _repository;

  Future<ChatMessage> call({
    required int messageId,
    required String body,
  }) => _repository.editMessage(messageId: messageId, body: body);
}
