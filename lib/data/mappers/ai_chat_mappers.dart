import 'package:fixnum/fixnum.dart';
import 'package:katan/core/utils/ai_chat_assistant_sanitize.dart';
import 'package:katan/core/utils/ai_chat_strip_tool_action.dart';
import 'package:katan/core/utils/ai_chat_tool_steps_ui.dart';
import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/generated/pb/ai_chat.pb.dart' as pb;
import 'package:katan/generated/pb/ai_chat.pbenum.dart' as pb_enum;

DateTime? _mapUnix(Int64 value) {
  if (value == Int64.ZERO) {
    return null;
  }

  return DateTime.fromMillisecondsSinceEpoch(value.toInt() * 1000, isUtc: true).toLocal();
}

AiChatMapContext? mapAiChatMapContext(pb.AiChatMapContext? ctx) {
  if (ctx == null) {
    return null;
  }

  return AiChatMapContext(
    kind: ctx.kind,
    objectId: ctx.objectId.toInt(),
    title: ctx.title,
    path: ctx.path,
    summary: ctx.summary,
  );
}

pb.AiChatMapContext? toPbMapContext(AiChatMapContext? ctx) {
  if (ctx == null) {
    return null;
  }
  return pb.AiChatMapContext(
    kind: ctx.kind,
    objectId: Int64(ctx.objectId),
    title: ctx.title,
    path: ctx.path,
    summary: ctx.summary,
  );
}

AiChatToolStep mapAiChatToolStep(pb.AiChatToolStep step) {
  return AiChatToolStep(
    displayName: step.displayName,
    status: step.status,
    category: step.category,
  );
}

AiChatSessionTemplate mapAiChatSessionTemplate(pb.AiChatSessionTemplate item) {
  return AiChatSessionTemplate(
    id: item.id,
    title: item.title,
    description: item.description,
    systemPrompt: item.systemPrompt,
  );
}

AiChatQuickPrompt mapAiChatQuickPrompt(pb.AiChatQuickPrompt item) {
  return AiChatQuickPrompt(
    id: item.id,
    label: item.label,
    text: item.text,
  );
}

AiChatProactiveChip mapAiChatProactiveChip(pb.AiChatProactiveChip item) {
  return AiChatProactiveChip(
    id: item.id,
    label: item.label,
    prompt: item.prompt,
  );
}

AiChatStatus mapAiChatStatus(pb.AiChatStatusResponse response) {
  return AiChatStatus(
    enabled: response.enabled,
    llmConnected: response.llmConnected,
    attachmentsAvailable: response.attachmentsAvailable,
    hideAskAiButton: response.hideAskAiButton,
    imageUploadAvailable: response.imageUploadAvailable,
    mcpAvailable: response.mcpAvailable,
    webSearchAvailable: response.webSearchAvailable,
    integrationsAvailable: response.integrationsAvailable,
    sessionTemplates: response.sessionTemplates.map(mapAiChatSessionTemplate).toList(),
    quickPrompts: response.customQuickPrompts.map(mapAiChatQuickPrompt).toList(),
    proactiveChips: response.proactiveChips.map(mapAiChatProactiveChip).toList(),
  );
}

AiChatSession mapAiChatSession(pb.AiChatSession item) {
  return AiChatSession(
    id: item.id.toInt(),
    title: item.title,
    updatedAt: _mapUnix(item.updatedAt),
    systemPrompt: item.systemPrompt,
    mapContext: item.hasMapContext() ? mapAiChatMapContext(item.mapContext) : null,
  );
}

AiChatMessage mapAiChatMessage(pb.AiChatMessage item) {
  final peeled = peelStreamAssistantContent(item.content);
  final content = sanitizeAssistantResponseForUser(peeled.visible);
  final reasoning = combineAiChatReasoning(item.reasoning, peeled.thinking);

  return AiChatMessage(
    id: item.id.toInt(),
    role: item.role,
    content: content,
    reasoning: reasoning,
    createdAt: _mapUnix(item.createdAt),
    toolSteps: item.toolSteps.map(mapAiChatToolStep)
        .where((step) => !isAiChatPrepToolStepName(step.displayName))
        .map((step) => AiChatToolStep(
          displayName: step.displayName,
          status: normalizeAiChatToolStepStatus(step.status).name,
          category: normalizeAiChatToolCategory(step.category).name,
        ))
        .toList(),
    attachmentFileId: item.attachmentFileId == Int64.ZERO ? null : item.attachmentFileId.toInt(),
    attachmentName: item.attachmentName.isEmpty ? null : item.attachmentName,
  );
}

AiChatChunkKind mapAiChatChunkKind(pb_enum.AiChatChunkKind kind) {
  return switch (kind) {
    pb_enum.AiChatChunkKind.AI_CHAT_CHUNK_REASONING => AiChatChunkKind.reasoning,
    pb_enum.AiChatChunkKind.AI_CHAT_CHUNK_NOTICE => AiChatChunkKind.notice,
    pb_enum.AiChatChunkKind.AI_CHAT_CHUNK_TOOL_STATUS => AiChatChunkKind.toolStatus,
    _ => AiChatChunkKind.text,
  };
}

AiChatChunk mapAiChatChunk(pb.AiChatChunk chunk) {
  return AiChatChunk(
    content: chunk.content,
    reasoning: chunk.reasoning,
    done: chunk.done,
    sessionId: chunk.sessionId.toInt(),
    sessionTitle: chunk.sessionTitle,
    kind: mapAiChatChunkKind(chunk.kind),
    toolDisplayName: chunk.toolDisplayName.isEmpty ? null : chunk.toolDisplayName,
    toolName: chunk.toolName.isEmpty ? null : chunk.toolName,
    toolStatus: chunk.toolStatus.isEmpty ? null : chunk.toolStatus,
    toolCategory: chunk.toolCategory.isEmpty ? null : chunk.toolCategory,
    assistantFinalText: chunk.hasAssistantFinal() ? chunk.assistantFinal.text : null,
    assistantFinalReasoning: chunk.hasAssistantFinal() ? chunk.assistantFinal.reasoning : null,
    assistantFinalToolSteps: chunk.hasAssistantFinal()
        ? chunk.assistantFinal.toolSteps
            .map(mapAiChatToolStep)
            .where((step) => !isAiChatPrepToolStepName(step.displayName))
            .map((step) => AiChatToolStep(
              displayName: step.displayName,
              status: normalizeAiChatToolStepStatus(step.status).name,
              category: normalizeAiChatToolCategory(step.category).name,
            ))
            .toList()
        : const [],
  );
}
