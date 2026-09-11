import 'package:katan/domain/repositories/chat_repository.dart';

class DeleteChatMessageUseCase {
  const DeleteChatMessageUseCase(this._repository);

  final ChatRepository _repository;

  Future<void> call(int messageId) => _repository.deleteMessage(messageId);
}
