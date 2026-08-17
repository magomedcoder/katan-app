import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class SendChatMessageUseCase {
  const SendChatMessageUseCase(this._repository);

  final ChatRepository _repository;

  Future<ChatMessage> call({
    required int roomId,
    required String body,
    int replyToId = 0,
    bool hasMedia = false,
  }) => _repository.sendMessage(
    roomId: roomId,
    body: body,
    replyToId: replyToId,
    hasMedia: hasMedia,
  );
}
