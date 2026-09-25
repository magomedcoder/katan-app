import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/presentation/cubit/project_detail_cubit.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_avatar.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_user_picker_sheet.dart';
import 'package:katan/presentation/widgets/task_user_search.dart';

Future<void> showProjectMembersSheet(
  BuildContext context, {
  required ProjectDetailCubit cubit,
  required List<ProjectMember> members,
  required int ownerId,
  required bool canEdit,
}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (sheetContext) => _ProjectMembersSheet(
      cubit: cubit,
      members: members,
      ownerId: ownerId,
      canEdit: canEdit,
    ),
  );
}

class _MemberRow {
  _MemberRow({
    required this.userId,
    required this.label,
    required this.role,
    this.readonly = false,
  });

  final int userId;
  final String label;
  String role;
  final bool readonly;
}

class _ProjectMembersSheet extends StatefulWidget {
  const _ProjectMembersSheet({
    required this.cubit,
    required this.members,
    required this.ownerId,
    required this.canEdit,
  });

  final ProjectDetailCubit cubit;
  final List<ProjectMember> members;
  final int ownerId;
  final bool canEdit;

  @override
  State<_ProjectMembersSheet> createState() => _ProjectMembersSheetState();
}

class _ProjectMembersSheetState extends State<_ProjectMembersSheet> {
  late final List<_MemberRow> _rows = [
    for (final member in widget.members)
      _MemberRow(
        userId: member.user?.id ?? 0,
        label: member.user?.displayName ?? '#${member.id}',
        role: member.role == ProjectRoles.admin
          ? ProjectRoles.admin
          : ProjectRoles.member,
        readonly: (member.user?.id ?? 0) == widget.ownerId,
      ),
  ];

  bool _saving = false;

  Future<void> _add() async {
    final picked = await showChatUserPicker(
      context: context,
      search: buildTaskUserSearch(projectId: widget.cubit.projectId),
      title: 'Добавить участников',
      excludeIds: _rows.map((row) => row.userId).toSet(),
    );

    if (picked == null || picked.isEmpty || !mounted) {
      return;
    }

    setState(() {
      for (final UserRef user in picked) {
        _rows.add(_MemberRow(
          userId: user.id,
          label: user.displayName,
          role: ProjectRoles.member,
        ));
      }
    });
  }

  Future<void> _save() async {
    setState(() => _saving = true);
    final ok = await widget.cubit.saveMembers([
      for (final row in _rows)
        if (row.userId > 0)
          ProjectMemberInput(userId: row.userId, role: row.role),
    ]);

    if (!mounted) {
      return;
    }

    if (ok) {
      Navigator.of(context).pop();
      return;
    }

    setState(() => _saving = false);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(context).height * 0.85,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
              child: Row(
                children: [
                  Expanded(
                    child: Text('Участники', style: theme.textTheme.titleLarge),
                  ),
                  if (widget.canEdit)
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
            if (_rows.isEmpty)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Участников пока нет',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              )
            else
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: _rows.length,
                  itemBuilder: (context, index) {
                    final row = _rows[index];
                    return ListTile(
                      leading: ChatAvatar(label: row.label, size: 34),
                      title: Text(row.label),
                      subtitle: row.readonly
                        ? const Text('Владелец проекта')
                        : null,
                      trailing: widget.canEdit && !row.readonly
                        ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            DropdownButton<String>(
                              value: row.role,
                              underline: const SizedBox.shrink(),
                              items: [
                                for (final option in ProjectRoles.options)
                                  DropdownMenuItem<String>(
                                    value: option.value,
                                    child: Text(option.label),
                                  ),
                              ],
                              onChanged: (value) => setState(() {
                                row.role = value ?? ProjectRoles.member;
                              }),
                            ),
                            IconButton(
                              tooltip: 'Убрать',
                              onPressed: () => setState(() => _rows.removeAt(index)),
                              icon: const Icon(Icons.close, size: 18),
                            ),
                          ],
                        )
                        : Text(ProjectRoles.label(row.role)),
                    );
                  },
                ),
              ),
            if (widget.canEdit)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: OutlinedButton.icon(
                  onPressed: _add,
                  icon: const Icon(Icons.person_add_alt),
                  label: const Text('Добавить участника'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
