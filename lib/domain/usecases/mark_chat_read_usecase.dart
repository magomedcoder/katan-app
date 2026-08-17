import 'package:katan/domain/repositories/chat_repository.dart';

class MarkChatReadUseCase {
  const MarkChatReadUseCase(this._repository);

  final ChatRepository _repository;

  Future<void> call({
    required int roomId,
    required int messageId,
  }) => _repository.markRead(roomId: roomId, messageId: messageId);
}
