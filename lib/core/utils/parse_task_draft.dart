import 'dart:convert';

class TaskDraftParsed {
  const TaskDraftParsed({
    required this.title,
    required this.description,
  });

  final String title;
  final String description;
}

TaskDraftParsed? _tryParseJsonDraft(String raw) {
  try {
    final decoded = jsonDecode(raw);
    if (decoded is! Map) {
      return null;
    }

    final map = decoded.map((key, value) => MapEntry(key.toString(), value));
    final title = '${map['title'] ?? map['name'] ?? ''}'.trim();
    final description = '${map['description'] ?? map['body'] ?? map['text'] ?? ''}'.trim();
    if (title.isEmpty && description.isEmpty) {
      return null;
    }

    final resolvedTitle = title.isEmpty ? 'Задача из AI-чата' : title;
    return TaskDraftParsed(
      title: resolvedTitle.length > 200 ? resolvedTitle.substring(0, 200) : resolvedTitle,
      description: description,
    );
  } catch (_) {
    return null;
  }
}

TaskDraftParsed parseTaskDraftFromAssistantText(String content) {
  final text = content.trim();
  if (text.isEmpty) {
    return const TaskDraftParsed(title: 'Задача из AI-чата', description: '');
  }

  final fenced = RegExp(r'```(?:json|task_draft)?\s*\n([\s\S]*?)\n```', caseSensitive: false).firstMatch(text);
  final fencedBody = fenced?.group(1)?.trim();
  if (fencedBody != null && fencedBody.isNotEmpty) {
    final fromJson = _tryParseJsonDraft(fencedBody);
    if (fromJson != null) {
      return fromJson;
    }
  }

  final heading = RegExp(r'^#{1,3}\s+(.+)$', multiLine: true).firstMatch(text);
  final headingTitle = heading?.group(1)?.trim();
  if (headingTitle != null && headingTitle.isNotEmpty) {
    final title = headingTitle.length > 200 ? headingTitle.substring(0, 200) : headingTitle;
    final description = text.replaceFirst(RegExp(r'^#{1,3}\s+.+$', multiLine: true), '').trim();
    return TaskDraftParsed(
      title: title,
      description: description.isEmpty ? text : description,
    );
  }

  final lines = text.split('\n');
  var firstLine = lines.isEmpty ? 'Задача из AI-чата' : lines.first.trim();
  firstLine = firstLine.replaceFirst(RegExp(r'^[-*]\s+'), '');
  if (firstLine.isEmpty) {
    firstLine = 'Задача из AI-чата';
  }

  final title = firstLine.length > 120 ? '${firstLine.substring(0, 117)}...' : firstLine;
  final rest = lines.skip(1).join('\n').trim();
  return TaskDraftParsed(
    title: title,
    description: rest.isEmpty ? text : rest,
  );
}

String appendMapContextToTaskText(String description, {
  String? kind,
  int? objectId,
  String? title,
  String? path,
}) {
  if (kind == null || kind.isEmpty || objectId == null || objectId <= 0) {
    return description;
  }

  final label = title?.trim().isNotEmpty == true ? title!.trim() : '$kind #$objectId';
  final link = path?.trim().isNotEmpty == true ? path!.trim() : '';
  final suffix = link.isEmpty ? '\n\nКонтекст: $label' : '\n\nКонтекст: $label ($link)';
  final base = description.trim();
  return base.isEmpty ? suffix.trim() : '$base$suffix';
}
