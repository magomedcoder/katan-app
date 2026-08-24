class AiChatPeeledContent {
  const AiChatPeeledContent({
    required this.visible,
    this.thinking,
  });

  final String visible;
  final String? thinking;
}

class AiChatPeeledStreamContent {
  const AiChatPeeledStreamContent({
    required this.visible,
    this.thinking,
    this.toolActionStream = false,
  });

  final String visible;
  final String? thinking;
  final bool toolActionStream;
}

const _reasoningTagPairs = [
  ('<redacted_thinking>', '</redacted_thinking>'),
  ('<think>', '</think>'),
  ('<reasoning>', '</reasoning>'),
];

const _toolActionMarkers = [
  'tool_name',
  '"name"',
  '"tool"',
  'parameters',
  'arguments',
];

const _toolNamePrefixes = [
  'bgb_',
  'glaber_',
  'b24_',
  'katan_',
  'mcp_',
];

int _indexOfIgnoreCase(String haystack, String needle, [int start = 0]) {
  if (needle.isEmpty || start >= haystack.length) {
    return -1;
  }

  return haystack.toLowerCase().indexOf(needle.toLowerCase(), start);
}

AiChatPeeledContent peelRedactedThinking(String source) {
  if (source.isEmpty) {
    return const AiChatPeeledContent(visible: '');
  }

  var rest = source;
  final visible = StringBuffer();
  final thinkingParts = <String>[];

  while (true) {
    var bestOpenIdx = -1;
    String? bestOpen;
    String? bestClose;

    for (final pair in _reasoningTagPairs) {
      final idx = _indexOfIgnoreCase(rest, pair.$1);
      if (idx >= 0 && (bestOpenIdx < 0 || idx < bestOpenIdx)) {
        bestOpenIdx = idx;
        bestOpen = pair.$1;
        bestClose = pair.$2;
      }
    }

    if (bestOpenIdx < 0 || bestOpen == null || bestClose == null) {
      visible.write(rest);
      break;
    }

    visible.write(rest.substring(0, bestOpenIdx));
    final afterOpenStart = bestOpenIdx + bestOpen.length;
    if (afterOpenStart > rest.length) {
      break;
    }

    final tail = rest.substring(afterOpenStart);
    final closeIdx = _indexOfIgnoreCase(tail, bestClose);
    if (closeIdx < 0) {
      final unclosed = tail.trim();
      if (unclosed.isNotEmpty) {
        thinkingParts.add(unclosed);
      }

      break;
    }

    final inner = tail.substring(0, closeIdx).trim();
    if (inner.isNotEmpty) {
      thinkingParts.add(inner);
    }

    rest = tail.substring(closeIdx + bestClose.length);
  }

  final thinking = thinkingParts.join('\n\n').trim();
  return AiChatPeeledContent(
    visible: visible.toString(),
    thinking: thinking.isEmpty ? null : thinking,
  );
}

String combineAiChatReasoning(String nativeReasoning, String? tagReasoning) {
  final a = nativeReasoning.trim();
  final b = (tagReasoning ?? '').trim();
  if (a.isEmpty) {
    return b;
  }

  if (b.isEmpty) {
    return a;
  }

  return '$a\n\n$b';
}

bool _containsToolNamePrefix(String lower) {
  return _toolNamePrefixes.any(lower.contains);
}

bool looksLikeToolActionStream(String text) {
  final trimmed = text.trim();
  if (trimmed.isEmpty) {
    return false;
  }

  final lower = trimmed.toLowerCase();
  if (lower.contains('tool_name') && (lower.contains('parameters') || lower.contains('arguments') || _containsToolNamePrefix(lower))) {
    return true;
  }

  if (trimmed.startsWith('[') || trimmed.startsWith('{')) {
    if (_toolActionMarkers.any(lower.contains)) {
      return true;
    }

    if (trimmed.length < 240 && !RegExp(r'[а-яё]', caseSensitive: false).hasMatch(trimmed) && trimmed.split(RegExp(r'\s+')).length < 5) {
      return true;
    }
  }

  final fenced = RegExp(r'```(?:json)?\s*([\s\S]*?)```', caseSensitive: false)
      .firstMatch(trimmed);
  if (fenced != null && looksLikeToolActionStream(fenced.group(1)!)) {
    return true;
  }

  return false;
}

int _toolActionStartIndex(String text) {
  final patterns = [
    RegExp(r'\[\s*\{\s*"?tool_name"?\s*:', caseSensitive: false),
    RegExp(r'\{\s*"?tool_name"?\s*:', caseSensitive: false),
    RegExp(r'"?tool_name"?\s*:', caseSensitive: false),
  ];

  var best = -1;
  for (final pattern in patterns) {
    final match = pattern.firstMatch(text);
    if (match != null && (best < 0 || match.start < best)) {
      best = match.start;
    }
  }

  return best;
}

String stripToolActionFromText(String source) {
  if (source.trim().isEmpty) {
    return source;
  }

  var text = source.replaceAllMapped(RegExp(r'```(?:json)?\s*[\s\S]*?```', caseSensitive: false), (match) {
    final block = match.group(0)!;
    final inner = block.replaceFirst(RegExp(r'```(?:json)?', caseSensitive: false), '').replaceFirst(RegExp(r'```$'), '');
    return looksLikeToolActionStream(inner) ? '' : block;
  });

  final start = _toolActionStartIndex(text);
  if (start >= 0) {
    final tail = text.substring(start);
    if (looksLikeToolActionStream(tail) || looksLikeToolActionStream('[$tail')) {
      text = text.substring(0, start);
    }
  }

  return text.trimRight();
}

AiChatPeeledStreamContent peelStreamAssistantContent(String source) {
  final peeled = peelRedactedThinking(source);
  final stripped = stripToolActionFromText(peeled.visible);
  final toolActionStream = looksLikeToolActionStream(peeled.visible) && stripped.trim().isEmpty;

  return AiChatPeeledStreamContent(
    visible: toolActionStream ? '' : stripped,
    thinking: peeled.thinking,
    toolActionStream: toolActionStream,
  );
}
