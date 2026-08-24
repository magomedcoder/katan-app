import 'package:katan/domain/entities/ai_chat.dart';

const writeConfirmApplyPrompt =
    'Да, применить изменения. '
    'Сначала вызови katan_confirm_group_step с user_confirmed=true (step из плана, если был). '
    'Затем выполни нужный write-tool (katan_execute_bulk_tasks / katan_execute_bulk_labels / katan_create_task / katan_update_task) '
    'с теми же параметрами, user_confirmed=true, dry_run=false и уникальным idempotency_key. '
    'Покажи итог: что создано/изменено и что пропущено.';

const writeConfirmDryRunPrompt =
    'Сначала dry-run. '
    'Вызови соответствующий write-tool (katan_execute_bulk_tasks / katan_execute_bulk_labels / katan_create_task) '
    'с dry_run=true и теми же параметрами из preview. '
    'Покажи таблицу планируемых изменений без записи в Katan.';

const _previewHints = [
  'preview массовых задач',
  'preview массовых подписей',
  'план групповых',
  'создание задачи',
  'массовое создание',
  'массовые подписи',
];

const _executeHints = [
  'массовое создание задач',
  'массовые подписи',
  'создание задачи',
];

bool messageNeedsWriteConfirm(AiChatMessage? msg) {
  if (msg == null || !msg.isAssistant || msg.isStreaming) {
    return false;
  }

  final names = msg.toolSteps.map((step) => step.displayName.trim().toLowerCase()).where((name) => name.isNotEmpty).toList();
  if (names.isEmpty) {
    return false;
  }

  final hasPreview = names.any((name) => _previewHints.any(name.contains));
  final hasExecuteDone = names.any((name) => _executeHints.any(name.contains) && !name.contains('preview'));

  return hasPreview && !hasExecuteDone;
}

bool shouldShowWriteConfirmBar({
  required List<AiChatMessage> messages,
  required bool streaming,
}) {
  if (streaming) {
    return false;
  }

  for (var i = messages.length - 1; i >= 0; i--) {
    final msg = messages[i];
    if (!msg.isAssistant) {
      continue;
    }

    return messageNeedsWriteConfirm(msg);
  }

  return false;
}
