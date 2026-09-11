import 'package:flutter/material.dart';
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_avatar.dart';

typedef ChatUserSearch = Future<List<UserRef>> Function(String query);

Future<List<UserRef>?> showChatUserPicker({
  required BuildContext context,
  required ChatUserSearch search,
  required String title,
  bool multi = true,
  Set<int> excludeIds = const {},
}) {
  return showModalBottomSheet<List<UserRef>>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (context) => _ChatUserPickerSheet(
      search: search,
      title: title,
      multi: multi,
      excludeIds: excludeIds,
    ),
  );
}

class _ChatUserPickerSheet extends StatefulWidget {
  const _ChatUserPickerSheet({
    required this.search,
    required this.title,
    required this.multi,
    required this.excludeIds,
  });

  final ChatUserSearch search;
  final String title;
  final bool multi;
  final Set<int> excludeIds;

  @override
  State<_ChatUserPickerSheet> createState() => _ChatUserPickerSheetState();
}

class _ChatUserPickerSheetState extends State<_ChatUserPickerSheet> {
  final _queryController = TextEditingController();
  final _selected = <int, UserRef>{};
  List<UserRef> _users = const [];
  bool _loading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _runSearch('');
  }

  @override
  void dispose() {
    _queryController.dispose();
    super.dispose();
  }

  Future<void> _runSearch(String query) async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final users = await widget.search(query);
      if (!mounted) {
        return;
      }
      setState(() {
        _users = users.where((u) => !widget.excludeIds.contains(u.id)).toList();
        _loading = false;
      });
    } catch (e) {
      if (!mounted) {
        return;
      }
      setState(() {
        _loading = false;
        _error = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.viewInsetsOf(context).bottom;
    return Padding(
      padding: EdgeInsets.only(bottom: bottom),
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.72,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  TextButton(
                    onPressed: _selected.isEmpty
                        ? null
                        : () => Navigator.pop(context, _selected.values.toList()),
                    child: Text(widget.multi ? 'Готово (${_selected.length})' : 'Выбрать'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _queryController,
                decoration: const InputDecoration(
                  hintText: 'Поиск пользователей',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
                onChanged: (value) => _runSearch(value),
                onSubmitted: _runSearch,
              ),
            ),
            const SizedBox(height: 8),
            if (_loading)
              const LinearProgressIndicator(minHeight: 2)
            else
              const SizedBox(height: 2),
            if (_error != null)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(_error!),
              )
            else
              Expanded(
                child: _users.isEmpty
                  ? const Center(child: Text('Никого не найдено'))
                  : ListView.builder(
                      itemCount: _users.length,
                      itemBuilder: (context, index) {
                        final user = _users[index];
                        final selected = _selected.containsKey(user.id);
                        return ListTile(
                          leading: ChatAvatar(label: user.displayName),
                          title: Text(user.displayName),
                          subtitle: Text('@${user.username}'),
                          trailing: widget.multi
                            ? Checkbox(
                              value: selected,
                              onChanged: (_) => _toggle(user),
                            )
                            : null,
                          onTap: () {
                            if (widget.multi) {
                              _toggle(user);
                            } else {
                              Navigator.pop(context, [user]);
                            }
                          },
                        );
                      },
                    ),
              ),
          ],
        ),
      ),
    );
  }

  void _toggle(UserRef user) {
    setState(() {
      if (_selected.containsKey(user.id)) {
        _selected.remove(user.id);
      } else {
        _selected[user.id] = user;
      }
    });
  }
}
