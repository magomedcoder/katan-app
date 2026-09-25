import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/domain/entities/task_tag.dart';
import 'package:katan/presentation/cubit/task_detail_cubit.dart';

Future<bool> showTaskTagsSheet(
  BuildContext context, {
  required TaskDetailCubit cubit,
  required int projectId,
  required List<TaskTag> tags,
  required bool canManage,
}) async {
  final saved = await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (sheetContext) => Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.viewInsetsOf(sheetContext).bottom,
      ),
      child: _TaskTagsSheet(
        cubit: cubit,
        projectId: projectId,
        tags: tags,
        canManage: canManage,
      ),
    ),
  );

  return saved == true;
}

class _TaskTagsSheet extends StatefulWidget {
  const _TaskTagsSheet({
    required this.cubit,
    required this.projectId,
    required this.tags,
    required this.canManage,
  });

  final TaskDetailCubit cubit;
  final int projectId;
  final List<TaskTag> tags;
  final bool canManage;

  @override
  State<_TaskTagsSheet> createState() => _TaskTagsSheetState();
}

class _TaskTagsSheetState extends State<_TaskTagsSheet> {
  final _newLabelController = TextEditingController();

  late final Set<int> _selected = widget.tags.map((tag) => tag.id).toSet();
  List<TaskLabel> _labels = const [];
  bool _loading = true;
  bool _saving = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadLabels();
  }

  @override
  void dispose() {
    _newLabelController.dispose();
    super.dispose();
  }

  Future<void> _loadLabels() async {
    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final labels = await widget.cubit.loadLabels(widget.projectId);
      if (!mounted) {
        return;
      }

      setState(() {
        _labels = labels;
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

  Future<void> _createLabel() async {
    final name = _newLabelController.text.trim();
    if (name.isEmpty) {
      return;
    }

    try {
      final label = await widget.cubit.createLabel(
        name: name,
        projectId: widget.projectId,
      );
      if (!mounted) {
        return;
      }

      _newLabelController.clear();
      setState(() {
        _labels = [..._labels, label];
        _selected.add(label.id);
      });
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
      }
    }
  }

  Future<void> _deleteLabel(TaskLabel label) async {
    try {
      await widget.cubit.deleteLabel(label.id);
      if (!mounted) {
        return;
      }

      setState(() {
        _labels = _labels.where((item) => item.id != label.id).toList();
        _selected.remove(label.id);
      });
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())),
        );
      }
    }
  }

  Future<void> _save() async {
    setState(() => _saving = true);
    final ok = await widget.cubit.setTags(_selected.toList());
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
                  Expanded(child: Text('Теги', style: theme.textTheme.titleLarge)),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.projectId > 0
                    ? 'Доступны только теги этого проекта'
                    : 'Доступны ваши личные теги для задач без проекта',
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            if (_loading)
              const Padding(
                padding: EdgeInsets.all(24),
                child: CircularProgressIndicator(),
              )
            else if (_error != null)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(_error!),
              )
            else
              Flexible(
                child: _labels.isEmpty
                  ? Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      'Меток пока нет',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  )
                  : ListView.builder(
                    shrinkWrap: true,
                    itemCount: _labels.length,
                    itemBuilder: (context, index) {
                      final label = _labels[index];
                      final selected = _selected.contains(label.id);
                      return CheckboxListTile(
                        value: selected,
                        title: Text(label.name),
                        controlAffinity: ListTileControlAffinity.leading,
                        secondary: widget.canManage
                          ? IconButton(
                            tooltip: 'Удалить метку',
                            onPressed: () => _deleteLabel(label),
                            icon: const Icon(Icons.delete_outline, size: 20),
                          )
                          : null,
                        onChanged: (value) => setState(() {
                          if (value == true) {
                            _selected.add(label.id);
                          } else {
                            _selected.remove(label.id);
                          }
                        }),
                      );
                    },
                  ),
              ),
            if (widget.canManage)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _newLabelController,
                        decoration: const InputDecoration(
                          hintText: 'Новая метка',
                          isDense: true,
                        ),
                        onSubmitted: (_) => _createLabel(),
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton.filled(
                      tooltip: 'Добавить метку',
                      onPressed: _createLabel,
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
