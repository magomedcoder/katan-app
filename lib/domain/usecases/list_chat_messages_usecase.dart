import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class ListChatMessagesUseCase {
  const ListChatMessagesUseCase(this._repository);

  final ChatRepository _repository;

  Future<List<ChatMessage>> call({
    required int roomId,
    int beforeId = 0,
    int limit = 50,
  }) => _repository.listMessages(
    roomId: roomId,
    beforeId: beforeId,
    limit: limit,
  );
}
