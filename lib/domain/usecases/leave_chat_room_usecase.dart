import 'package:katan/domain/repositories/chat_repository.dart';

class LeaveChatRoomUseCase {
  const LeaveChatRoomUseCase(this._repository);

  final ChatRepository _repository;

  Future<void> call(int roomId) => _repository.leaveRoom(roomId);
}
