import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class SearchChatUseCase {
  const SearchChatUseCase(this._repository);

  final ChatRepository _repository;

  Future<ChatSearchResult> call({
    required String query,
    int limit = 30,
  }) => _repository.search(query: query, limit: limit);
}
