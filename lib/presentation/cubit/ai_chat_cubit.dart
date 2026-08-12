import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/domain/entities/ai_chat.dart';
import 'package:katan/domain/repositories/ai_chat_repository.dart';
import 'package:katan/domain/usecases/create_ai_chat_session_usecase.dart';
import 'package:katan/domain/usecases/delete_ai_chat_session_usecase.dart';
import 'package:katan/domain/usecases/get_ai_chat_messages_usecase.dart';
import 'package:katan/domain/usecases/get_ai_chat_sessions_usecase.dart';
import 'package:katan/domain/usecases/get_ai_chat_status_usecase.dart';
import 'package:katan/domain/usecases/send_ai_chat_message_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';

sealed class AiChatState extends Equatable {
  const AiChatState();

  @override
  List<Object?> get props => [];
}

class AiChatInitial extends AiChatState {
  const AiChatInitial();
}

class AiChatBootstrapping extends AiChatState {
  const AiChatBootstrapping();
}

class AiChatUnavailable extends AiChatState {
  const AiChatUnavailable(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class AiChatReady extends AiChatState {
  const AiChatReady({
    required this.status,
    required this.sessions,
    required this.messages,
    this.selectedSessionId,
    this.streaming = false,
    this.loadingMessages = false,
    this.actionError,
  });

  final AiChatStatus status;
  final List<AiChatSession> sessions;
  final List<AiChatMessage> messages;
  final int? selectedSessionId;
  final bool streaming;
  final bool loadingMessages;
  final String? actionError;

  AiChatSession? get selectedSession {
    final id = selectedSessionId;
    if (id == null) {
      return null;
    }

    for (final session in sessions) {
      if (session.id == id) {
        return session;
      }
    }

    return null;
  }

  AiChatReady copyWith({
    AiChatStatus? status,
    List<AiChatSession>? sessions,
    List<AiChatMessage>? messages,
    int? selectedSessionId,
    bool clearSelectedSession = false,
    bool? streaming,
    bool? loadingMessages,
    String? actionError,
    bool clearActionError = false,
  }) {
    return AiChatReady(
      status: status ?? this.status,
      sessions: sessions ?? this.sessions,
      messages: messages ?? this.messages,
      selectedSessionId: clearSelectedSession ? null : (selectedSessionId ?? this.selectedSessionId),
      streaming: streaming ?? this.streaming,
      loadingMessages: loadingMessages ?? this.loadingMessages,
      actionError: clearActionError ? null : (actionError ?? this.actionError),
    );
  }

  @override
  List<Object?> get props => [
    status,
    sessions,
    messages,
    selectedSessionId,
    streaming,
    loadingMessages,
    actionError,
  ];
}

class AiChatFailure extends AiChatState {
  const AiChatFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class AiChatCubit extends Cubit<AiChatState> {
  AiChatCubit({
    required GetAiChatStatusUseCase getStatusUseCase,
    required GetAiChatSessionsUseCase getSessionsUseCase,
    required CreateAiChatSessionUseCase createSessionUseCase,
    required DeleteAiChatSessionUseCase deleteSessionUseCase,
    required GetAiChatMessagesUseCase getMessagesUseCase,
    required SendAiChatMessageUseCase sendMessageUseCase,
    required AuthCubit authCubit,
  })  : _getStatusUseCase = getStatusUseCase,
        _getSessionsUseCase = getSessionsUseCase,
        _createSessionUseCase = createSessionUseCase,
        _deleteSessionUseCase = deleteSessionUseCase,
        _getMessagesUseCase = getMessagesUseCase,
        _sendMessageUseCase = sendMessageUseCase,
        _authCubit = authCubit,
        super(const AiChatInitial());

  final GetAiChatStatusUseCase _getStatusUseCase;
  final GetAiChatSessionsUseCase _getSessionsUseCase;
  final CreateAiChatSessionUseCase _createSessionUseCase;
  final DeleteAiChatSessionUseCase _deleteSessionUseCase;
  final GetAiChatMessagesUseCase _getMessagesUseCase;
  final SendAiChatMessageUseCase _sendMessageUseCase;
  final AuthCubit _authCubit;

  AiChatStreamHandle? _streamHandle;
  StreamSubscription<AiChatChunk>? _streamSub;
  static const _streamingMessageId = -1;

  Future<void> bootstrap() async {
    emit(const AiChatBootstrapping());
    try {
      final status = await _getStatusUseCase();
      if (!status.enabled) {
        emit(const AiChatUnavailable('AI-чат отключён на сервере'));
        return;
      }

      if (!status.llmConnected) {
        emit(const AiChatUnavailable('LLM недоступен'));
        return;
      }

      if (status.hideAskAiButton) {
        emit(const AiChatUnavailable('AI-чат скрыт настройками'));
        return;
      }

      final sessions = await _getSessionsUseCase();
      emit(AiChatReady(
        status: status,
        sessions: sessions,
        messages: const [],
        selectedSessionId: sessions.isNotEmpty ? sessions.first.id : null,
      ));

      if (sessions.isNotEmpty) {
        await selectSession(sessions.first.id);
      }
    } on AuthFailure catch (e) {
      emit(AiChatFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(AiChatFailure(e.message));
    } catch (e) {
      emit(AiChatFailure(e.toString()));
    }
  }

  Future<void> refreshSessions() async {
    final current = state;
    if (current is! AiChatReady) {
      return;
    }
    try {
      final sessions = await _getSessionsUseCase();
      emit(current.copyWith(
        sessions: sessions,
        clearActionError: true,
      ));
    } on AuthFailure catch (e) {
      emit(AiChatFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(actionError: e.message));
    } catch (e) {
      emit(current.copyWith(actionError: e.toString()));
    }
  }

  Future<void> createSession({String templateId = ''}) async {
    final current = state;
    if (current is! AiChatReady || current.streaming) {
      return;
    }
    try {
      final session = await _createSessionUseCase(templateId: templateId);
      final sessions = [session, ...current.sessions];
      emit(current.copyWith(
        sessions: sessions,
        selectedSessionId: session.id,
        messages: const [],
        clearActionError: true,
      ));
    } on AuthFailure catch (e) {
      emit(AiChatFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(actionError: e.message));
    } catch (e) {
      emit(current.copyWith(actionError: e.toString()));
    }
  }

  Future<void> deleteSession(int sessionId) async {
    final current = state;
    if (current is! AiChatReady || current.streaming) {
      return;
    }

    try {
      await _deleteSessionUseCase(sessionId);
      final sessions = current.sessions.where((s) => s.id != sessionId).toList();
      final clearedSelection = current.selectedSessionId == sessionId;
      emit(current.copyWith(
        sessions: sessions,
        clearSelectedSession: clearedSelection,
        messages: clearedSelection ? const [] : null,
        clearActionError: true,
      ));
      if (clearedSelection && sessions.isNotEmpty) {
        await selectSession(sessions.first.id);
      }
    } on AuthFailure catch (e) {
      emit(AiChatFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(current.copyWith(actionError: e.message));
    } catch (e) {
      emit(current.copyWith(actionError: e.toString()));
    }
  }

  Future<void> selectSession(int sessionId) async {
    final current = state;
    if (current is! AiChatReady || current.streaming) {
      return;
    }

    if (current.selectedSessionId == sessionId && current.messages.isNotEmpty) {
      return;
    }

    emit(current.copyWith(
      selectedSessionId: sessionId,
      loadingMessages: true,
      clearActionError: true,
    ));

    try {
      final messages = await _getMessagesUseCase(sessionId);
      final latest = state;
      if (latest is AiChatReady) {
        emit(latest.copyWith(
          messages: messages,
          loadingMessages: false,
          selectedSessionId: sessionId,
        ));
      }
    } on AuthFailure catch (e) {
      emit(AiChatFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      final latest = state;
      if (latest is AiChatReady) {
        emit(latest.copyWith(
          loadingMessages: false,
          actionError: e.message,
        ));
      }
    } catch (e) {
      final latest = state;
      if (latest is AiChatReady) {
        emit(latest.copyWith(
          loadingMessages: false,
          actionError: e.toString(),
        ));
      }
    }
  }

  Future<void> sendMessage(String text) async {
    final current = state;
    if (current is! AiChatReady || current.streaming) {
      return;
    }

    final trimmed = text.trim();
    if (trimmed.isEmpty) {
      return;
    }

    var sessionId = current.selectedSessionId;
    if (sessionId == null) {
      try {
        final session = await _createSessionUseCase();
        sessionId = session.id;
        emit(current.copyWith(
          sessions: [session, ...current.sessions],
          selectedSessionId: session.id,
          messages: const [],
        ));
      } on Failure catch (e) {
        emit(current.copyWith(actionError: e.message));
        return;
      }
    }

    final ready = state;
    if (ready is! AiChatReady) {
      return;
    }

    final userMessage = AiChatMessage(
      id: DateTime.now().millisecondsSinceEpoch,
      role: 'user',
      content: trimmed,
      reasoning: '',
      createdAt: DateTime.now(),
      toolSteps: const [],
    );
    final assistantDraft = AiChatMessage(
      id: _streamingMessageId,
      role: 'assistant',
      content: '',
      reasoning: '',
      createdAt: DateTime.now(),
      toolSteps: const [],
      isStreaming: true,
    );

    emit(ready.copyWith(
      messages: [...ready.messages, userMessage, assistantDraft],
      streaming: true,
      clearActionError: true,
    ));

    try {
      final handle = await _sendMessageUseCase(
        sessionId: sessionId,
        userMessage: trimmed,
      );
      _streamHandle = handle;
      _streamSub = handle.chunks.listen(
        _onChunk,
        onError: _onStreamError,
        onDone: _onStreamDone,
        cancelOnError: true,
      );
    } on AuthFailure catch (e) {
      emit(AiChatFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      _finishStreamWithError(e.message);
    } catch (e) {
      _finishStreamWithError(e.toString());
    }
  }

  Future<void> stopStreaming() async {
    final handle = _streamHandle;
    _streamHandle = null;
    await _streamSub?.cancel();
    _streamSub = null;
    if (handle != null) {
      try {
        await handle.cancel();
      } catch (_) {}
    }

    final current = state;
    if (current is AiChatReady && current.streaming) {
      final messages = current.messages.map((m) {
        if (m.id == _streamingMessageId) {
          return m.copyWith(isStreaming: false);
        }

        return m;
      }).toList();
      emit(current.copyWith(messages: messages, streaming: false));
    }
  }

  void _onChunk(AiChatChunk chunk) {
    final current = state;
    if (current is! AiChatReady) {
      return;
    }

    var sessions = current.sessions;
    if (chunk.sessionTitle.isNotEmpty && chunk.sessionId != 0) {
      sessions = sessions.map((s) {
        if (s.id == chunk.sessionId) {
          return AiChatSession(
            id: s.id,
            title: chunk.sessionTitle,
            updatedAt: s.updatedAt,
            systemPrompt: s.systemPrompt,
            mapContext: s.mapContext,
          );
        }
        return s;
      }).toList();
    }

    final messages = [...current.messages];
    final index = messages.indexWhere((m) => m.id == _streamingMessageId);
    if (index < 0) {
      return;
    }

    var assistant = messages[index];

    switch (chunk.kind) {
      case AiChatChunkKind.text:
        if (chunk.content.isNotEmpty) {
          assistant = assistant.copyWith(content: '${assistant.content}${chunk.content}');
        }
      case AiChatChunkKind.reasoning:
        if (chunk.reasoning.isNotEmpty) {
          assistant = assistant.copyWith(reasoning: '${assistant.reasoning}${chunk.reasoning}');
        } else if (chunk.content.isNotEmpty) {
          assistant = assistant.copyWith(reasoning: '${assistant.reasoning}${chunk.content}');
        }
      case AiChatChunkKind.notice:
        break;
      case AiChatChunkKind.toolStatus:
        if (chunk.toolDisplayName != null) {
          final steps = [
            ...assistant.toolSteps,
            AiChatToolStep(
              displayName: chunk.toolDisplayName!,
              status: chunk.toolStatus ?? '',
              category: '',
            ),
          ];
          assistant = assistant.copyWith(toolSteps: steps);
        }
    }

    if (chunk.assistantFinalText != null) {
      assistant = assistant.copyWith(
        content: chunk.assistantFinalText!,
        reasoning: chunk.assistantFinalReasoning ?? assistant.reasoning,
        toolSteps: chunk.assistantFinalToolSteps.isNotEmpty ? chunk.assistantFinalToolSteps : assistant.toolSteps,
      );
    }

    if (chunk.done) {
      assistant = assistant.copyWith(isStreaming: false);
      messages[index] = assistant;
      emit(current.copyWith(
        sessions: sessions,
        messages: messages,
        streaming: false,
      ));
      unawaited(_reloadAfterStream(chunk.sessionId));
      return;
    }

    messages[index] = assistant;
    emit(current.copyWith(sessions: sessions, messages: messages));
  }

  Future<void> _reloadAfterStream(int sessionId) async {
    await _streamSub?.cancel();
    _streamSub = null;
    _streamHandle = null;

    final current = state;
    if (current is! AiChatReady || sessionId == 0) {
      return;
    }

    try {
      final messages = await _getMessagesUseCase(sessionId);
      final sessions = await _getSessionsUseCase();
      final latest = state;
      if (latest is AiChatReady) {
        emit(latest.copyWith(
          messages: messages,
          sessions: sessions,
          streaming: false,
        ));
      }
    } catch (_) {

    }
  }

  void _onStreamError(Object error) {
    final message = error is Failure ? error.message : error.toString();
    _finishStreamWithError(message);
  }

  void _onStreamDone() {
    final current = state;
    if (current is AiChatReady && current.streaming) {
      final messages = current.messages.map((m) {
        if (m.id == _streamingMessageId) {
          return m.copyWith(isStreaming: false);
        }
        return m;
      }).toList();
      emit(current.copyWith(messages: messages, streaming: false));
    }
    _streamSub = null;
    _streamHandle = null;
  }

  void _finishStreamWithError(String message) {
    unawaited(_streamSub?.cancel());
    _streamSub = null;
    _streamHandle = null;

    final current = state;
    if (current is AiChatReady) {
      final messages = current.messages.map((m) {
        if (m.id == _streamingMessageId) {
          return m.copyWith(isStreaming: false);
        }
        return m;
      }).toList();
      emit(current.copyWith(
        messages: messages,
        streaming: false,
        actionError: message,
      ));
    }
  }

  @override
  Future<void> close() async {
    await stopStreaming();
    return super.close();
  }
}
