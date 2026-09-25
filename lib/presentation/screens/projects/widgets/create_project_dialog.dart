import 'package:flutter/material.dart';
import 'package:katan/app/di.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/domain/usecases/create_project_usecase.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_user_picker_sheet.dart';
import 'package:katan/presentation/widgets/task_user_search.dart';

Future<int?> showCreateProjectDialog(BuildContext context) {
  return showModalBottomSheet<int>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (sheetContext) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.viewInsetsOf(sheetContext).bottom,
      ),
      child: const _CreateProjectForm(),
    ),
  );
}

class _CreateProjectForm extends StatefulWidget {
  const _CreateProjectForm();

  @override
  State<_CreateProjectForm> createState() => _CreateProjectFormState();
}

class _CreateProjectFormState extends State<_CreateProjectForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _storyPointsController = TextEditingController();
  final _members = <int, UserRef>{};

  bool _saving = false;
  String? _error;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _storyPointsController.dispose();
    super.dispose();
  }

  Future<void> _pickMembers() async {
    final picked = await showChatUserPicker(
      context: context,
      search: buildTaskUserSearch(),
      title: 'Участники проекта',
      excludeIds: _members.keys.toSet(),
    );

    if (picked == null || picked.isEmpty || !mounted) {
      return;
    }

    setState(() {
      for (final user in picked) {
        _members[user.id] = user;
      }
    });
  }

  Future<void> _submit() async {
    if (_formKey.currentState?.validate() != true) {
      return;
    }

    setState(() {
      _saving = true;
      _error = null;
    });

    try {
      final id = await getIt<CreateProjectUseCase>()(
        title: _titleController.text.trim(),
        description: _descriptionController.text.trim(),
        storyPoints: int.tryParse(_storyPointsController.text.trim()) ?? 0,
        members: [
          for (final userId in _members.keys)
            ProjectMemberInput(
                userId: userId,
                role: ProjectRoles.member,
            ),
        ],
      );

      if (mounted) {
        Navigator.of(context).pop(id);
      }
    } on Failure catch (e) {
      if (mounted) {
        setState(() {
          _saving = false;
          _error = e.message;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _saving = false;
          _error = e.toString();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Новый проект', style: theme.textTheme.titleLarge),
              const SizedBox(height: 16),
              TextFormField(
                controller: _titleController,
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(
                  labelText: 'Название *',
                  border: OutlineInputBorder(),
                ),
                validator: (value) => (value ?? '').trim().isEmpty ? 'Укажите название' : null,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _descriptionController,
                minLines: 3,
                maxLines: 6,
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(
                  labelText: 'Описание',
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _storyPointsController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Story points',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              InputDecorator(
                decoration: const InputDecoration(
                  labelText: 'Участники',
                  border: OutlineInputBorder(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (_members.isEmpty)
                      const Text('Только владелец')
                    else
                      Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: [
                          for (final user in _members.values)
                            Chip(
                              label: Text(user.displayName),
                              onDeleted: () => setState(() => _members.remove(user.id)),
                            ),
                        ],
                      ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton.icon(
                        onPressed: _pickMembers,
                        icon: const Icon(Icons.person_add_alt),
                        label: const Text('Добавить'),
                      ),
                    ),
                  ],
                ),
              ),
              if (_error != null) ...[
                const SizedBox(height: 12),
                Text(
                  _error!,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.error,
                  ),
                ),
              ],
              const SizedBox(height: 16),
              FilledButton(
                onPressed: _saving ? null : _submit,
                child: _saving
                  ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                  : const Text('Создать проект'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
