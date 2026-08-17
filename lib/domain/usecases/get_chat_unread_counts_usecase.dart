import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class GetChatUnreadCountsUseCase {
  const GetChatUnreadCountsUseCase(this._repository);

  final ChatRepository _repository;

  Future<ChatUnreadCounts> call() => _repository.getUnreadCounts();
}
