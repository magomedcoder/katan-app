import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:katan/app/di.dart';
import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/usecases/continue_ai_chat_assistant_usecase.dart';
import 'package:katan/domain/usecases/create_ai_chat_session_usecase.dart';
import 'package:katan/domain/usecases/delete_ai_chat_session_usecase.dart';
import 'package:katan/domain/usecases/edit_ai_chat_user_message_usecase.dart';
import 'package:katan/domain/usecases/fork_ai_chat_session_usecase.dart';
import 'package:katan/domain/usecases/get_ai_chat_messages_at_version_usecase.dart';
import 'package:katan/domain/usecases/get_ai_chat_messages_usecase.dart';
import 'package:katan/domain/usecases/get_ai_chat_sessions_usecase.dart';
import 'package:katan/domain/usecases/get_ai_chat_status_usecase.dart';
import 'package:katan/domain/usecases/list_ai_chat_assistant_regenerations_usecase.dart';
import 'package:katan/domain/usecases/regenerate_ai_chat_assistant_usecase.dart';
import 'package:katan/domain/usecases/send_ai_chat_message_usecase.dart';
import 'package:katan/domain/usecases/update_ai_chat_session_system_prompt_usecase.dart';
import 'package:katan/domain/usecases/update_ai_chat_session_title_usecase.dart';
import 'package:katan/presentation/cubit/ai_chat_cubit.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';
import 'package:katan/presentation/utils/formatters.dart';
import 'package:katan/presentation/widgets/empty_state.dart';
import 'package:katan/presentation/widgets/error_view.dart';

class AiChatScreen extends StatelessWidget {
  const AiChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AiChatCubit(
        getStatusUseCase: getIt<GetAiChatStatusUseCase>(),
        getSessionsUseCase: getIt<GetAiChatSessionsUseCase>(),
        createSessionUseCase: getIt<CreateAiChatSessionUseCase>(),
        deleteSessionUseCase: getIt<DeleteAiChatSessionUseCase>(),
        updateSessionTitleUseCase: getIt<UpdateAiChatSessionTitleUseCase>(),
        updateSessionSystemPromptUseCase: getIt<UpdateAiChatSessionSystemPromptUseCase>(),
        forkSessionUseCase: getIt<ForkAiChatSessionUseCase>(),
        getMessagesUseCase: getIt<GetAiChatMessagesUseCase>(),
        listAssistantRegenerationsUseCase: getIt<ListAiChatAssistantRegenerationsUseCase>(),
        getMessagesAtVersionUseCase: getIt<GetAiChatMessagesAtVersionUseCase>(),
        sendMessageUseCase: getIt<SendAiChatMessageUseCase>(),
        regenerateAssistantUseCase: getIt<RegenerateAiChatAssistantUseCase>(),
        continueAssistantUseCase: getIt<ContinueAiChatAssistantUseCase>(),
        editUserMessageUseCase: getIt<EditAiChatUserMessageUseCase>(),
        authCubit: context.read<AuthCubit>(),
      )..bootstrap(),
      child: const _AiChatView(),
    );
  }
}

class _AiChatView extends StatefulWidget {
  const _AiChatView();

  @override
  State<_AiChatView> createState() => _AiChatViewState();
}

class _AiChatViewState extends State<_AiChatView> {
  final _composerController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _composerController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) {
        return;
      }

      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      );
    });
  }

  Future<void> _openSessionsSheet() async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (sheetContext) {
        return BlocProvider.value(
          value: context.read<AiChatCubit>(),
          child: DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.6,
            minChildSize: 0.4,
            maxChildSize: 0.9,
            builder: (_, controller) {
              return _SessionsSheet(scrollController: controller);
            },
          ),
        );
      },
    );
  }

  Future<void> _openSettings(AiChatSession session) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (sheetContext) {
        return BlocProvider.value(
          value: context.read<AiChatCubit>(),
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.viewInsetsOf(sheetContext).bottom,
            ),
            child: _SettingsSheet(session: session),
          ),
        );
      },
    );
  }

  Future<void> _editUserMessage(AiChatMessage message) async {
    final controller = TextEditingController(text: message.content);
    final next = await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Изменить сообщение'),
          content: TextField(
            controller: controller,
            autofocus: true,
            minLines: 3,
            maxLines: 8,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Текст сообщения',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: const Text('Отмена'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, controller.text),
              child: const Text('Отправить'),
            ),
          ],
        );
      },
    );
    controller.dispose();
    if (next != null && mounted) {
      await context.read<AiChatCubit>().editUserMessage(message.id, next);
    }
  }

  List<_ComposerChip> _composerChips(AiChatStatus status) {
    return [
      ...status.proactiveChips.map((chip) => _ComposerChip(
          label: chip.label,
          text: chip.prompt,
      )),
      ...status.quickPrompts.map((prompt) => _ComposerChip(
          label: prompt.label,
          text: prompt.text,
      )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AiChatCubit, AiChatState>(
      listenWhen: (prev, next) {
        if (next is AiChatReady && next.actionError != null && (prev is! AiChatReady || prev.actionError != next.actionError)) {
          return true;
        }

        if (next is AiChatReady && prev is AiChatReady && next.messages.length != prev.messages.length) {
          return true;
        }

        if (next is AiChatReady && prev is AiChatReady && next.streaming && next.messages.isNotEmpty && (next.messages.last.content != prev.messages.last.content || next.messages.last.reasoning != prev.messages.last.reasoning)) {
          return true;
        }

        return false;
      },
      listener: (context, state) {
        if (state is AiChatReady) {
          final error = state.actionError;
          if (error != null) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(content: Text(error)));
            context.read<AiChatCubit>().clearActionError();
          }
          _scrollToBottom();
        }
      },
      builder: (context, state) {
        return switch (state) {
          AiChatInitial() || AiChatBootstrapping() => Scaffold(
            appBar: AppBar(title: const Text('AI-чат')),
            body: const Center(child: CircularProgressIndicator()),
          ),
          AiChatUnavailable(:final message) => Scaffold(
            appBar: AppBar(title: const Text('AI-чат')),
            body: EmptyState(
              icon: Icons.smart_toy_outlined,
              message: message,
            ),
          ),
          AiChatFailure(:final message) => Scaffold(
            appBar: AppBar(title: const Text('AI-чат')),
            body: ErrorView(
              message: message,
              onRetry: () => context.read<AiChatCubit>().bootstrap(),
            ),
          ),
          AiChatReady(
            :final sessions,
            :final messages,
            :final selectedSession,
            :final streaming,
            :final loadingMessages,
            :final status,
          ) => Scaffold(
            appBar: AppBar(
              title: Text(selectedSession?.title.isNotEmpty == true ? selectedSession!.title : 'AI-чат'),
              actions: [
                IconButton(
                  tooltip: 'Настройки сессии',
                  onPressed: streaming || selectedSession == null
                    ? null
                    : () => _openSettings(selectedSession),
                  icon: const Icon(Icons.tune),
                ),
                IconButton(
                  tooltip: 'Сессии',
                  onPressed: streaming ? null : _openSessionsSheet,
                  icon: const Icon(Icons.forum_outlined),
                ),
                IconButton(
                  tooltip: 'Новая сессия',
                  onPressed: streaming
                    ? null
                    : () => context.read<AiChatCubit>().createSession(),
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  tooltip: 'Обновить',
                  onPressed: streaming
                    ? null
                    : () => context.read<AiChatCubit>().bootstrap(),
                  icon: const Icon(Icons.refresh),
                ),
              ],
            ),
            body: Column(
              children: [
                if (sessions.isEmpty)
                  const Expanded(
                    child: EmptyState(
                      icon: Icons.chat_bubble_outline,
                      message: 'Создайте сессию, чтобы начать диалог',
                    ),
                  )
                else if (loadingMessages)
                  const Expanded(child: Center(child: CircularProgressIndicator()))
                else
                  Expanded(
                    child: messages.isEmpty
                      ? EmptyState(
                        icon: Icons.smart_toy_outlined,
                        message: 'Напишите сообщение AI',
                      )
                      : ListView.builder(
                        controller: _scrollController,
                        padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          final message = messages[index];
                          final lastAssistant = messages.lastWhere((m) => m.isAssistant, orElse: () => message);
                          final isLastAssistant = message.isAssistant && message.id == lastAssistant.id;
                          return _MessageBubble(
                            key: ValueKey('ai-msg-$index-${message.id}'),
                            message: message,
                            isLastAssistant: isLastAssistant,
                            onRegenerate: isLastAssistant && !streaming && message.id > 0
                              ? () => context.read<AiChatCubit>().regenerateAssistant()
                              : null,
                            onContinue: isLastAssistant && !streaming && message.id > 0 && (message.continueOffered || message.content.trim().isNotEmpty)
                              ? () => context.read<AiChatCubit>().continueAssistant()
                              : null,
                            onEdit: message.isUser && !streaming && message.id > 0
                              ? () => _editUserMessage(message)
                              : null,
                            onVersionPrev: isLastAssistant && !streaming && message.versionIndex > 0
                              ? () => context.read<AiChatCubit>().shiftAssistantVersion(message.id, -1)
                              : null,
                            onVersionNext: isLastAssistant && !streaming && message.versionIndex < message.versionCount - 1
                              ? () => context.read<AiChatCubit>().shiftAssistantVersion(message.id, 1)
                              : null,
                          );
                        },
                      ),
                  ),
                if (_composerChips(status).isNotEmpty && !streaming)
                  SizedBox(
                    height: 44,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: _composerChips(status).length,
                      separatorBuilder: (_, index) => const SizedBox(width: 8),
                      itemBuilder: (context, index) {
                        final chip = _composerChips(status)[index];
                        return ActionChip(
                          label: Text(chip.label),
                          onPressed: () {
                            context.read<AiChatCubit>().sendMessage(chip.text);
                          },
                        );
                      },
                    ),
                  ),
                SafeArea(
                  top: false,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _composerController,
                            enabled: !streaming,
                            minLines: 1,
                            maxLines: 5,
                            textInputAction: TextInputAction.newline,
                            decoration: const InputDecoration(
                              hintText: 'Сообщение ...',
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        if (streaming)
                          IconButton.filled(
                            tooltip: 'Остановить',
                            onPressed: () => context.read<AiChatCubit>().stopStreaming(),
                            icon: const Icon(Icons.stop),
                          )
                        else
                          IconButton.filled(
                            tooltip: 'Отправить',
                            onPressed: () async {
                              final text = _composerController.text;
                              await context.read<AiChatCubit>().sendMessage(text);
                              if (mounted) {
                                _composerController.clear();
                              }
                            },
                            icon: const Icon(Icons.send),
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        };
      },
    );
  }
}

class _ComposerChip {
  const _ComposerChip({required this.label, required this.text});

  final String label;
  final String text;
}

class _SessionsSheet extends StatelessWidget {
  const _SessionsSheet({required this.scrollController});

  final ScrollController scrollController;

  Future<void> _rename(BuildContext context, AiChatSession session) async {
    final controller = TextEditingController(
      text: session.title.isEmpty ? '' : session.title,
    );
    final next = await showDialog<String>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Название чата'),
          content: TextField(
            controller: controller,
            autofocus: true,
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Новый чат',
            ),
            onSubmitted: (value) => Navigator.pop(dialogContext, value),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: const Text('Отмена'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, controller.text),
              child: const Text('Сохранить'),
            ),
          ],
        );
      },
    );
    controller.dispose();
    if (next != null && context.mounted) {
      await context.read<AiChatCubit>().renameSession(session.id, next);
    }
  }

  Future<void> _delete(BuildContext context, AiChatSession session) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Удалить сессию?'),
        content: Text(
          session.title.isEmpty ? 'Сессия #${session.id}' : session.title,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext, false),
            child: const Text('Отмена'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(dialogContext, true),
            child: const Text('Удалить'),
          ),
        ],
      ),
    );
    if (ok == true && context.mounted) {
      await context.read<AiChatCubit>().deleteSession(session.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AiChatCubit, AiChatState>(
      builder: (context, state) {
        if (state is! AiChatReady) {
          return const SizedBox.shrink();
        }

        final sessions = state.sessions;
        final selectedSessionId = state.selectedSessionId;
        final templates = state.status.sessionTemplates;
        final streaming = state.streaming;

        return Column(
          children: [
            const SizedBox(height: 8),
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.outlineVariant,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 8, 8),
              child: Row(
                children: [
                  Text('Сессии', style: Theme.of(context).textTheme.titleMedium),
                  const Spacer(),
                  IconButton(
                    tooltip: 'Новая',
                    onPressed: streaming ? null : () {
                      context.read<AiChatCubit>().createSession();
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            if (templates.isNotEmpty)
              SizedBox(
                height: 40,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: templates.length,
                  separatorBuilder: (_, index) => const SizedBox(width: 8),
                  itemBuilder: (context, index) {
                    final template = templates[index];
                    return Tooltip(
                      message: template.description.isEmpty ? template.title : template.description,
                      child: ActionChip(
                        label: Text(template.title),
                        onPressed: streaming
                          ? null
                          : () {
                            context.read<AiChatCubit>().createSession(templateId: template.id);
                            Navigator.pop(context);
                          },
                      ),
                    );
                  },
                ),
              ),
            const Divider(height: 1),
            Expanded(
              child: sessions.isEmpty
                ? const EmptyState(
                  icon: Icons.forum_outlined,
                  message: 'Сессий пока нет',
                )
                : ListView.builder(
                  controller: scrollController,
                  itemCount: sessions.length,
                  itemBuilder: (context, index) {
                    final session = sessions[index];
                    final selected = session.id == selectedSessionId;
                    return ListTile(
                      selected: selected,
                      title: Text(session.title.isEmpty ? 'Сессия #${session.id}' : session.title),
                      subtitle: Text(formatDateTime(session.updatedAt)),
                      onTap: streaming
                        ? null
                        : () {
                          context.read<AiChatCubit>().selectSession(session.id);
                          Navigator.pop(context);
                        },
                      trailing: PopupMenuButton<String>(
                        tooltip: 'Действия',
                        enabled: !streaming,
                        onSelected: (value) async {
                          switch (value) {
                            case 'rename':
                              await _rename(context, session);
                            case 'fork':
                              await context.read<AiChatCubit>().forkSession(session.id);
                              if (!context.mounted) {
                                return;
                              }
                              final latest = context.read<AiChatCubit>().state;
                              if (latest is AiChatReady && latest.actionError == null) {
                                Navigator.pop(context);
                              }
                            case 'delete':
                              await _delete(context, session);
                          }
                        },
                        itemBuilder: (context) => const [
                          PopupMenuItem(value: 'rename', child: Text('Переименовать')),
                          PopupMenuItem(value: 'fork', child: Text('Создать копию')),
                          PopupMenuItem(value: 'delete', child: Text('Удалить')),
                        ],
                      ),
                    );
                  },
                ),
            ),
          ],
        );
      },
    );
  }
}

class _SettingsSheet extends StatefulWidget {
  const _SettingsSheet({required this.session});

  final AiChatSession session;

  @override
  State<_SettingsSheet> createState() => _SettingsSheetState();
}

class _SettingsSheetState extends State<_SettingsSheet> {
  late final TextEditingController _controller;
  var _saving = false;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.session.systemPrompt);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    setState(() => _saving = true);
    await context.read<AiChatCubit>().updateSystemPrompt(_controller.text);
    if (!mounted) {
      return;
    }

    final state = context.read<AiChatCubit>().state;
    if (state is AiChatReady && state.actionError == null) {
      Navigator.pop(context);
      return;
    }

    setState(() => _saving = false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Container(
                width: 40,
                height: 4,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.outlineVariant,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text('Настройки чата', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 12),
            Text(
              'Системная инструкция',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _controller,
              enabled: !_saving,
              minLines: 6,
              maxLines: 12,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Стиль и правила ответов для этого чата...',
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                TextButton(
                  onPressed: _saving ? null : () => Navigator.pop(context),
                  child: const Text('Отмена'),
                ),
                const Spacer(),
                FilledButton(
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
          ],
        ),
      ),
    );
  }
}

class _MessageBubble extends StatelessWidget {
  const _MessageBubble({
    super.key,
    required this.message,
    required this.isLastAssistant,
    this.onRegenerate,
    this.onContinue,
    this.onEdit,
    this.onVersionPrev,
    this.onVersionNext,
  });

  final AiChatMessage message;
  final bool isLastAssistant;
  final VoidCallback? onRegenerate;
  final VoidCallback? onContinue;
  final VoidCallback? onEdit;
  final VoidCallback? onVersionPrev;
  final VoidCallback? onVersionNext;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isUser = message.isUser;
    final align = isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final bg = isUser ? theme.colorScheme.primaryContainer : theme.colorScheme.surfaceContainerHighest;
    final fg = isUser ? theme.colorScheme.onPrimaryContainer : theme.colorScheme.onSurface;
    final showVersions = isLastAssistant && message.versionCount > 1;
    final showActions = !message.isStreaming && (
      onEdit != null ||
      onRegenerate != null ||
      onContinue != null ||
      showVersions ||
      message.content.isNotEmpty
    );

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: align,
        children: [
          Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width * 0.88,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: bg,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isUser ? 'Вы' : 'AI',
                  style: theme.textTheme.labelSmall?.copyWith(color: fg),
                ),
                const SizedBox(height: 4),
                if (message.toolSteps.isNotEmpty) ...[
                  ...message.toolSteps.map(
                    (step) => Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: Text(
                        '${step.displayName}${step.status.isNotEmpty ? ' (${step.status})' : ''}',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                ],
                if (message.reasoning.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: _ReasoningBlock(reasoning: message.reasoning),
                  ),
                if (isUser)
                  Text(message.content, style: TextStyle(color: fg))
                else
                  MarkdownBody(
                    data: message.content.isEmpty && message.isStreaming ? '...' : message.content,
                    styleSheet: MarkdownStyleSheet.fromTheme(theme).copyWith(
                      p: theme.textTheme.bodyMedium?.copyWith(color: fg),
                    ),
                  ),
                if (message.isStreaming) ...[
                  const SizedBox(height: 8),
                  const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ],
              ],
            ),
          ),
          if (showActions)
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (showVersions) ...[
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      tooltip: 'Предыдущая версия',
                      onPressed: onVersionPrev,
                      icon: const Icon(Icons.chevron_left, size: 20),
                    ),
                    Text(
                      '${message.versionIndex + 1}/${message.versionCount}',
                      style: theme.textTheme.labelSmall,
                    ),
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      tooltip: 'Следующая версия',
                      onPressed: onVersionNext,
                      icon: const Icon(Icons.chevron_right, size: 20),
                    ),
                  ],
                  if (onRegenerate != null)
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      tooltip: 'Перегенерировать',
                      onPressed: onRegenerate,
                      icon: const Icon(Icons.refresh, size: 18),
                    ),
                  if (onContinue != null)
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      tooltip: 'Продолжить ответ',
                      onPressed: onContinue,
                      icon: const Icon(Icons.play_arrow, size: 20),
                    ),
                  if (onEdit != null)
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      tooltip: 'Изменить',
                      onPressed: onEdit,
                      icon: const Icon(Icons.edit_outlined, size: 18),
                    ),
                  if (message.content.isNotEmpty)
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      tooltip: 'Копировать',
                      onPressed: () async {
                        await Clipboard.setData(ClipboardData(text: message.content));
                        if (context.mounted) {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(
                              const SnackBar(content: Text('Скопировано')),
                            );
                        }
                      },
                      icon: const Icon(Icons.copy_outlined, size: 18),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _ReasoningBlock extends StatefulWidget {
  const _ReasoningBlock({required this.reasoning});

  final String reasoning;

  @override
  State<_ReasoningBlock> createState() => _ReasoningBlockState();
}

class _ReasoningBlockState extends State<_ReasoningBlock> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => setState(() => _expanded = !_expanded),
          borderRadius: BorderRadius.circular(6),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Row(
              children: [
                Icon(
                  _expanded ? Icons.expand_less : Icons.expand_more,
                  size: 18,
                  color: theme.colorScheme.outline,
                ),
                const SizedBox(width: 4),
                Text('Рассуждение', style: theme.textTheme.labelMedium),
              ],
            ),
          ),
        ),
        if (_expanded)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(widget.reasoning, style: theme.textTheme.bodySmall),
          ),
      ],
    );
  }
}
