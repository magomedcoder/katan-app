import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:katan/app/di.dart';
import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/usecases/create_ai_chat_session_usecase.dart';
import 'package:katan/domain/usecases/delete_ai_chat_session_usecase.dart';
import 'package:katan/domain/usecases/get_ai_chat_messages_usecase.dart';
import 'package:katan/domain/usecases/get_ai_chat_sessions_usecase.dart';
import 'package:katan/domain/usecases/get_ai_chat_status_usecase.dart';
import 'package:katan/domain/usecases/send_ai_chat_message_usecase.dart';
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
        getMessagesUseCase: getIt<GetAiChatMessagesUseCase>(),
        sendMessageUseCase: getIt<SendAiChatMessageUseCase>(),
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

  Future<void> _openSessionsSheet(AiChatReady state) async {
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
              return _SessionsSheet(
                scrollController: controller,
                sessions: state.sessions,
                selectedSessionId: state.selectedSessionId,
                templates: state.status.sessionTemplates,
                streaming: state.streaming,
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AiChatCubit, AiChatState>(
      listenWhen: (prev, next) {
        if (next is AiChatReady && next.actionError != null) {
          return true;
        }

        if (next is AiChatReady && prev is AiChatReady && next.messages.length != prev.messages.length) {
          return true;
        }

        if (next is AiChatReady && prev is AiChatReady && next.streaming && next.messages.isNotEmpty) {
          return true;
        }

        return false;
      },
      listener: (context, state) {
        if (state is AiChatReady) {
          if (state.actionError != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.actionError!)),
            );
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
                  tooltip: 'Сессии',
                  onPressed: streaming
                    ? null
                    : () => _openSessionsSheet(state),
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
                        message: status.quickPrompts.isEmpty ? 'Напишите сообщение AI' : 'Выберите быстрый запрос или напишите сообщение',
                      )
                      : ListView.builder(
                        controller: _scrollController,
                        padding: const EdgeInsets.fromLTRB(12, 12, 12, 8),
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          return _MessageBubble(
                            message: messages[index],
                          );
                        },
                      ),
                  ),
                if (status.quickPrompts.isNotEmpty && messages.isEmpty && !streaming)
                  SizedBox(
                    height: 44,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      itemCount: status.quickPrompts.length,
                      separatorBuilder: (_, index) => const SizedBox(width: 8),
                      itemBuilder: (context, index) {
                        final prompt = status.quickPrompts[index];
                        return ActionChip(
                          label: Text(prompt.label),
                          onPressed: () {
                            _composerController.text = prompt.text;
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

class _SessionsSheet extends StatelessWidget {
  const _SessionsSheet({
    required this.scrollController,
    required this.sessions,
    required this.selectedSessionId,
    required this.templates,
    required this.streaming,
  });

  final ScrollController scrollController;
  final List<AiChatSession> sessions;
  final int? selectedSessionId;
  final List<AiChatSessionTemplate> templates;
  final bool streaming;

  @override
  Widget build(BuildContext context) {
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
                return ActionChip(
                  label: Text(template.title),
                  onPressed: streaming
                    ? null
                    : () {
                      context.read<AiChatCubit>().createSession(templateId: template.id);
                      Navigator.pop(context);
                    },
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
                  trailing: IconButton(
                    tooltip: 'Удалить',
                    onPressed: streaming
                      ? null
                      : () async {
                          final ok = await showDialog<bool>(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Удалить сессию?'),
                              content: Text(
                                session.title.isEmpty ? 'Сессия #${session.id}' : session.title,
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, false),
                                  child: const Text('Отмена'),
                                ),
                                FilledButton(
                                  onPressed: () => Navigator.pop(context, true),
                                  child: const Text('Удалить'),
                                ),
                              ],
                            ),
                          );
                          if (ok == true && context.mounted) {
                            await context.read<AiChatCubit>().deleteSession(session.id);
                          }
                        },
                    icon: const Icon(Icons.delete_outline),
                  ),
                );
              },
            ),
        ),
      ],
    );
  }
}

class _MessageBubble extends StatelessWidget {
  const _MessageBubble({required this.message});

  final AiChatMessage message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isUser = message.isUser;
    final align = isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final bg = isUser ? theme.colorScheme.primaryContainer : theme.colorScheme.surfaceContainerHighest;
    final fg = isUser ? theme.colorScheme.onPrimaryContainer : theme.colorScheme.onSurface;

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
                    child: ExpansionTile(
                      tilePadding: EdgeInsets.zero,
                      childrenPadding: EdgeInsets.zero,
                      dense: true,
                      title: Text(
                        'Рассуждение',
                        style: theme.textTheme.labelMedium,
                      ),
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            message.reasoning,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
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
        ],
      ),
    );
  }
}
