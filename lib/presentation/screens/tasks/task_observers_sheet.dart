import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/presentation/cubit/task_detail_cubit.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_avatar.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_user_picker_sheet.dart';
import 'package:katan/presentation/widgets/task_user_search.dart';

Future<bool> showTaskObserversSheet(
  BuildContext context, {
  required TaskDetailCubit cubit,
  required List<UserRef> observers,
  required int projectId,
}) async {
  final saved = await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (sheetContext) => _TaskObserversSheet(
      cubit: cubit,
      observers: observers,
      projectId: projectId,
    ),
  );

  return saved == true;
}

class _TaskObserversSheet extends StatefulWidget {
  const _TaskObserversSheet({
    required this.cubit,
    required this.observers,
    required this.projectId,
  });

  final TaskDetailCubit cubit;
  final List<UserRef> observers;
  final int projectId;

  @override
  State<_TaskObserversSheet> createState() => _TaskObserversSheetState();
}

class _TaskObserversSheetState extends State<_TaskObserversSheet> {
  late final Map<int, UserRef> _selected = {
    for (final user in widget.observers) user.id: user,
  };

  bool _saving = false;

  Future<void> _add() async {
    final picked = await showChatUserPicker(
      context: context,
      search: buildTaskUserSearch(projectId: widget.projectId),
      title: 'Добавить наблюдателей',
      excludeIds: _selected.keys.toSet(),
    );

    if (picked == null || picked.isEmpty || !mounted) {
      return;
    }

    setState(() {
      for (final user in picked) {
        _selected[user.id] = user;
      }
    });
  }

  Future<void> _save() async {
    setState(() => _saving = true);
    final ok = await widget.cubit.setObservers(_selected.keys.toList());
    if (!mounted) {
      return;
    }

    if (ok) {
      Navigator.of(context).pop(true);
      return;
    }

    setState(() => _saving = false);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final observers = _selected.values.toList();

    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(context).height * 0.8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
              child: Row(
                children: [
                  Expanded(
                    child: Text('Наблюдатели', style: theme.textTheme.titleLarge),
                  ),
                  TextButton(
                    onPressed: _saving ? null : _save,
                    child: _saving
                      ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                      : const Text('Сохранить'),
                  ),
                ],
              ),
            ),
            if (observers.isEmpty)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Наблюдатели не назначены',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              )
            else
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: observers.length,
                  itemBuilder: (context, index) {
                    final user = observers[index];
                    return ListTile(
                      leading: ChatAvatar(label: user.displayName),
                      title: Text(user.displayName),
                      subtitle: user.username.isEmpty ? null : Text('@${user.username}'),
                      trailing: IconButton(
                        tooltip: 'Убрать',
                        onPressed: () => setState(() => _selected.remove(user.id)),
                        icon: const Icon(Icons.close, size: 18),
                      ),
                    );
                  },
                ),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              child: OutlinedButton.icon(
                onPressed: _add,
                icon: const Icon(Icons.person_add_alt),
                label: const Text('Добавить'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
