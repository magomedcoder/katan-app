import 'package:equatable/equatable.dart';

class AiChatMapContext extends Equatable {
  const AiChatMapContext({
    required this.kind,
    required this.objectId,
    required this.title,
    required this.path,
    required this.summary,
  });

  final String kind;
  final int objectId;
  final String title;
  final String path;
  final String summary;

  @override
  List<Object?> get props => [kind, objectId, title, path, summary];
}

class AiChatToolStep extends Equatable {
  const AiChatToolStep({
    required this.displayName,
    required this.status,
    required this.category,
  });

  final String displayName;
  final String status;
  final String category;

  @override
  List<Object?> get props => [displayName, status, category];
}

class AiChatSessionTemplate extends Equatable {
  const AiChatSessionTemplate({
    required this.id,
    required this.title,
    required this.description,
    required this.systemPrompt,
  });

  final String id;
  final String title;
  final String description;
  final String systemPrompt;

  @override
  List<Object?> get props => [id, title, description, systemPrompt];
}

class AiChatQuickPrompt extends Equatable {
  const AiChatQuickPrompt({
    required this.id,
    required this.label,
    required this.text,
  });

  final String id;
  final String label;
  final String text;

  @override
  List<Object?> get props => [id, label, text];
}

class AiChatProactiveChip extends Equatable {
  const AiChatProactiveChip({
    required this.id,
    required this.label,
    required this.prompt,
  });

  final String id;
  final String label;
  final String prompt;

  @override
  List<Object?> get props => [id, label, prompt];
}

class AiChatStatus extends Equatable {
  const AiChatStatus({
    required this.enabled,
    required this.llmConnected,
    required this.attachmentsAvailable,
    required this.hideAskAiButton,
    required this.imageUploadAvailable,
    required this.sessionTemplates,
    required this.quickPrompts,
    this.proactiveChips = const [],
  });

  final bool enabled;
  final bool llmConnected;
  final bool attachmentsAvailable;
  final bool hideAskAiButton;
  final bool imageUploadAvailable;
  final List<AiChatSessionTemplate> sessionTemplates;
  final List<AiChatQuickPrompt> quickPrompts;
  final List<AiChatProactiveChip> proactiveChips;

  bool get canUse => enabled && llmConnected;

  @override
  List<Object?> get props => [
    enabled,
    llmConnected,
    attachmentsAvailable,
    hideAskAiButton,
    imageUploadAvailable,
    sessionTemplates,
    quickPrompts,
    proactiveChips,
  ];
}

class AiChatSession extends Equatable {
  const AiChatSession({
    required this.id,
    required this.title,
    required this.updatedAt,
    required this.systemPrompt,
    this.mapContext,
  });

  final int id;
  final String title;
  final DateTime? updatedAt;
  final String systemPrompt;
  final AiChatMapContext? mapContext;

  AiChatSession copyWith({
    int? id,
    String? title,
    DateTime? updatedAt,
    String? systemPrompt,
    AiChatMapContext? mapContext,
  }) {
    return AiChatSession(
      id: id ?? this.id,
      title: title ?? this.title,
      updatedAt: updatedAt ?? this.updatedAt,
      systemPrompt: systemPrompt ?? this.systemPrompt,
      mapContext: mapContext ?? this.mapContext,
    );
  }

  @override
  List<Object?> get props => [id, title, updatedAt, systemPrompt, mapContext];
}

class AiChatMessage extends Equatable {
  const AiChatMessage({
    required this.id,
    required this.role,
    required this.content,
    required this.reasoning,
    required this.createdAt,
    required this.toolSteps,
    this.attachmentFileId,
    this.attachmentName,
    this.isStreaming = false,
    this.versionCount = 1,
    this.versionIndex = 0,
    this.continueOffered = false,
  });

  final int id;
  final String role;
  final String content;
  final String reasoning;
  final DateTime? createdAt;
  final List<AiChatToolStep> toolSteps;
  final int? attachmentFileId;
  final String? attachmentName;
  final bool isStreaming;
  final int versionCount;
  final int versionIndex;
  final bool continueOffered;

  bool get isUser => role == 'user';
  bool get isAssistant => role == 'assistant';

  AiChatMessage copyWith({
    int? id,
    String? role,
    String? content,
    String? reasoning,
    DateTime? createdAt,
    List<AiChatToolStep>? toolSteps,
    int? attachmentFileId,
    String? attachmentName,
    bool? isStreaming,
    int? versionCount,
    int? versionIndex,
    bool? continueOffered,
  }) {
    return AiChatMessage(
      id: id ?? this.id,
      role: role ?? this.role,
      content: content ?? this.content,
      reasoning: reasoning ?? this.reasoning,
      createdAt: createdAt ?? this.createdAt,
      toolSteps: toolSteps ?? this.toolSteps,
      attachmentFileId: attachmentFileId ?? this.attachmentFileId,
      attachmentName: attachmentName ?? this.attachmentName,
      isStreaming: isStreaming ?? this.isStreaming,
      versionCount: versionCount ?? this.versionCount,
      versionIndex: versionIndex ?? this.versionIndex,
      continueOffered: continueOffered ?? this.continueOffered,
    );
  }

  @override
  List<Object?> get props => [
    id,
    role,
    content,
    reasoning,
    createdAt,
    toolSteps,
    attachmentFileId,
    attachmentName,
    isStreaming,
    versionCount,
    versionIndex,
    continueOffered,
  ];
}

enum AiChatChunkKind { text, reasoning, notice, toolStatus }

class AiChatChunk extends Equatable {
  const AiChatChunk({
    required this.content,
    required this.reasoning,
    required this.done,
    required this.sessionId,
    required this.sessionTitle,
    required this.kind,
    this.toolDisplayName,
    this.toolStatus,
    this.assistantFinalText,
    this.assistantFinalReasoning,
    this.assistantFinalToolSteps = const [],
  });

  final String content;
  final String reasoning;
  final bool done;
  final int sessionId;
  final String sessionTitle;
  final AiChatChunkKind kind;
  final String? toolDisplayName;
  final String? toolStatus;
  final String? assistantFinalText;
  final String? assistantFinalReasoning;
  final List<AiChatToolStep> assistantFinalToolSteps;

  @override
  List<Object?> get props => [
    content,
    reasoning,
    done,
    sessionId,
    sessionTitle,
    kind,
    toolDisplayName,
    toolStatus,
    assistantFinalText,
    assistantFinalReasoning,
    assistantFinalToolSteps,
  ];
}
