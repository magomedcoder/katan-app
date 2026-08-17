import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class ListChatRoomsUseCase {
  const ListChatRoomsUseCase(this._repository);

  final ChatRepository _repository;

  Future<List<ChatRoom>> call() => _repository.listRooms();
}
