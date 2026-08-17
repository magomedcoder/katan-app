import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class GetChatRoomUseCase {
  const GetChatRoomUseCase(this._repository);

  final ChatRepository _repository;

  Future<ChatRoom> call(int roomId) => _repository.getRoom(roomId);
}
