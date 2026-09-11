import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class CreateDirectChatUseCase {
  const CreateDirectChatUseCase(this._repository);

  final ChatRepository _repository;

  Future<ChatRoom> call(int userId) => _repository.createDirect(userId);
}
