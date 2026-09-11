import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class UpdateGroupChatUseCase {
  const UpdateGroupChatUseCase(this._repository);

  final ChatRepository _repository;

  Future<ChatRoom> call({
    required int roomId,
    required String title,
  }) => _repository.updateGroup(roomId: roomId, title: title);
}
