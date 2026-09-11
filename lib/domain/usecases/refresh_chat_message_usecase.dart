import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class RefreshChatMessageUseCase {
  const RefreshChatMessageUseCase(this._repository);

  final ChatRepository _repository;

  Future<ChatMessage> call(int messageId) => _repository.refreshMessage(messageId);
}
