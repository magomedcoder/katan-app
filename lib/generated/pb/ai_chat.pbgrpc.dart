// This is a generated file - do not edit.
//
// Generated from ai_chat.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ai_chat.pb.dart' as $0;
import 'common.pb.dart' as $1;

export 'ai_chat.pb.dart';

@$pb.GrpcServiceName('katan.AiChatService')
class AiChatServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  AiChatServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.AiChatStatusResponse> getStatus(
    $0.AiChatStatusRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatGetSessionsResponse> getSessions(
    $0.AiChatGetSessionsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getSessions, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatSession> createSession(
    $0.AiChatCreateSessionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createSession, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteSession(
    $0.AiChatDeleteSessionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteSession, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatSession> updateSessionTitle(
    $0.AiChatUpdateSessionTitleRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateSessionTitle, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatSession> updateSessionSystemPrompt(
    $0.AiChatUpdateSessionSystemPromptRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateSessionSystemPrompt, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AiChatGetMessagesResponse> getMessages(
    $0.AiChatGetMessagesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getMessages, request, options: options);
  }

  $grpc.ResponseStream<$0.AiChatChunk> sendMessage(
    $0.AiChatSendRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$sendMessage, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.AiChatChunk> regenerateAssistant(
    $0.AiChatRegenerateRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$regenerateAssistant, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.AiChatChunk> continueAssistant(
    $0.AiChatContinueRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$continueAssistant, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.AiChatChunk> editUserMessageAndContinue(
    $0.AiChatEditUserMessageRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$editUserMessageAndContinue, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.AiChatListAssistantRegenerationsResponse>
      listAssistantRegenerations(
    $0.AiChatListAssistantRegenerationsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listAssistantRegenerations, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AiChatGetMessagesResponse>
      getMessagesAtAssistantVersion(
    $0.AiChatGetMessagesAtAssistantVersionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getMessagesAtAssistantVersion, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AiChatListMCPServersResponse> listMCPServers(
    $0.AiChatListMCPServersRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listMCPServers, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatPutSessionFileResponse> putSessionFile(
    $0.AiChatPutSessionFileRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$putSessionFile, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatGetSessionFileResponse> getSessionFile(
    $0.AiChatGetSessionFileRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getSessionFile, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatListMcpServersAdminResponse>
      listMcpServersAdmin(
    $0.AiChatListMcpServersAdminRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listMcpServersAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatGetMcpServerAdminResponse> getMcpServerAdmin(
    $0.AiChatGetMcpServerAdminRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getMcpServerAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatGetMcpServerAdminResponse> createMcpServerAdmin(
    $0.AiChatCreateMcpServerAdminRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createMcpServerAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatGetMcpServerAdminResponse> updateMcpServerAdmin(
    $0.AiChatUpdateMcpServerAdminRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateMcpServerAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteMcpServerAdmin(
    $0.AiChatDeleteMcpServerAdminRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteMcpServerAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatListLLMProvidersAdminResponse>
      listLLMProvidersAdmin(
    $0.AiChatListLLMProvidersAdminRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listLLMProvidersAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatGetLLMProviderAdminResponse>
      updateLLMProviderAdmin(
    $0.AiChatUpdateLLMProviderAdminRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateLLMProviderAdmin, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AiChatProbeLLMProviderAdminResponse>
      probeLLMProviderAdmin(
    $0.AiChatProbeLLMProviderAdminRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$probeLLMProviderAdmin, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatObjectReportResponse> getObjectReport(
    $0.AiChatObjectReportRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getObjectReport, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatSession> forkSession(
    $0.AiChatForkSessionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$forkSession, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatAskSyncResponse> askSync(
    $0.AiChatAskSyncRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$askSync, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatEnqueueAskResponse> enqueueAsk(
    $0.AiChatEnqueueAskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$enqueueAsk, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatGetBackgroundAskStatusResponse>
      getBackgroundAskStatus(
    $0.AiChatGetBackgroundAskStatusRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getBackgroundAskStatus, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AiChatListBackgroundJobsResponse> listBackgroundJobs(
    $0.AiChatListBackgroundJobsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listBackgroundJobs, request, options: options);
  }

  $grpc.ResponseFuture<$0.AiChatGetTaskChecklistSuggestionsResponse>
      getTaskChecklistSuggestions(
    $0.AiChatGetTaskChecklistSuggestionsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTaskChecklistSuggestions, request,
        options: options);
  }

  // method descriptors

  static final _$getStatus =
      $grpc.ClientMethod<$0.AiChatStatusRequest, $0.AiChatStatusResponse>(
          '/katan.AiChatService/GetStatus',
          ($0.AiChatStatusRequest value) => value.writeToBuffer(),
          $0.AiChatStatusResponse.fromBuffer);
  static final _$getSessions = $grpc.ClientMethod<$0.AiChatGetSessionsRequest,
          $0.AiChatGetSessionsResponse>(
      '/katan.AiChatService/GetSessions',
      ($0.AiChatGetSessionsRequest value) => value.writeToBuffer(),
      $0.AiChatGetSessionsResponse.fromBuffer);
  static final _$createSession =
      $grpc.ClientMethod<$0.AiChatCreateSessionRequest, $0.AiChatSession>(
          '/katan.AiChatService/CreateSession',
          ($0.AiChatCreateSessionRequest value) => value.writeToBuffer(),
          $0.AiChatSession.fromBuffer);
  static final _$deleteSession =
      $grpc.ClientMethod<$0.AiChatDeleteSessionRequest, $1.Empty>(
          '/katan.AiChatService/DeleteSession',
          ($0.AiChatDeleteSessionRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$updateSessionTitle =
      $grpc.ClientMethod<$0.AiChatUpdateSessionTitleRequest, $0.AiChatSession>(
          '/katan.AiChatService/UpdateSessionTitle',
          ($0.AiChatUpdateSessionTitleRequest value) => value.writeToBuffer(),
          $0.AiChatSession.fromBuffer);
  static final _$updateSessionSystemPrompt = $grpc.ClientMethod<
          $0.AiChatUpdateSessionSystemPromptRequest, $0.AiChatSession>(
      '/katan.AiChatService/UpdateSessionSystemPrompt',
      ($0.AiChatUpdateSessionSystemPromptRequest value) =>
          value.writeToBuffer(),
      $0.AiChatSession.fromBuffer);
  static final _$getMessages = $grpc.ClientMethod<$0.AiChatGetMessagesRequest,
          $0.AiChatGetMessagesResponse>(
      '/katan.AiChatService/GetMessages',
      ($0.AiChatGetMessagesRequest value) => value.writeToBuffer(),
      $0.AiChatGetMessagesResponse.fromBuffer);
  static final _$sendMessage =
      $grpc.ClientMethod<$0.AiChatSendRequest, $0.AiChatChunk>(
          '/katan.AiChatService/SendMessage',
          ($0.AiChatSendRequest value) => value.writeToBuffer(),
          $0.AiChatChunk.fromBuffer);
  static final _$regenerateAssistant =
      $grpc.ClientMethod<$0.AiChatRegenerateRequest, $0.AiChatChunk>(
          '/katan.AiChatService/RegenerateAssistant',
          ($0.AiChatRegenerateRequest value) => value.writeToBuffer(),
          $0.AiChatChunk.fromBuffer);
  static final _$continueAssistant =
      $grpc.ClientMethod<$0.AiChatContinueRequest, $0.AiChatChunk>(
          '/katan.AiChatService/ContinueAssistant',
          ($0.AiChatContinueRequest value) => value.writeToBuffer(),
          $0.AiChatChunk.fromBuffer);
  static final _$editUserMessageAndContinue =
      $grpc.ClientMethod<$0.AiChatEditUserMessageRequest, $0.AiChatChunk>(
          '/katan.AiChatService/EditUserMessageAndContinue',
          ($0.AiChatEditUserMessageRequest value) => value.writeToBuffer(),
          $0.AiChatChunk.fromBuffer);
  static final _$listAssistantRegenerations = $grpc.ClientMethod<
          $0.AiChatListAssistantRegenerationsRequest,
          $0.AiChatListAssistantRegenerationsResponse>(
      '/katan.AiChatService/ListAssistantRegenerations',
      ($0.AiChatListAssistantRegenerationsRequest value) =>
          value.writeToBuffer(),
      $0.AiChatListAssistantRegenerationsResponse.fromBuffer);
  static final _$getMessagesAtAssistantVersion = $grpc.ClientMethod<
          $0.AiChatGetMessagesAtAssistantVersionRequest,
          $0.AiChatGetMessagesResponse>(
      '/katan.AiChatService/GetMessagesAtAssistantVersion',
      ($0.AiChatGetMessagesAtAssistantVersionRequest value) =>
          value.writeToBuffer(),
      $0.AiChatGetMessagesResponse.fromBuffer);
  static final _$listMCPServers = $grpc.ClientMethod<
          $0.AiChatListMCPServersRequest, $0.AiChatListMCPServersResponse>(
      '/katan.AiChatService/ListMCPServers',
      ($0.AiChatListMCPServersRequest value) => value.writeToBuffer(),
      $0.AiChatListMCPServersResponse.fromBuffer);
  static final _$putSessionFile = $grpc.ClientMethod<
          $0.AiChatPutSessionFileRequest, $0.AiChatPutSessionFileResponse>(
      '/katan.AiChatService/PutSessionFile',
      ($0.AiChatPutSessionFileRequest value) => value.writeToBuffer(),
      $0.AiChatPutSessionFileResponse.fromBuffer);
  static final _$getSessionFile = $grpc.ClientMethod<
          $0.AiChatGetSessionFileRequest, $0.AiChatGetSessionFileResponse>(
      '/katan.AiChatService/GetSessionFile',
      ($0.AiChatGetSessionFileRequest value) => value.writeToBuffer(),
      $0.AiChatGetSessionFileResponse.fromBuffer);
  static final _$listMcpServersAdmin = $grpc.ClientMethod<
          $0.AiChatListMcpServersAdminRequest,
          $0.AiChatListMcpServersAdminResponse>(
      '/katan.AiChatService/ListMcpServersAdmin',
      ($0.AiChatListMcpServersAdminRequest value) => value.writeToBuffer(),
      $0.AiChatListMcpServersAdminResponse.fromBuffer);
  static final _$getMcpServerAdmin = $grpc.ClientMethod<
          $0.AiChatGetMcpServerAdminRequest,
          $0.AiChatGetMcpServerAdminResponse>(
      '/katan.AiChatService/GetMcpServerAdmin',
      ($0.AiChatGetMcpServerAdminRequest value) => value.writeToBuffer(),
      $0.AiChatGetMcpServerAdminResponse.fromBuffer);
  static final _$createMcpServerAdmin = $grpc.ClientMethod<
          $0.AiChatCreateMcpServerAdminRequest,
          $0.AiChatGetMcpServerAdminResponse>(
      '/katan.AiChatService/CreateMcpServerAdmin',
      ($0.AiChatCreateMcpServerAdminRequest value) => value.writeToBuffer(),
      $0.AiChatGetMcpServerAdminResponse.fromBuffer);
  static final _$updateMcpServerAdmin = $grpc.ClientMethod<
          $0.AiChatUpdateMcpServerAdminRequest,
          $0.AiChatGetMcpServerAdminResponse>(
      '/katan.AiChatService/UpdateMcpServerAdmin',
      ($0.AiChatUpdateMcpServerAdminRequest value) => value.writeToBuffer(),
      $0.AiChatGetMcpServerAdminResponse.fromBuffer);
  static final _$deleteMcpServerAdmin =
      $grpc.ClientMethod<$0.AiChatDeleteMcpServerAdminRequest, $1.Empty>(
          '/katan.AiChatService/DeleteMcpServerAdmin',
          ($0.AiChatDeleteMcpServerAdminRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$listLLMProvidersAdmin = $grpc.ClientMethod<
          $0.AiChatListLLMProvidersAdminRequest,
          $0.AiChatListLLMProvidersAdminResponse>(
      '/katan.AiChatService/ListLLMProvidersAdmin',
      ($0.AiChatListLLMProvidersAdminRequest value) => value.writeToBuffer(),
      $0.AiChatListLLMProvidersAdminResponse.fromBuffer);
  static final _$updateLLMProviderAdmin = $grpc.ClientMethod<
          $0.AiChatUpdateLLMProviderAdminRequest,
          $0.AiChatGetLLMProviderAdminResponse>(
      '/katan.AiChatService/UpdateLLMProviderAdmin',
      ($0.AiChatUpdateLLMProviderAdminRequest value) => value.writeToBuffer(),
      $0.AiChatGetLLMProviderAdminResponse.fromBuffer);
  static final _$probeLLMProviderAdmin = $grpc.ClientMethod<
          $0.AiChatProbeLLMProviderAdminRequest,
          $0.AiChatProbeLLMProviderAdminResponse>(
      '/katan.AiChatService/ProbeLLMProviderAdmin',
      ($0.AiChatProbeLLMProviderAdminRequest value) => value.writeToBuffer(),
      $0.AiChatProbeLLMProviderAdminResponse.fromBuffer);
  static final _$getObjectReport = $grpc.ClientMethod<
          $0.AiChatObjectReportRequest, $0.AiChatObjectReportResponse>(
      '/katan.AiChatService/GetObjectReport',
      ($0.AiChatObjectReportRequest value) => value.writeToBuffer(),
      $0.AiChatObjectReportResponse.fromBuffer);
  static final _$forkSession =
      $grpc.ClientMethod<$0.AiChatForkSessionRequest, $0.AiChatSession>(
          '/katan.AiChatService/ForkSession',
          ($0.AiChatForkSessionRequest value) => value.writeToBuffer(),
          $0.AiChatSession.fromBuffer);
  static final _$askSync =
      $grpc.ClientMethod<$0.AiChatAskSyncRequest, $0.AiChatAskSyncResponse>(
          '/katan.AiChatService/AskSync',
          ($0.AiChatAskSyncRequest value) => value.writeToBuffer(),
          $0.AiChatAskSyncResponse.fromBuffer);
  static final _$enqueueAsk = $grpc.ClientMethod<$0.AiChatEnqueueAskRequest,
          $0.AiChatEnqueueAskResponse>(
      '/katan.AiChatService/EnqueueAsk',
      ($0.AiChatEnqueueAskRequest value) => value.writeToBuffer(),
      $0.AiChatEnqueueAskResponse.fromBuffer);
  static final _$getBackgroundAskStatus = $grpc.ClientMethod<
          $0.AiChatGetBackgroundAskStatusRequest,
          $0.AiChatGetBackgroundAskStatusResponse>(
      '/katan.AiChatService/GetBackgroundAskStatus',
      ($0.AiChatGetBackgroundAskStatusRequest value) => value.writeToBuffer(),
      $0.AiChatGetBackgroundAskStatusResponse.fromBuffer);
  static final _$listBackgroundJobs = $grpc.ClientMethod<
          $0.AiChatListBackgroundJobsRequest,
          $0.AiChatListBackgroundJobsResponse>(
      '/katan.AiChatService/ListBackgroundJobs',
      ($0.AiChatListBackgroundJobsRequest value) => value.writeToBuffer(),
      $0.AiChatListBackgroundJobsResponse.fromBuffer);
  static final _$getTaskChecklistSuggestions = $grpc.ClientMethod<
          $0.AiChatGetTaskChecklistSuggestionsRequest,
          $0.AiChatGetTaskChecklistSuggestionsResponse>(
      '/katan.AiChatService/GetTaskChecklistSuggestions',
      ($0.AiChatGetTaskChecklistSuggestionsRequest value) =>
          value.writeToBuffer(),
      $0.AiChatGetTaskChecklistSuggestionsResponse.fromBuffer);
}

@$pb.GrpcServiceName('katan.AiChatService')
abstract class AiChatServiceBase extends $grpc.Service {
  $core.String get $name => 'katan.AiChatService';

  AiChatServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.AiChatStatusRequest, $0.AiChatStatusResponse>(
            'GetStatus',
            getStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AiChatStatusRequest.fromBuffer(value),
            ($0.AiChatStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatGetSessionsRequest,
            $0.AiChatGetSessionsResponse>(
        'GetSessions',
        getSessions_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatGetSessionsRequest.fromBuffer(value),
        ($0.AiChatGetSessionsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AiChatCreateSessionRequest, $0.AiChatSession>(
            'CreateSession',
            createSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AiChatCreateSessionRequest.fromBuffer(value),
            ($0.AiChatSession value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatDeleteSessionRequest, $1.Empty>(
        'DeleteSession',
        deleteSession_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatDeleteSessionRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatUpdateSessionTitleRequest,
            $0.AiChatSession>(
        'UpdateSessionTitle',
        updateSessionTitle_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatUpdateSessionTitleRequest.fromBuffer(value),
        ($0.AiChatSession value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatUpdateSessionSystemPromptRequest,
            $0.AiChatSession>(
        'UpdateSessionSystemPrompt',
        updateSessionSystemPrompt_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatUpdateSessionSystemPromptRequest.fromBuffer(value),
        ($0.AiChatSession value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatGetMessagesRequest,
            $0.AiChatGetMessagesResponse>(
        'GetMessages',
        getMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatGetMessagesRequest.fromBuffer(value),
        ($0.AiChatGetMessagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatSendRequest, $0.AiChatChunk>(
        'SendMessage',
        sendMessage_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.AiChatSendRequest.fromBuffer(value),
        ($0.AiChatChunk value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatRegenerateRequest, $0.AiChatChunk>(
        'RegenerateAssistant',
        regenerateAssistant_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AiChatRegenerateRequest.fromBuffer(value),
        ($0.AiChatChunk value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatContinueRequest, $0.AiChatChunk>(
        'ContinueAssistant',
        continueAssistant_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AiChatContinueRequest.fromBuffer(value),
        ($0.AiChatChunk value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AiChatEditUserMessageRequest, $0.AiChatChunk>(
            'EditUserMessageAndContinue',
            editUserMessageAndContinue_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.AiChatEditUserMessageRequest.fromBuffer(value),
            ($0.AiChatChunk value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatListAssistantRegenerationsRequest,
            $0.AiChatListAssistantRegenerationsResponse>(
        'ListAssistantRegenerations',
        listAssistantRegenerations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatListAssistantRegenerationsRequest.fromBuffer(value),
        ($0.AiChatListAssistantRegenerationsResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $0.AiChatGetMessagesAtAssistantVersionRequest,
            $0.AiChatGetMessagesResponse>(
        'GetMessagesAtAssistantVersion',
        getMessagesAtAssistantVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatGetMessagesAtAssistantVersionRequest.fromBuffer(value),
        ($0.AiChatGetMessagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatListMCPServersRequest,
            $0.AiChatListMCPServersResponse>(
        'ListMCPServers',
        listMCPServers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatListMCPServersRequest.fromBuffer(value),
        ($0.AiChatListMCPServersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatPutSessionFileRequest,
            $0.AiChatPutSessionFileResponse>(
        'PutSessionFile',
        putSessionFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatPutSessionFileRequest.fromBuffer(value),
        ($0.AiChatPutSessionFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatGetSessionFileRequest,
            $0.AiChatGetSessionFileResponse>(
        'GetSessionFile',
        getSessionFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatGetSessionFileRequest.fromBuffer(value),
        ($0.AiChatGetSessionFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatListMcpServersAdminRequest,
            $0.AiChatListMcpServersAdminResponse>(
        'ListMcpServersAdmin',
        listMcpServersAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatListMcpServersAdminRequest.fromBuffer(value),
        ($0.AiChatListMcpServersAdminResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatGetMcpServerAdminRequest,
            $0.AiChatGetMcpServerAdminResponse>(
        'GetMcpServerAdmin',
        getMcpServerAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatGetMcpServerAdminRequest.fromBuffer(value),
        ($0.AiChatGetMcpServerAdminResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatCreateMcpServerAdminRequest,
            $0.AiChatGetMcpServerAdminResponse>(
        'CreateMcpServerAdmin',
        createMcpServerAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatCreateMcpServerAdminRequest.fromBuffer(value),
        ($0.AiChatGetMcpServerAdminResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatUpdateMcpServerAdminRequest,
            $0.AiChatGetMcpServerAdminResponse>(
        'UpdateMcpServerAdmin',
        updateMcpServerAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatUpdateMcpServerAdminRequest.fromBuffer(value),
        ($0.AiChatGetMcpServerAdminResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AiChatDeleteMcpServerAdminRequest, $1.Empty>(
            'DeleteMcpServerAdmin',
            deleteMcpServerAdmin_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AiChatDeleteMcpServerAdminRequest.fromBuffer(value),
            ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatListLLMProvidersAdminRequest,
            $0.AiChatListLLMProvidersAdminResponse>(
        'ListLLMProvidersAdmin',
        listLLMProvidersAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatListLLMProvidersAdminRequest.fromBuffer(value),
        ($0.AiChatListLLMProvidersAdminResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatUpdateLLMProviderAdminRequest,
            $0.AiChatGetLLMProviderAdminResponse>(
        'UpdateLLMProviderAdmin',
        updateLLMProviderAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatUpdateLLMProviderAdminRequest.fromBuffer(value),
        ($0.AiChatGetLLMProviderAdminResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatProbeLLMProviderAdminRequest,
            $0.AiChatProbeLLMProviderAdminResponse>(
        'ProbeLLMProviderAdmin',
        probeLLMProviderAdmin_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatProbeLLMProviderAdminRequest.fromBuffer(value),
        ($0.AiChatProbeLLMProviderAdminResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatObjectReportRequest,
            $0.AiChatObjectReportResponse>(
        'GetObjectReport',
        getObjectReport_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatObjectReportRequest.fromBuffer(value),
        ($0.AiChatObjectReportResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AiChatForkSessionRequest, $0.AiChatSession>(
            'ForkSession',
            forkSession_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AiChatForkSessionRequest.fromBuffer(value),
            ($0.AiChatSession value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AiChatAskSyncRequest, $0.AiChatAskSyncResponse>(
            'AskSync',
            askSync_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AiChatAskSyncRequest.fromBuffer(value),
            ($0.AiChatAskSyncResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatEnqueueAskRequest,
            $0.AiChatEnqueueAskResponse>(
        'EnqueueAsk',
        enqueueAsk_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatEnqueueAskRequest.fromBuffer(value),
        ($0.AiChatEnqueueAskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatGetBackgroundAskStatusRequest,
            $0.AiChatGetBackgroundAskStatusResponse>(
        'GetBackgroundAskStatus',
        getBackgroundAskStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatGetBackgroundAskStatusRequest.fromBuffer(value),
        ($0.AiChatGetBackgroundAskStatusResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatListBackgroundJobsRequest,
            $0.AiChatListBackgroundJobsResponse>(
        'ListBackgroundJobs',
        listBackgroundJobs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatListBackgroundJobsRequest.fromBuffer(value),
        ($0.AiChatListBackgroundJobsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AiChatGetTaskChecklistSuggestionsRequest,
            $0.AiChatGetTaskChecklistSuggestionsResponse>(
        'GetTaskChecklistSuggestions',
        getTaskChecklistSuggestions_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AiChatGetTaskChecklistSuggestionsRequest.fromBuffer(value),
        ($0.AiChatGetTaskChecklistSuggestionsResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$0.AiChatStatusResponse> getStatus_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AiChatStatusRequest> $request) async {
    return getStatus($call, await $request);
  }

  $async.Future<$0.AiChatStatusResponse> getStatus(
      $grpc.ServiceCall call, $0.AiChatStatusRequest request);

  $async.Future<$0.AiChatGetSessionsResponse> getSessions_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatGetSessionsRequest> $request) async {
    return getSessions($call, await $request);
  }

  $async.Future<$0.AiChatGetSessionsResponse> getSessions(
      $grpc.ServiceCall call, $0.AiChatGetSessionsRequest request);

  $async.Future<$0.AiChatSession> createSession_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AiChatCreateSessionRequest> $request) async {
    return createSession($call, await $request);
  }

  $async.Future<$0.AiChatSession> createSession(
      $grpc.ServiceCall call, $0.AiChatCreateSessionRequest request);

  $async.Future<$1.Empty> deleteSession_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AiChatDeleteSessionRequest> $request) async {
    return deleteSession($call, await $request);
  }

  $async.Future<$1.Empty> deleteSession(
      $grpc.ServiceCall call, $0.AiChatDeleteSessionRequest request);

  $async.Future<$0.AiChatSession> updateSessionTitle_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatUpdateSessionTitleRequest> $request) async {
    return updateSessionTitle($call, await $request);
  }

  $async.Future<$0.AiChatSession> updateSessionTitle(
      $grpc.ServiceCall call, $0.AiChatUpdateSessionTitleRequest request);

  $async.Future<$0.AiChatSession> updateSessionSystemPrompt_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatUpdateSessionSystemPromptRequest> $request) async {
    return updateSessionSystemPrompt($call, await $request);
  }

  $async.Future<$0.AiChatSession> updateSessionSystemPrompt(
      $grpc.ServiceCall call,
      $0.AiChatUpdateSessionSystemPromptRequest request);

  $async.Future<$0.AiChatGetMessagesResponse> getMessages_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatGetMessagesRequest> $request) async {
    return getMessages($call, await $request);
  }

  $async.Future<$0.AiChatGetMessagesResponse> getMessages(
      $grpc.ServiceCall call, $0.AiChatGetMessagesRequest request);

  $async.Stream<$0.AiChatChunk> sendMessage_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AiChatSendRequest> $request) async* {
    yield* sendMessage($call, await $request);
  }

  $async.Stream<$0.AiChatChunk> sendMessage(
      $grpc.ServiceCall call, $0.AiChatSendRequest request);

  $async.Stream<$0.AiChatChunk> regenerateAssistant_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AiChatRegenerateRequest> $request) async* {
    yield* regenerateAssistant($call, await $request);
  }

  $async.Stream<$0.AiChatChunk> regenerateAssistant(
      $grpc.ServiceCall call, $0.AiChatRegenerateRequest request);

  $async.Stream<$0.AiChatChunk> continueAssistant_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AiChatContinueRequest> $request) async* {
    yield* continueAssistant($call, await $request);
  }

  $async.Stream<$0.AiChatChunk> continueAssistant(
      $grpc.ServiceCall call, $0.AiChatContinueRequest request);

  $async.Stream<$0.AiChatChunk> editUserMessageAndContinue_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatEditUserMessageRequest> $request) async* {
    yield* editUserMessageAndContinue($call, await $request);
  }

  $async.Stream<$0.AiChatChunk> editUserMessageAndContinue(
      $grpc.ServiceCall call, $0.AiChatEditUserMessageRequest request);

  $async.Future<$0.AiChatListAssistantRegenerationsResponse>
      listAssistantRegenerations_Pre(
          $grpc.ServiceCall $call,
          $async.Future<$0.AiChatListAssistantRegenerationsRequest>
              $request) async {
    return listAssistantRegenerations($call, await $request);
  }

  $async.Future<$0.AiChatListAssistantRegenerationsResponse>
      listAssistantRegenerations($grpc.ServiceCall call,
          $0.AiChatListAssistantRegenerationsRequest request);

  $async.Future<$0.AiChatGetMessagesResponse> getMessagesAtAssistantVersion_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatGetMessagesAtAssistantVersionRequest>
          $request) async {
    return getMessagesAtAssistantVersion($call, await $request);
  }

  $async.Future<$0.AiChatGetMessagesResponse> getMessagesAtAssistantVersion(
      $grpc.ServiceCall call,
      $0.AiChatGetMessagesAtAssistantVersionRequest request);

  $async.Future<$0.AiChatListMCPServersResponse> listMCPServers_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatListMCPServersRequest> $request) async {
    return listMCPServers($call, await $request);
  }

  $async.Future<$0.AiChatListMCPServersResponse> listMCPServers(
      $grpc.ServiceCall call, $0.AiChatListMCPServersRequest request);

  $async.Future<$0.AiChatPutSessionFileResponse> putSessionFile_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatPutSessionFileRequest> $request) async {
    return putSessionFile($call, await $request);
  }

  $async.Future<$0.AiChatPutSessionFileResponse> putSessionFile(
      $grpc.ServiceCall call, $0.AiChatPutSessionFileRequest request);

  $async.Future<$0.AiChatGetSessionFileResponse> getSessionFile_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatGetSessionFileRequest> $request) async {
    return getSessionFile($call, await $request);
  }

  $async.Future<$0.AiChatGetSessionFileResponse> getSessionFile(
      $grpc.ServiceCall call, $0.AiChatGetSessionFileRequest request);

  $async.Future<$0.AiChatListMcpServersAdminResponse> listMcpServersAdmin_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatListMcpServersAdminRequest> $request) async {
    return listMcpServersAdmin($call, await $request);
  }

  $async.Future<$0.AiChatListMcpServersAdminResponse> listMcpServersAdmin(
      $grpc.ServiceCall call, $0.AiChatListMcpServersAdminRequest request);

  $async.Future<$0.AiChatGetMcpServerAdminResponse> getMcpServerAdmin_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatGetMcpServerAdminRequest> $request) async {
    return getMcpServerAdmin($call, await $request);
  }

  $async.Future<$0.AiChatGetMcpServerAdminResponse> getMcpServerAdmin(
      $grpc.ServiceCall call, $0.AiChatGetMcpServerAdminRequest request);

  $async.Future<$0.AiChatGetMcpServerAdminResponse> createMcpServerAdmin_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatCreateMcpServerAdminRequest> $request) async {
    return createMcpServerAdmin($call, await $request);
  }

  $async.Future<$0.AiChatGetMcpServerAdminResponse> createMcpServerAdmin(
      $grpc.ServiceCall call, $0.AiChatCreateMcpServerAdminRequest request);

  $async.Future<$0.AiChatGetMcpServerAdminResponse> updateMcpServerAdmin_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatUpdateMcpServerAdminRequest> $request) async {
    return updateMcpServerAdmin($call, await $request);
  }

  $async.Future<$0.AiChatGetMcpServerAdminResponse> updateMcpServerAdmin(
      $grpc.ServiceCall call, $0.AiChatUpdateMcpServerAdminRequest request);

  $async.Future<$1.Empty> deleteMcpServerAdmin_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AiChatDeleteMcpServerAdminRequest> $request) async {
    return deleteMcpServerAdmin($call, await $request);
  }

  $async.Future<$1.Empty> deleteMcpServerAdmin(
      $grpc.ServiceCall call, $0.AiChatDeleteMcpServerAdminRequest request);

  $async.Future<$0.AiChatListLLMProvidersAdminResponse>
      listLLMProvidersAdmin_Pre($grpc.ServiceCall $call,
          $async.Future<$0.AiChatListLLMProvidersAdminRequest> $request) async {
    return listLLMProvidersAdmin($call, await $request);
  }

  $async.Future<$0.AiChatListLLMProvidersAdminResponse> listLLMProvidersAdmin(
      $grpc.ServiceCall call, $0.AiChatListLLMProvidersAdminRequest request);

  $async.Future<$0.AiChatGetLLMProviderAdminResponse>
      updateLLMProviderAdmin_Pre(
          $grpc.ServiceCall $call,
          $async.Future<$0.AiChatUpdateLLMProviderAdminRequest>
              $request) async {
    return updateLLMProviderAdmin($call, await $request);
  }

  $async.Future<$0.AiChatGetLLMProviderAdminResponse> updateLLMProviderAdmin(
      $grpc.ServiceCall call, $0.AiChatUpdateLLMProviderAdminRequest request);

  $async.Future<$0.AiChatProbeLLMProviderAdminResponse>
      probeLLMProviderAdmin_Pre($grpc.ServiceCall $call,
          $async.Future<$0.AiChatProbeLLMProviderAdminRequest> $request) async {
    return probeLLMProviderAdmin($call, await $request);
  }

  $async.Future<$0.AiChatProbeLLMProviderAdminResponse> probeLLMProviderAdmin(
      $grpc.ServiceCall call, $0.AiChatProbeLLMProviderAdminRequest request);

  $async.Future<$0.AiChatObjectReportResponse> getObjectReport_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatObjectReportRequest> $request) async {
    return getObjectReport($call, await $request);
  }

  $async.Future<$0.AiChatObjectReportResponse> getObjectReport(
      $grpc.ServiceCall call, $0.AiChatObjectReportRequest request);

  $async.Future<$0.AiChatSession> forkSession_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AiChatForkSessionRequest> $request) async {
    return forkSession($call, await $request);
  }

  $async.Future<$0.AiChatSession> forkSession(
      $grpc.ServiceCall call, $0.AiChatForkSessionRequest request);

  $async.Future<$0.AiChatAskSyncResponse> askSync_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AiChatAskSyncRequest> $request) async {
    return askSync($call, await $request);
  }

  $async.Future<$0.AiChatAskSyncResponse> askSync(
      $grpc.ServiceCall call, $0.AiChatAskSyncRequest request);

  $async.Future<$0.AiChatEnqueueAskResponse> enqueueAsk_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatEnqueueAskRequest> $request) async {
    return enqueueAsk($call, await $request);
  }

  $async.Future<$0.AiChatEnqueueAskResponse> enqueueAsk(
      $grpc.ServiceCall call, $0.AiChatEnqueueAskRequest request);

  $async.Future<$0.AiChatGetBackgroundAskStatusResponse>
      getBackgroundAskStatus_Pre(
          $grpc.ServiceCall $call,
          $async.Future<$0.AiChatGetBackgroundAskStatusRequest>
              $request) async {
    return getBackgroundAskStatus($call, await $request);
  }

  $async.Future<$0.AiChatGetBackgroundAskStatusResponse> getBackgroundAskStatus(
      $grpc.ServiceCall call, $0.AiChatGetBackgroundAskStatusRequest request);

  $async.Future<$0.AiChatListBackgroundJobsResponse> listBackgroundJobs_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AiChatListBackgroundJobsRequest> $request) async {
    return listBackgroundJobs($call, await $request);
  }

  $async.Future<$0.AiChatListBackgroundJobsResponse> listBackgroundJobs(
      $grpc.ServiceCall call, $0.AiChatListBackgroundJobsRequest request);

  $async.Future<$0.AiChatGetTaskChecklistSuggestionsResponse>
      getTaskChecklistSuggestions_Pre(
          $grpc.ServiceCall $call,
          $async.Future<$0.AiChatGetTaskChecklistSuggestionsRequest>
              $request) async {
    return getTaskChecklistSuggestions($call, await $request);
  }

  $async.Future<$0.AiChatGetTaskChecklistSuggestionsResponse>
      getTaskChecklistSuggestions($grpc.ServiceCall call,
          $0.AiChatGetTaskChecklistSuggestionsRequest request);
}
