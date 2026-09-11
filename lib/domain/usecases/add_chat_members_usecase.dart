import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class AddChatMembersUseCase {
  const AddChatMembersUseCase(this._repository);

  final ChatRepository _repository;

  Future<ChatRoom> call({
    required int roomId,
    required List<int> userIds,
  }) => _repository.addMembers(roomId: roomId, userIds: userIds);
}
