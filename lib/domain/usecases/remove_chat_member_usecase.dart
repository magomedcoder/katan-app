import 'package:katan/domain/repositories/chat_repository.dart';

class RemoveChatMemberUseCase {
  const RemoveChatMemberUseCase(this._repository);

  final ChatRepository _repository;

  Future<void> call({
    required int roomId,
    required int userId,
  }) => _repository.removeMember(roomId: roomId, userId: userId);
}
