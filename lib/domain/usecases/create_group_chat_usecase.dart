import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class CreateGroupChatUseCase {
  const CreateGroupChatUseCase(this._repository);

  final ChatRepository _repository;

  Future<ChatRoom> call({
    required String title,
    required List<int> userIds,
  }) => _repository.createGroup(title: title, userIds: userIds);
}
