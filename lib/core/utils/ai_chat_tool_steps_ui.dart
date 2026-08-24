enum AiChatToolCategory {
  katan,
  billing,
  bitrix,
  glaber,
  builtin,
  mcp,
  unknown,
}

enum AiChatToolStepStatus {
  running,
  ok,
  error,
}

AiChatToolCategory normalizeAiChatToolCategory(String? raw) {
  switch (raw) {
    case 'katan':
      return AiChatToolCategory.katan;
    case 'billing':
      return AiChatToolCategory.billing;
    case 'bitrix':
      return AiChatToolCategory.bitrix;
    case 'glaber':
      return AiChatToolCategory.glaber;
    case 'builtin':
      return AiChatToolCategory.builtin;
    case 'mcp':
      return AiChatToolCategory.mcp;
    default:
      return AiChatToolCategory.unknown;
  }
}

AiChatToolStepStatus normalizeAiChatToolStepStatus(String? raw) {
  switch (raw) {
    case 'running':
      return AiChatToolStepStatus.running;
    case 'error':
      return AiChatToolStepStatus.error;
    default:
      return AiChatToolStepStatus.ok;
  }
}

String aiChatToolCategoryLabel(AiChatToolCategory category) {
  return switch (category) {
    AiChatToolCategory.katan => 'Katan',
    AiChatToolCategory.billing => 'Биллинг',
    AiChatToolCategory.bitrix => 'Bitrix24',
    AiChatToolCategory.glaber => 'Glaber',
    AiChatToolCategory.builtin => 'Инструмент',
    AiChatToolCategory.mcp => 'MCP',
    AiChatToolCategory.unknown => 'Инструмент',
  };
}

String aiChatToolStatusLabel(AiChatToolStepStatus status) {
  return switch (status) {
    AiChatToolStepStatus.running => 'Выполняется',
    AiChatToolStepStatus.ok => 'Готово',
    AiChatToolStepStatus.error => 'Ошибка',
  };
}

String aiChatToolStepShortTitle(String displayName) {
  final title = displayName.trim();
  if (title.isEmpty) {
    return 'Инструмент';
  }

  final stripped = title.replaceFirst(RegExp(r'^(Katan:\s*|Биллинг\s*/\s*|Bitrix24\s*/\s*|Glaber\s*/\s*)', caseSensitive: false), '').trim();
  return stripped.isEmpty ? title : stripped;
}

bool isAiChatPrepToolStepName(String displayName) {
  return displayName.trim().toLowerCase() == 'подготовка инструментов';
}

String pluralAiChatTools(int count) {
  final mod10 = count % 10;
  final mod100 = count % 100;
  if (mod10 == 1 && mod100 != 11) {
    return 'инструмент';
  }

  if (mod10 >= 2 && mod10 <= 4 && (mod100 < 12 || mod100 > 14)) {
    return 'инструмента';
  }

  return 'инструментов';
}
