import 'package:katan/app/di.dart';
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/domain/usecases/get_project_members_usecase.dart';
import 'package:katan/domain/usecases/search_chat_usecase.dart';

Future<List<UserRef>> Function(String query) buildTaskUserSearch({
  int projectId = 0,
}) {
  return (query) async {
    final trimmed = query.trim();
    final found = <int, UserRef>{};

    if (projectId > 0) {
      try {
        final members = await getIt<GetProjectMembersUseCase>()(projectId);
        for (final member in members) {
          final user = member.user;
          if (user != null && user.id > 0) {
            found[user.id] = user;
          }
        }
      } catch (_) {}
    }

    try {
      final result = await getIt<SearchChatUseCase>()(query: trimmed);
      for (final user in result.users) {
        if (user.id > 0) {
          found[user.id] = user;
        }
      }
    } catch (_) {}

    var users = found.values.toList();
    if (trimmed.isNotEmpty) {
      final needle = trimmed.toLowerCase();
      users = users.where((user) => user.displayName.toLowerCase().contains(needle) || user.username.toLowerCase().contains(needle)).toList();
    }

    users.sort((a, b) => a.displayName.compareTo(b.displayName));
    return users;
  };
}
