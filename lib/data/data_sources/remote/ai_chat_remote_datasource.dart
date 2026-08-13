import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/core/network/grpc_client_factory.dart';
import 'package:katan/core/storage/session_storage.dart';
import 'package:katan/data/mappers/ai_chat_mappers.dart';
import 'package:katan/domain/entities/ai_chat.dart' as domain;
import 'package:katan/domain/repositories/ai_chat_repository.dart';
import 'package:katan/generated/pb/ai_chat.pbgrpc.dart';

class AiChatRemoteDataSource {
  AiChatRemoteDataSource(this._factory, this._storage);

  final GrpcClientFactory _factory;
  final SessionStorage _storage;

  Future<domain.AiChatStatus> getStatus() async {
    try {
      final client = await _client();
      final response = await client.getStatus(
        AiChatStatusRequest(),
        options: await _authOptions(),
      );
      return mapAiChatStatus(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось получить статус AI-чата');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<List<domain.AiChatSession>> getSessions() async {
    try {
      final client = await _client();
      final response = await client.getSessions(
        AiChatGetSessionsRequest(),
        options: await _authOptions(),
      );
      return response.sessions.map(mapAiChatSession).toList();
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить сессии');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.AiChatSession> createSession({
    String title = '',
    String systemPrompt = '',
    String templateId = '',
    domain.AiChatMapContext? mapContext,
  }) async {
    try {
      final client = await _client();
      final request = AiChatCreateSessionRequest(
        title: title,
        systemPrompt: systemPrompt,
        templateId: templateId,
      );
      final pbContext = toPbMapContext(mapContext);
      if (pbContext != null) {
        request.mapContext = pbContext;
      }
      final response = await client.createSession(
        request,
        options: await _authOptions(),
      );
      return mapAiChatSession(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось создать сессию');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<void> deleteSession(int sessionId) async {
    try {
      final client = await _client();
      await client.deleteSession(
        AiChatDeleteSessionRequest(sessionId: Int64(sessionId)),
        options: await _authOptions(),
      );
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось удалить сессию');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<List<domain.AiChatMessage>> getMessages(int sessionId) async {
    try {
      final client = await _client();
      final response = await client.getMessages(
        AiChatGetMessagesRequest(sessionId: Int64(sessionId)),
        options: await _authOptions(),
      );
      return response.messages.map(mapAiChatMessage).toList();
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить сообщения');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<AiChatStreamHandle> sendMessage({
    required int sessionId,
    required String userMessage,
    List<int> attachmentFileIds = const [],
    domain.AiChatMapContext? mapContext,
  }) async {
    try {
      final client = await _client();
      final request = AiChatSendRequest(
        sessionId: Int64(sessionId),
        userMessage: userMessage,
        attachmentFileIds: attachmentFileIds.map(Int64.new),
      );
      final pbContext = toPbMapContext(mapContext);
      if (pbContext != null) {
        request.mapContext = pbContext;
      }

      final response = client.sendMessage(
        request,
        options: await _authOptions(timeout: const Duration(minutes: 10)),
      );

      return _wrapChunkStream(response, fallback: 'Ошибка стрима AI-чата');
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось отправить сообщение');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.AiChatSession> updateSessionTitle({
    required int sessionId,
    required String title,
  }) async {
    try {
      final client = await _client();
      final response = await client.updateSessionTitle(
        AiChatUpdateSessionTitleRequest(
          sessionId: Int64(sessionId),
          title: title,
        ),
        options: await _authOptions(),
      );
      return mapAiChatSession(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось переименовать сессию');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.AiChatSession> updateSessionSystemPrompt({
    required int sessionId,
    required String systemPrompt,
  }) async {
    try {
      final client = await _client();
      final response = await client.updateSessionSystemPrompt(
        AiChatUpdateSessionSystemPromptRequest(
          sessionId: Int64(sessionId),
          systemPrompt: systemPrompt,
        ),
        options: await _authOptions(),
      );
      return mapAiChatSession(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось сохранить системную инструкцию');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<domain.AiChatSession> forkSession(int sessionId) async {
    try {
      final client = await _client();
      final response = await client.forkSession(
        AiChatForkSessionRequest(sessionId: Int64(sessionId)),
        options: await _authOptions(),
      );
      return mapAiChatSession(response);
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось создать копию сессии');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<int> listAssistantRegenerationCount({
    required int sessionId,
    required int assistantMessageId,
  }) async {
    try {
      final client = await _client();
      final response = await client.listAssistantRegenerations(
        AiChatListAssistantRegenerationsRequest(
          sessionId: Int64(sessionId),
          assistantMessageId: Int64(assistantMessageId),
        ),
        options: await _authOptions(),
      );
      return response.regenerations.length;
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить версии ответа');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<List<domain.AiChatMessage>> getMessagesAtAssistantVersion({
    required int sessionId,
    required int assistantMessageId,
    required int versionIndex,
  }) async {
    try {
      final client = await _client();
      final response = await client.getMessagesAtAssistantVersion(
        AiChatGetMessagesAtAssistantVersionRequest(
          sessionId: Int64(sessionId),
          assistantMessageId: Int64(assistantMessageId),
          versionIndex: versionIndex,
        ),
        options: await _authOptions(),
      );
      return response.messages.map(mapAiChatMessage).toList();
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось загрузить версию ответа');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<AiChatStreamHandle> regenerateAssistant({
    required int sessionId,
    required int assistantMessageId,
  }) async {
    try {
      final client = await _client();
      final response = client.regenerateAssistant(
        AiChatRegenerateRequest(
          sessionId: Int64(sessionId),
          assistantMessageId: Int64(assistantMessageId),
        ),
        options: await _authOptions(timeout: const Duration(minutes: 10)),
      );
      return _wrapChunkStream(response, fallback: 'Ошибка стрима AI-чата');
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось перегенерировать ответ');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<AiChatStreamHandle> continueAssistant({
    required int sessionId,
    required int assistantMessageId,
  }) async {
    try {
      final client = await _client();
      final response = client.continueAssistant(
        AiChatContinueRequest(
          sessionId: Int64(sessionId),
          assistantMessageId: Int64(assistantMessageId),
        ),
        options: await _authOptions(timeout: const Duration(minutes: 10)),
      );
      return _wrapChunkStream(response, fallback: 'Ошибка стрима AI-чата');
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось продолжить ответ');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  Future<AiChatStreamHandle> editUserMessageAndContinue({
    required int sessionId,
    required int userMessageId,
    required String newContent,
  }) async {
    try {
      final client = await _client();
      final response = client.editUserMessageAndContinue(
        AiChatEditUserMessageRequest(
          sessionId: Int64(sessionId),
          userMessageId: Int64(userMessageId),
          newContent: newContent,
        ),
        options: await _authOptions(timeout: const Duration(minutes: 10)),
      );
      return _wrapChunkStream(response, fallback: 'Ошибка стрима AI-чата');
    } on Failure {
      rethrow;
    } on GrpcError catch (e) {
      throw _mapGrpc(e, 'Не удалось изменить сообщение');
    } catch (e) {
      throw NetworkFailure(e.toString());
    }
  }

  AiChatStreamHandle _wrapChunkStream(
    ResponseStream<AiChatChunk> response, {
    required String fallback,
  }) {
    return AiChatStreamHandle(
      chunks: response.map(mapAiChatChunk).handleError((Object error) {
        if (error is GrpcError) {
          throw _mapGrpc(error, fallback);
        }
        throw NetworkFailure(error.toString());
      }),
      cancel: () async {
        await response.cancel();
      },
    );
  }

  Future<AiChatServiceClient> _client() async {
    await _requireToken();
    return AiChatServiceClient(_factory.requireChannel());
  }

  Future<CallOptions> _authOptions({Duration? timeout}) async {
    final token = await _requireToken();
    return _factory.authOptions(token, timeout: timeout);
  }

  Future<String> _requireToken() async {
    final token = await _storage.accessToken;
    if (token == null || token.isEmpty) {
      throw const AuthFailure('Сессия не найдена');
    }

    return token;
  }

  Failure _mapGrpc(GrpcError e, String fallback) {
    if (e.code == StatusCode.unauthenticated) {
      return AuthFailure(e.message ?? 'Сессия истекла');
    }

    if (e.code == StatusCode.cancelled) {
      return const NetworkFailure('Стрим отменён');
    }

    return ServerFailure(e.message ?? fallback);
  }
}
