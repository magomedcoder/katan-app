import 'dart:convert';

class AiChatWriteDiffTable {
  const AiChatWriteDiffTable({
    required this.title,
    required this.dryRun,
    required this.columns,
    required this.rows,
  });

  final String title;
  final bool dryRun;
  final List<String> columns;
  final List<Map<String, String>> rows;
}

Object? _tryParseJson(String raw) {
  try {
    return jsonDecode(raw);
  } catch (_) {
    return null;
  }
}

List<Map<String, dynamic>> _asRows(Object? value) {
  if (value is! List) {
    return const [];
  }

  return value.whereType<Map>().map((item) => Map<String, dynamic>.from(item)).toList();
}

String _cell(Object? value) {
  if (value == null) {
    return '';
  }

  if (value is String || value is num || value is bool) {
    return '$value';
  }

  return jsonEncode(value);
}

AiChatWriteDiffTable? _tableFromPreview(Map<String, dynamic> payload) {
  final preview = _asRows(payload['preview']);
  final updated = _asRows(payload['updated']);
  final created = _asRows(payload['created']);
  final rowsSrc = updated.isNotEmpty ? updated : (created.isNotEmpty ? created : preview);
  if (rowsSrc.isEmpty) {
    return null;
  }

  final dryRun = payload['dry_run'] == true;
  final isLabels = rowsSrc.any((row) => row.containsKey('current_label') || row.containsKey('proposed_label'));
  final isTasks = rowsSrc.any((row) => row.containsKey('title') || row.containsKey('task_id'));

  if (isLabels) {
    return AiChatWriteDiffTable(
      title: updated.isNotEmpty ? 'Подписи: результат' : 'Подписи: preview',
      dryRun: dryRun,
      columns: const ['object', 'was', 'will', 'status'],
      rows: rowsSrc.take(40).map((row) {
        return {
          'object': '${_cell(row['kind'])} #${_cell(row['object_id'])}',
          'was': _cell(row['current_label']),
          'will': _cell(row['proposed_label']),
          'status': _cell(row['status']).isEmpty ? (dryRun ? 'dry_run' : 'preview') : _cell(row['status']),
        };
      }).toList(),
    );
  }

  if (isTasks) {
    return AiChatWriteDiffTable(
      title: created.isNotEmpty || updated.isNotEmpty ? 'Задачи: результат' : 'Задачи: preview',
      dryRun: dryRun,
      columns: const ['title', 'object', 'task', 'status'],
      rows: rowsSrc.take(40).map((row) {
        String object;
        if (row['node_id'] != null) {
          object = 'node #${_cell(row['node_id'])}';
        } else if (row['address'] != null) {
          object = _cell(row['address']);
        } else if (row['object_id'] != null) {
          object = '${_cell(row['object_kind'])} #${_cell(row['object_id'])}';
        } else {
          object = '-';
        }

        return {
          'title': _cell(row['title']),
          'object': object,
          'task': row['task_id'] != null ? '#${_cell(row['task_id'])}' : '-',
          'status': _cell(row['status']).isEmpty ? (dryRun ? 'dry_run' : 'preview') : _cell(row['status']),
        };
      }).toList(),
    );
  }

  return null;
}

List<AiChatWriteDiffTable> extractWriteDiffTables(String content) {
  final out = <AiChatWriteDiffTable>[];
  final fenceRe = RegExp(r'```(?:json)?\s*([\s\S]*?)```', caseSensitive: false);

  for (final match in fenceRe.allMatches(content)) {
    final parsed = _tryParseJson(match.group(1)!.trim());
    if (parsed is! Map) {
      continue;
    }
    final table = _tableFromPreview(Map<String, dynamic>.from(parsed));
    if (table != null) {
      out.add(table);
    }
  }

  return out.take(3).toList();
}
