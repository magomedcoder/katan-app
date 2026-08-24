final _internalToolName = RegExp(r'\b(?:(?:katan|bgb|b24|glaber|mcp)_[a-z0-9_]+|web_search|build_docx|put_session_file|apply_spreadsheet|apply_markdown_patch)\b', caseSensitive: false);

final _toolMentionPhrases = [
  RegExp(r'\b(?:я\s+)?(?:вызвал[а]?|использовал[а]?|применил[а]?|обратил(?:ся|ась)\s+к)\s+(?:к\s+)?(?:инструменту?\s+)?', caseSensitive: false),
  RegExp(r'\bчерез\s+инструмент\s+', caseSensitive: false),
  RegExp(r'\bс\s+помощью\s+инструмента\s+', caseSensitive: false),
  RegExp(r'\btool_name\b', caseSensitive: false),
];

String sanitizeAssistantResponseForUser(String content) {
  var text = content.trim();
  if (text.isEmpty) {
    return text;
  }

  for (final pattern in _toolMentionPhrases) {
    text = text.replaceAll(pattern, '');
  }

  text = text.replaceAll(_internalToolName, '');
  text = text.replaceAll(RegExp(r'[ \t]{2,}'), ' ');
  text = text.replaceAll(RegExp(r'\n{3,}'), '\n\n');
 
  return text.trim();
}
