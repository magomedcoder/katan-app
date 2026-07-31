// This is a generated file - do not edit.
//
// Generated from chat.proto.

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

import 'chat.pb.dart' as $0;
import 'common.pb.dart' as $1;

export 'chat.pb.dart';

@$pb.GrpcServiceName('katan.ChatService')
class ChatServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ChatServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ChatListRoomsResponse> listRooms(
    $0.ChatListRoomsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listRooms, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatRoom> getRoom(
    $0.ChatGetRoomRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getRoom, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatListMessagesResponse> listMessages(
    $0.ChatListMessagesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listMessages, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatMessage> sendMessage(
    $0.ChatSendMessageRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> markRead(
    $0.ChatMarkReadRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$markRead, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatGetUnreadCountsResponse> getUnreadCounts(
    $0.ChatGetUnreadCountsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getUnreadCounts, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatRoom> createGroup(
    $0.ChatCreateGroupRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatRoom> addMembers(
    $0.ChatAddMembersRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$addMembers, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> removeMember(
    $0.ChatRemoveMemberRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$removeMember, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> leaveRoom(
    $0.ChatLeaveRoomRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$leaveRoom, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatRoom> createDirect(
    $0.ChatCreateDirectRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createDirect, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatRoom> updateGroup(
    $0.ChatUpdateGroupRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateGroup, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatMessage> editMessage(
    $0.ChatEditMessageRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$editMessage, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteMessage(
    $0.ChatDeleteMessageRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatMessage> refreshMessage(
    $0.ChatRefreshMessageRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$refreshMessage, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChatUploadAttachmentResponse> uploadMessageAttachment(
    $async.Stream<$0.ChatUploadAttachmentChunk> request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(_$uploadMessageAttachment, request,
            options: options)
        .single;
  }

  $grpc.ResponseFuture<$0.ChatSearchResponse> search(
    $0.ChatSearchRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$search, request, options: options);
  }

  // method descriptors

  static final _$listRooms =
      $grpc.ClientMethod<$0.ChatListRoomsRequest, $0.ChatListRoomsResponse>(
          '/katan.ChatService/ListRooms',
          ($0.ChatListRoomsRequest value) => value.writeToBuffer(),
          $0.ChatListRoomsResponse.fromBuffer);
  static final _$getRoom =
      $grpc.ClientMethod<$0.ChatGetRoomRequest, $0.ChatRoom>(
          '/katan.ChatService/GetRoom',
          ($0.ChatGetRoomRequest value) => value.writeToBuffer(),
          $0.ChatRoom.fromBuffer);
  static final _$listMessages = $grpc.ClientMethod<$0.ChatListMessagesRequest,
          $0.ChatListMessagesResponse>(
      '/katan.ChatService/ListMessages',
      ($0.ChatListMessagesRequest value) => value.writeToBuffer(),
      $0.ChatListMessagesResponse.fromBuffer);
  static final _$sendMessage =
      $grpc.ClientMethod<$0.ChatSendMessageRequest, $0.ChatMessage>(
          '/katan.ChatService/SendMessage',
          ($0.ChatSendMessageRequest value) => value.writeToBuffer(),
          $0.ChatMessage.fromBuffer);
  static final _$markRead =
      $grpc.ClientMethod<$0.ChatMarkReadRequest, $1.Empty>(
          '/katan.ChatService/MarkRead',
          ($0.ChatMarkReadRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$getUnreadCounts = $grpc.ClientMethod<
          $0.ChatGetUnreadCountsRequest, $0.ChatGetUnreadCountsResponse>(
      '/katan.ChatService/GetUnreadCounts',
      ($0.ChatGetUnreadCountsRequest value) => value.writeToBuffer(),
      $0.ChatGetUnreadCountsResponse.fromBuffer);
  static final _$createGroup =
      $grpc.ClientMethod<$0.ChatCreateGroupRequest, $0.ChatRoom>(
          '/katan.ChatService/CreateGroup',
          ($0.ChatCreateGroupRequest value) => value.writeToBuffer(),
          $0.ChatRoom.fromBuffer);
  static final _$addMembers =
      $grpc.ClientMethod<$0.ChatAddMembersRequest, $0.ChatRoom>(
          '/katan.ChatService/AddMembers',
          ($0.ChatAddMembersRequest value) => value.writeToBuffer(),
          $0.ChatRoom.fromBuffer);
  static final _$removeMember =
      $grpc.ClientMethod<$0.ChatRemoveMemberRequest, $1.Empty>(
          '/katan.ChatService/RemoveMember',
          ($0.ChatRemoveMemberRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$leaveRoom =
      $grpc.ClientMethod<$0.ChatLeaveRoomRequest, $1.Empty>(
          '/katan.ChatService/LeaveRoom',
          ($0.ChatLeaveRoomRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$createDirect =
      $grpc.ClientMethod<$0.ChatCreateDirectRequest, $0.ChatRoom>(
          '/katan.ChatService/CreateDirect',
          ($0.ChatCreateDirectRequest value) => value.writeToBuffer(),
          $0.ChatRoom.fromBuffer);
  static final _$updateGroup =
      $grpc.ClientMethod<$0.ChatUpdateGroupRequest, $0.ChatRoom>(
          '/katan.ChatService/UpdateGroup',
          ($0.ChatUpdateGroupRequest value) => value.writeToBuffer(),
          $0.ChatRoom.fromBuffer);
  static final _$editMessage =
      $grpc.ClientMethod<$0.ChatEditMessageRequest, $0.ChatMessage>(
          '/katan.ChatService/EditMessage',
          ($0.ChatEditMessageRequest value) => value.writeToBuffer(),
          $0.ChatMessage.fromBuffer);
  static final _$deleteMessage =
      $grpc.ClientMethod<$0.ChatDeleteMessageRequest, $1.Empty>(
          '/katan.ChatService/DeleteMessage',
          ($0.ChatDeleteMessageRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$refreshMessage =
      $grpc.ClientMethod<$0.ChatRefreshMessageRequest, $0.ChatMessage>(
          '/katan.ChatService/RefreshMessage',
          ($0.ChatRefreshMessageRequest value) => value.writeToBuffer(),
          $0.ChatMessage.fromBuffer);
  static final _$uploadMessageAttachment = $grpc.ClientMethod<
          $0.ChatUploadAttachmentChunk, $0.ChatUploadAttachmentResponse>(
      '/katan.ChatService/UploadMessageAttachment',
      ($0.ChatUploadAttachmentChunk value) => value.writeToBuffer(),
      $0.ChatUploadAttachmentResponse.fromBuffer);
  static final _$search =
      $grpc.ClientMethod<$0.ChatSearchRequest, $0.ChatSearchResponse>(
          '/katan.ChatService/Search',
          ($0.ChatSearchRequest value) => value.writeToBuffer(),
          $0.ChatSearchResponse.fromBuffer);
}

@$pb.GrpcServiceName('katan.ChatService')
abstract class ChatServiceBase extends $grpc.Service {
  $core.String get $name => 'katan.ChatService';

  ChatServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ChatListRoomsRequest, $0.ChatListRoomsResponse>(
            'ListRooms',
            listRooms_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ChatListRoomsRequest.fromBuffer(value),
            ($0.ChatListRoomsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatGetRoomRequest, $0.ChatRoom>(
        'GetRoom',
        getRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatGetRoomRequest.fromBuffer(value),
        ($0.ChatRoom value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatListMessagesRequest,
            $0.ChatListMessagesResponse>(
        'ListMessages',
        listMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatListMessagesRequest.fromBuffer(value),
        ($0.ChatListMessagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatSendMessageRequest, $0.ChatMessage>(
        'SendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatSendMessageRequest.fromBuffer(value),
        ($0.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatMarkReadRequest, $1.Empty>(
        'MarkRead',
        markRead_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatMarkReadRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatGetUnreadCountsRequest,
            $0.ChatGetUnreadCountsResponse>(
        'GetUnreadCounts',
        getUnreadCounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatGetUnreadCountsRequest.fromBuffer(value),
        ($0.ChatGetUnreadCountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatCreateGroupRequest, $0.ChatRoom>(
        'CreateGroup',
        createGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatCreateGroupRequest.fromBuffer(value),
        ($0.ChatRoom value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatAddMembersRequest, $0.ChatRoom>(
        'AddMembers',
        addMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatAddMembersRequest.fromBuffer(value),
        ($0.ChatRoom value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatRemoveMemberRequest, $1.Empty>(
        'RemoveMember',
        removeMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatRemoveMemberRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatLeaveRoomRequest, $1.Empty>(
        'LeaveRoom',
        leaveRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatLeaveRoomRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatCreateDirectRequest, $0.ChatRoom>(
        'CreateDirect',
        createDirect_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatCreateDirectRequest.fromBuffer(value),
        ($0.ChatRoom value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatUpdateGroupRequest, $0.ChatRoom>(
        'UpdateGroup',
        updateGroup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatUpdateGroupRequest.fromBuffer(value),
        ($0.ChatRoom value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatEditMessageRequest, $0.ChatMessage>(
        'EditMessage',
        editMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatEditMessageRequest.fromBuffer(value),
        ($0.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatDeleteMessageRequest, $1.Empty>(
        'DeleteMessage',
        deleteMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatDeleteMessageRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ChatRefreshMessageRequest, $0.ChatMessage>(
            'RefreshMessage',
            refreshMessage_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ChatRefreshMessageRequest.fromBuffer(value),
            ($0.ChatMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatUploadAttachmentChunk,
            $0.ChatUploadAttachmentResponse>(
        'UploadMessageAttachment',
        uploadMessageAttachment,
        true,
        false,
        ($core.List<$core.int> value) =>
            $0.ChatUploadAttachmentChunk.fromBuffer(value),
        ($0.ChatUploadAttachmentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatSearchRequest, $0.ChatSearchResponse>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChatSearchRequest.fromBuffer(value),
        ($0.ChatSearchResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ChatListRoomsResponse> listRooms_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatListRoomsRequest> $request) async {
    return listRooms($call, await $request);
  }

  $async.Future<$0.ChatListRoomsResponse> listRooms(
      $grpc.ServiceCall call, $0.ChatListRoomsRequest request);

  $async.Future<$0.ChatRoom> getRoom_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatGetRoomRequest> $request) async {
    return getRoom($call, await $request);
  }

  $async.Future<$0.ChatRoom> getRoom(
      $grpc.ServiceCall call, $0.ChatGetRoomRequest request);

  $async.Future<$0.ChatListMessagesResponse> listMessages_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ChatListMessagesRequest> $request) async {
    return listMessages($call, await $request);
  }

  $async.Future<$0.ChatListMessagesResponse> listMessages(
      $grpc.ServiceCall call, $0.ChatListMessagesRequest request);

  $async.Future<$0.ChatMessage> sendMessage_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatSendMessageRequest> $request) async {
    return sendMessage($call, await $request);
  }

  $async.Future<$0.ChatMessage> sendMessage(
      $grpc.ServiceCall call, $0.ChatSendMessageRequest request);

  $async.Future<$1.Empty> markRead_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatMarkReadRequest> $request) async {
    return markRead($call, await $request);
  }

  $async.Future<$1.Empty> markRead(
      $grpc.ServiceCall call, $0.ChatMarkReadRequest request);

  $async.Future<$0.ChatGetUnreadCountsResponse> getUnreadCounts_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ChatGetUnreadCountsRequest> $request) async {
    return getUnreadCounts($call, await $request);
  }

  $async.Future<$0.ChatGetUnreadCountsResponse> getUnreadCounts(
      $grpc.ServiceCall call, $0.ChatGetUnreadCountsRequest request);

  $async.Future<$0.ChatRoom> createGroup_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatCreateGroupRequest> $request) async {
    return createGroup($call, await $request);
  }

  $async.Future<$0.ChatRoom> createGroup(
      $grpc.ServiceCall call, $0.ChatCreateGroupRequest request);

  $async.Future<$0.ChatRoom> addMembers_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatAddMembersRequest> $request) async {
    return addMembers($call, await $request);
  }

  $async.Future<$0.ChatRoom> addMembers(
      $grpc.ServiceCall call, $0.ChatAddMembersRequest request);

  $async.Future<$1.Empty> removeMember_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatRemoveMemberRequest> $request) async {
    return removeMember($call, await $request);
  }

  $async.Future<$1.Empty> removeMember(
      $grpc.ServiceCall call, $0.ChatRemoveMemberRequest request);

  $async.Future<$1.Empty> leaveRoom_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatLeaveRoomRequest> $request) async {
    return leaveRoom($call, await $request);
  }

  $async.Future<$1.Empty> leaveRoom(
      $grpc.ServiceCall call, $0.ChatLeaveRoomRequest request);

  $async.Future<$0.ChatRoom> createDirect_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatCreateDirectRequest> $request) async {
    return createDirect($call, await $request);
  }

  $async.Future<$0.ChatRoom> createDirect(
      $grpc.ServiceCall call, $0.ChatCreateDirectRequest request);

  $async.Future<$0.ChatRoom> updateGroup_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatUpdateGroupRequest> $request) async {
    return updateGroup($call, await $request);
  }

  $async.Future<$0.ChatRoom> updateGroup(
      $grpc.ServiceCall call, $0.ChatUpdateGroupRequest request);

  $async.Future<$0.ChatMessage> editMessage_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatEditMessageRequest> $request) async {
    return editMessage($call, await $request);
  }

  $async.Future<$0.ChatMessage> editMessage(
      $grpc.ServiceCall call, $0.ChatEditMessageRequest request);

  $async.Future<$1.Empty> deleteMessage_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatDeleteMessageRequest> $request) async {
    return deleteMessage($call, await $request);
  }

  $async.Future<$1.Empty> deleteMessage(
      $grpc.ServiceCall call, $0.ChatDeleteMessageRequest request);

  $async.Future<$0.ChatMessage> refreshMessage_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatRefreshMessageRequest> $request) async {
    return refreshMessage($call, await $request);
  }

  $async.Future<$0.ChatMessage> refreshMessage(
      $grpc.ServiceCall call, $0.ChatRefreshMessageRequest request);

  $async.Future<$0.ChatUploadAttachmentResponse> uploadMessageAttachment(
      $grpc.ServiceCall call,
      $async.Stream<$0.ChatUploadAttachmentChunk> request);

  $async.Future<$0.ChatSearchResponse> search_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ChatSearchRequest> $request) async {
    return search($call, await $request);
  }

  $async.Future<$0.ChatSearchResponse> search(
      $grpc.ServiceCall call, $0.ChatSearchRequest request);
}
