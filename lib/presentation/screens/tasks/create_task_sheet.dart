import 'package:flutter/material.dart';
import 'package:katan/app/di.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/utils/formatters.dart';
import 'package:katan/core/utils/task_object_types.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/domain/usecases/create_task_usecase.dart';
import 'package:katan/domain/usecases/get_projects_usecase.dart';
import 'package:katan/presentation/screens/chat/widgets/chat_user_picker_sheet.dart';
import 'package:katan/presentation/screens/tasks/task_detail_screen.dart';
import 'package:katan/presentation/widgets/task_user_search.dart';

Future<int?> showCreateTaskSheet(
  BuildContext context, {
  int? projectId,
  String? projectTitle,
  int? columnId,
  String? columnTitle,
  bool lockProject = false,
  int? parentId,
  String? parentTitle,
  String? initialTitle,
  String? initialDescription,
  bool openDetailAfterCreate = true,
  VoidCallback? onCreated,
}) {
  return showModalBottomSheet<int>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (sheetContext) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.viewInsetsOf(sheetContext).bottom,
      ),
      child: _CreateTaskForm(
        projectId: projectId,
        projectTitle: projectTitle,
        columnId: columnId,
        columnTitle: columnTitle,
        lockProject: lockProject || columnId != null || (parentId ?? 0) > 0,
        parentId: parentId,
        parentTitle: parentTitle,
        initialTitle: initialTitle,
        initialDescription: initialDescription,
        openDetailAfterCreate: openDetailAfterCreate,
        onCreated: onCreated,
      ),
    ),
  );
}

class _CreateTaskForm extends StatefulWidget {
  const _CreateTaskForm({
    this.projectId,
    this.projectTitle,
    this.columnId,
    this.columnTitle,
    this.lockProject = false,
    this.parentId,
    this.parentTitle,
    this.initialTitle,
    this.initialDescription,
    this.openDetailAfterCreate = true,
    this.onCreated,
  });

  final int? projectId;
  final String? projectTitle;
  final int? columnId;
  final String? columnTitle;
  final bool lockProject;
  final int? parentId;
  final String? parentTitle;
  final String? initialTitle;
  final String? initialDescription;
  final bool openDetailAfterCreate;
  final VoidCallback? onCreated;

  @override
  State<_CreateTaskForm> createState() => _CreateTaskFormState();
}

class _CreateTaskFormState extends State<_CreateTaskForm> {
  late final TextEditingController _titleController = TextEditingController(text: widget.initialTitle?.trim() ?? '');
  late final TextEditingController _descriptionController = TextEditingController(text: widget.initialDescription?.trim() ?? '');
  final _objectIdController = TextEditingController();
  final _storyPointsController = TextEditingController(text: '0');

  List<ProjectSummary> _projects = const [];
  bool _projectsLoading = false;
  int? _projectId;
  UserRef? _assignee;
  DateTime? _dueAt;
  int? _objectType;
  bool _submitting = false;

  bool get _isSubtask => (widget.parentId ?? 0) > 0;

  @override
  void initState() {
    super.initState();
    _projectId = widget.projectId;
    if (!widget.lockProject) {
      _loadProjects();
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _objectIdController.dispose();
    _storyPointsController.dispose();
    super.dispose();
  }

  Future<void> _loadProjects() async {
    setState(() => _projectsLoading = true);
    try {
      final result = await getIt<GetProjectsUseCase>()(page: 1, limit: 100);
      if (!mounted) {
        return;
      }
      setState(() {
        _projects = result.items;
        _projectsLoading = false;
      });
    } catch (_) {
      if (!mounted) {
        return;
      }
      setState(() => _projectsLoading = false);
    }
  }

  Future<void> _pickAssignee() async {
    final picked = await showChatUserPicker(
      context: context,
      search: buildTaskUserSearch(projectId: _projectId ?? 0),
      title: 'Исполнитель',
      multi: false,
    );

    if (picked == null || picked.isEmpty || !mounted) {
      return;
    }

    setState(() => _assignee = picked.first);
  }

  Future<void> _pickDueDate() async {
    final now = DateTime.now();
    final date = await showDatePicker(
      context: context,
      initialDate: _dueAt ?? now,
      firstDate: DateTime(now.year - 1),
      lastDate: DateTime(now.year + 5),
    );
    if (date == null || !mounted) {
      return;
    }

    final time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(_dueAt ?? now),
    );
    if (!mounted) {
      return;
    }

    setState(() {
      _dueAt = DateTime(
        date.year,
        date.month,
        date.day,
        time?.hour ?? 18,
        time?.minute ?? 0,
      );
    });
  }

  Future<void> _submit() async {
    final title = _titleController.text.trim();
    if (title.isEmpty || _submitting) {
      if (title.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Укажите название')),
        );
      }
      return;
    }

    setState(() => _submitting = true);
    try {
      final objectId = int.tryParse(_objectIdController.text.trim()) ?? 0;
      final task = await getIt<CreateTaskUseCase>()(
        title: title,
        description: _descriptionController.text.trim(),
        projectId: _projectId,
        assigneeId: _assignee?.id,
        columnId: widget.columnId,
        parentId: widget.parentId,
        dueAt: _dueAt,
        storyPoints: int.tryParse(_storyPointsController.text.trim()) ?? 0,
        objectType: _objectType ?? 0,
        objectId: objectId > 0 ? objectId : null,
      );

      if (!mounted) {
        return;
      }

      Navigator.of(context).pop(task.id);
      widget.onCreated?.call();

      if (widget.openDetailAfterCreate) {
        await Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (_) => TaskDetailScreen(taskId: task.id),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
        setState(() => _submitting = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lockedProjectTitle = widget.projectTitle?.trim() ?? '';

    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(context).height * 0.9,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                _isSubtask ? 'Новая подзадача' : 'Новая задача',
                style: theme.textTheme.titleLarge,
              ),
              if (_isSubtask) ...[
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: AppColors.fill,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Родительская задача: ${widget.parentTitle?.trim().isNotEmpty == true ? widget.parentTitle!.trim() : '#${widget.parentId}'}',
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
              if (lockedProjectTitle.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  [
                    'Проект: $lockedProjectTitle',
                    if (widget.columnTitle?.trim().isNotEmpty == true)
                      'колонка: ${widget.columnTitle!.trim()}',
                  ].join(', '),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
              const SizedBox(height: 16),
              TextField(
                controller: _titleController,
                autofocus: true,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: 'Название',
                  hintText: 'Кратко, что сделать',
                ),
              ),
              const SizedBox(height: 12),
              if (!widget.lockProject && !_isSubtask) ...[
                DropdownButtonFormField<int?>(
                  initialValue: _projects.any((project) => project.id == _projectId)
                    ? _projectId
                    : null,
                  isExpanded: true,
                  decoration: InputDecoration(
                    labelText: 'Проект',
                    suffixIcon: _projectsLoading
                      ? const Padding(
                        padding: EdgeInsets.all(12),
                        child: SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      )
                      : null,
                  ),
                  items: [
                    const DropdownMenuItem<int?>(
                      child: Text('Без проекта'),
                    ),
                    for (final project in _projects)
                      DropdownMenuItem<int?>(
                        value: project.id,
                        child: Text(
                          project.title.isEmpty ? 'Проект #${project.id}' : project.title,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                  ],
                  onChanged: (value) => setState(() => _projectId = value),
                ),
                const SizedBox(height: 12),
              ],
              TextField(
                controller: _descriptionController,
                minLines: 3,
                maxLines: 6,
                decoration: const InputDecoration(
                  labelText: 'Описание',
                  alignLabelWithHint: true,
                ),
              ),
              const SizedBox(height: 12),
              _FieldTile(
                label: 'Исполнитель',
                value: _assignee?.displayName ?? 'Не назначен',
                icon: Icons.person_outline,
                onTap: _pickAssignee,
                onClear: _assignee == null ? null : () => setState(() => _assignee = null),
              ),
              _FieldTile(
                label: 'Крайний срок',
                value: _dueAt == null ? 'Не задан' : formatDateTime(_dueAt),
                icon: Icons.event_outlined,
                onTap: _pickDueDate,
                onClear: _dueAt == null ? null : () => setState(() => _dueAt = null),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _storyPointsController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Стори Поинты'),
              ),
              if (!_isSubtask) ...[
                const SizedBox(height: 12),
                DropdownButtonFormField<int?>(
                  initialValue: _objectType,
                  isExpanded: true,
                  decoration: const InputDecoration(labelText: 'Тип объекта'),
                  items: [
                    const DropdownMenuItem<int?>(
                      child: Text('Без объекта'),
                    ),
                    for (final option in TaskObjectTypes.options)
                      DropdownMenuItem<int?>(
                        value: option.value,
                        child: Text(option.label),
                      ),
                  ],
                  onChanged: (value) => setState(() => _objectType = value),
                ),
                if (_objectType != null) ...[
                  const SizedBox(height: 12),
                  TextField(
                    controller: _objectIdController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'ID объекта',
                      hintText: 'Например, 1024',
                    ),
                  ),
                ],
              ],
              const SizedBox(height: 20),
              FilledButton(
                onPressed: _submitting ? null : _submit,
                child: _submitting
                  ? const SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                  : Text(_isSubtask ? 'Создать подзадачу' : 'Создать задачу'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FieldTile extends StatelessWidget {
  const _FieldTile({
    required this.label,
    required this.value,
    required this.icon,
    required this.onTap,
    this.onClear,
  });

  final String label;
  final String value;
  final IconData icon;
  final VoidCallback onTap;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(icon, color: AppColors.textSecondary),
      title: Text(label, style: theme.textTheme.bodySmall),
      subtitle: Text(value, style: theme.textTheme.bodyMedium),
      trailing: onClear == null
        ? const Icon(Icons.chevron_right)
        : IconButton(
          tooltip: 'Очистить',
          onPressed: onClear,
          icon: const Icon(Icons.close, size: 18),
        ),
      onTap: onTap,
    );
  }
}
