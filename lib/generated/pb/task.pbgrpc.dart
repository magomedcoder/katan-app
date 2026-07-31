// This is a generated file - do not edit.
//
// Generated from task.proto.

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

import 'common.pb.dart' as $1;
import 'task.pb.dart' as $0;

export 'task.pb.dart';

@$pb.GrpcServiceName('katan.TaskService')
class TaskServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  TaskServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.CreateTaskResponse> createTask(
    $0.CreateTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createTask, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTasksResponse> getTasks(
    $0.GetTasksRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTasks, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTaskResponse> getTask(
    $0.GetTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTask, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateTaskResponse> updateTask(
    $0.UpdateTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateTask, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteTask(
    $0.DeleteTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteTask, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTaskCommentsResponse> getTaskComments(
    $0.GetTaskCommentsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTaskComments, request, options: options);
  }

  $grpc.ResponseFuture<$0.TaskComment> addTaskComment(
    $0.AddTaskCommentRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$addTaskComment, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteTaskComment(
    $0.DeleteTaskCommentRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteTaskComment, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTaskHistoryResponse> getTaskHistory(
    $0.GetTaskHistoryRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTaskHistory, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> setTaskAssignee(
    $0.SetTaskAssigneeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$setTaskAssignee, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> setTaskObservers(
    $0.SetTaskObserversRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$setTaskObservers, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> setTaskTags(
    $0.SetTaskTagsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$setTaskTags, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTaskLabelsResponse> getTaskLabels(
    $0.GetTaskLabelsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getTaskLabels, request, options: options);
  }

  $grpc.ResponseFuture<$0.TaskTagLabel> createTaskLabel(
    $0.CreateTaskLabelRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createTaskLabel, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteTaskLabel(
    $0.DeleteTaskLabelRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteTaskLabel, request, options: options);
  }

  $grpc.ResponseFuture<$0.RunTaskWorkflowActionResponse> runTaskWorkflowAction(
    $0.RunTaskWorkflowActionRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$runTaskWorkflowAction, request, options: options);
  }

  // method descriptors

  static final _$createTask =
      $grpc.ClientMethod<$0.CreateTaskRequest, $0.CreateTaskResponse>(
          '/katan.TaskService/CreateTask',
          ($0.CreateTaskRequest value) => value.writeToBuffer(),
          $0.CreateTaskResponse.fromBuffer);
  static final _$getTasks =
      $grpc.ClientMethod<$0.GetTasksRequest, $0.GetTasksResponse>(
          '/katan.TaskService/GetTasks',
          ($0.GetTasksRequest value) => value.writeToBuffer(),
          $0.GetTasksResponse.fromBuffer);
  static final _$getTask =
      $grpc.ClientMethod<$0.GetTaskRequest, $0.GetTaskResponse>(
          '/katan.TaskService/GetTask',
          ($0.GetTaskRequest value) => value.writeToBuffer(),
          $0.GetTaskResponse.fromBuffer);
  static final _$updateTask =
      $grpc.ClientMethod<$0.UpdateTaskRequest, $0.UpdateTaskResponse>(
          '/katan.TaskService/UpdateTask',
          ($0.UpdateTaskRequest value) => value.writeToBuffer(),
          $0.UpdateTaskResponse.fromBuffer);
  static final _$deleteTask =
      $grpc.ClientMethod<$0.DeleteTaskRequest, $1.Empty>(
          '/katan.TaskService/DeleteTask',
          ($0.DeleteTaskRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$getTaskComments =
      $grpc.ClientMethod<$0.GetTaskCommentsRequest, $0.GetTaskCommentsResponse>(
          '/katan.TaskService/GetTaskComments',
          ($0.GetTaskCommentsRequest value) => value.writeToBuffer(),
          $0.GetTaskCommentsResponse.fromBuffer);
  static final _$addTaskComment =
      $grpc.ClientMethod<$0.AddTaskCommentRequest, $0.TaskComment>(
          '/katan.TaskService/AddTaskComment',
          ($0.AddTaskCommentRequest value) => value.writeToBuffer(),
          $0.TaskComment.fromBuffer);
  static final _$deleteTaskComment =
      $grpc.ClientMethod<$0.DeleteTaskCommentRequest, $1.Empty>(
          '/katan.TaskService/DeleteTaskComment',
          ($0.DeleteTaskCommentRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$getTaskHistory =
      $grpc.ClientMethod<$0.GetTaskHistoryRequest, $0.GetTaskHistoryResponse>(
          '/katan.TaskService/GetTaskHistory',
          ($0.GetTaskHistoryRequest value) => value.writeToBuffer(),
          $0.GetTaskHistoryResponse.fromBuffer);
  static final _$setTaskAssignee =
      $grpc.ClientMethod<$0.SetTaskAssigneeRequest, $1.Empty>(
          '/katan.TaskService/SetTaskAssignee',
          ($0.SetTaskAssigneeRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$setTaskObservers =
      $grpc.ClientMethod<$0.SetTaskObserversRequest, $1.Empty>(
          '/katan.TaskService/SetTaskObservers',
          ($0.SetTaskObserversRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$setTaskTags =
      $grpc.ClientMethod<$0.SetTaskTagsRequest, $1.Empty>(
          '/katan.TaskService/SetTaskTags',
          ($0.SetTaskTagsRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$getTaskLabels =
      $grpc.ClientMethod<$0.GetTaskLabelsRequest, $0.GetTaskLabelsResponse>(
          '/katan.TaskService/GetTaskLabels',
          ($0.GetTaskLabelsRequest value) => value.writeToBuffer(),
          $0.GetTaskLabelsResponse.fromBuffer);
  static final _$createTaskLabel =
      $grpc.ClientMethod<$0.CreateTaskLabelRequest, $0.TaskTagLabel>(
          '/katan.TaskService/CreateTaskLabel',
          ($0.CreateTaskLabelRequest value) => value.writeToBuffer(),
          $0.TaskTagLabel.fromBuffer);
  static final _$deleteTaskLabel =
      $grpc.ClientMethod<$0.DeleteTaskLabelRequest, $1.Empty>(
          '/katan.TaskService/DeleteTaskLabel',
          ($0.DeleteTaskLabelRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$runTaskWorkflowAction = $grpc.ClientMethod<
          $0.RunTaskWorkflowActionRequest, $0.RunTaskWorkflowActionResponse>(
      '/katan.TaskService/RunTaskWorkflowAction',
      ($0.RunTaskWorkflowActionRequest value) => value.writeToBuffer(),
      $0.RunTaskWorkflowActionResponse.fromBuffer);
}

@$pb.GrpcServiceName('katan.TaskService')
abstract class TaskServiceBase extends $grpc.Service {
  $core.String get $name => 'katan.TaskService';

  TaskServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateTaskRequest, $0.CreateTaskResponse>(
        'CreateTask',
        createTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTaskRequest.fromBuffer(value),
        ($0.CreateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTasksRequest, $0.GetTasksResponse>(
        'GetTasks',
        getTasks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTasksRequest.fromBuffer(value),
        ($0.GetTasksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTaskRequest, $0.GetTaskResponse>(
        'GetTask',
        getTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTaskRequest.fromBuffer(value),
        ($0.GetTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateTaskRequest, $0.UpdateTaskResponse>(
        'UpdateTask',
        updateTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateTaskRequest.fromBuffer(value),
        ($0.UpdateTaskResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteTaskRequest, $1.Empty>(
        'DeleteTask',
        deleteTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteTaskRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTaskCommentsRequest,
            $0.GetTaskCommentsResponse>(
        'GetTaskComments',
        getTaskComments_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetTaskCommentsRequest.fromBuffer(value),
        ($0.GetTaskCommentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddTaskCommentRequest, $0.TaskComment>(
        'AddTaskComment',
        addTaskComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddTaskCommentRequest.fromBuffer(value),
        ($0.TaskComment value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteTaskCommentRequest, $1.Empty>(
        'DeleteTaskComment',
        deleteTaskComment_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteTaskCommentRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTaskHistoryRequest,
            $0.GetTaskHistoryResponse>(
        'GetTaskHistory',
        getTaskHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetTaskHistoryRequest.fromBuffer(value),
        ($0.GetTaskHistoryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetTaskAssigneeRequest, $1.Empty>(
        'SetTaskAssignee',
        setTaskAssignee_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetTaskAssigneeRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetTaskObserversRequest, $1.Empty>(
        'SetTaskObservers',
        setTaskObservers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetTaskObserversRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetTaskTagsRequest, $1.Empty>(
        'SetTaskTags',
        setTaskTags_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetTaskTagsRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetTaskLabelsRequest, $0.GetTaskLabelsResponse>(
            'GetTaskLabels',
            getTaskLabels_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetTaskLabelsRequest.fromBuffer(value),
            ($0.GetTaskLabelsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateTaskLabelRequest, $0.TaskTagLabel>(
        'CreateTaskLabel',
        createTaskLabel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateTaskLabelRequest.fromBuffer(value),
        ($0.TaskTagLabel value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteTaskLabelRequest, $1.Empty>(
        'DeleteTaskLabel',
        deleteTaskLabel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteTaskLabelRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RunTaskWorkflowActionRequest,
            $0.RunTaskWorkflowActionResponse>(
        'RunTaskWorkflowAction',
        runTaskWorkflowAction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RunTaskWorkflowActionRequest.fromBuffer(value),
        ($0.RunTaskWorkflowActionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateTaskResponse> createTask_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateTaskRequest> $request) async {
    return createTask($call, await $request);
  }

  $async.Future<$0.CreateTaskResponse> createTask(
      $grpc.ServiceCall call, $0.CreateTaskRequest request);

  $async.Future<$0.GetTasksResponse> getTasks_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetTasksRequest> $request) async {
    return getTasks($call, await $request);
  }

  $async.Future<$0.GetTasksResponse> getTasks(
      $grpc.ServiceCall call, $0.GetTasksRequest request);

  $async.Future<$0.GetTaskResponse> getTask_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetTaskRequest> $request) async {
    return getTask($call, await $request);
  }

  $async.Future<$0.GetTaskResponse> getTask(
      $grpc.ServiceCall call, $0.GetTaskRequest request);

  $async.Future<$0.UpdateTaskResponse> updateTask_Pre($grpc.ServiceCall $call,
      $async.Future<$0.UpdateTaskRequest> $request) async {
    return updateTask($call, await $request);
  }

  $async.Future<$0.UpdateTaskResponse> updateTask(
      $grpc.ServiceCall call, $0.UpdateTaskRequest request);

  $async.Future<$1.Empty> deleteTask_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteTaskRequest> $request) async {
    return deleteTask($call, await $request);
  }

  $async.Future<$1.Empty> deleteTask(
      $grpc.ServiceCall call, $0.DeleteTaskRequest request);

  $async.Future<$0.GetTaskCommentsResponse> getTaskComments_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetTaskCommentsRequest> $request) async {
    return getTaskComments($call, await $request);
  }

  $async.Future<$0.GetTaskCommentsResponse> getTaskComments(
      $grpc.ServiceCall call, $0.GetTaskCommentsRequest request);

  $async.Future<$0.TaskComment> addTaskComment_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AddTaskCommentRequest> $request) async {
    return addTaskComment($call, await $request);
  }

  $async.Future<$0.TaskComment> addTaskComment(
      $grpc.ServiceCall call, $0.AddTaskCommentRequest request);

  $async.Future<$1.Empty> deleteTaskComment_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteTaskCommentRequest> $request) async {
    return deleteTaskComment($call, await $request);
  }

  $async.Future<$1.Empty> deleteTaskComment(
      $grpc.ServiceCall call, $0.DeleteTaskCommentRequest request);

  $async.Future<$0.GetTaskHistoryResponse> getTaskHistory_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetTaskHistoryRequest> $request) async {
    return getTaskHistory($call, await $request);
  }

  $async.Future<$0.GetTaskHistoryResponse> getTaskHistory(
      $grpc.ServiceCall call, $0.GetTaskHistoryRequest request);

  $async.Future<$1.Empty> setTaskAssignee_Pre($grpc.ServiceCall $call,
      $async.Future<$0.SetTaskAssigneeRequest> $request) async {
    return setTaskAssignee($call, await $request);
  }

  $async.Future<$1.Empty> setTaskAssignee(
      $grpc.ServiceCall call, $0.SetTaskAssigneeRequest request);

  $async.Future<$1.Empty> setTaskObservers_Pre($grpc.ServiceCall $call,
      $async.Future<$0.SetTaskObserversRequest> $request) async {
    return setTaskObservers($call, await $request);
  }

  $async.Future<$1.Empty> setTaskObservers(
      $grpc.ServiceCall call, $0.SetTaskObserversRequest request);

  $async.Future<$1.Empty> setTaskTags_Pre($grpc.ServiceCall $call,
      $async.Future<$0.SetTaskTagsRequest> $request) async {
    return setTaskTags($call, await $request);
  }

  $async.Future<$1.Empty> setTaskTags(
      $grpc.ServiceCall call, $0.SetTaskTagsRequest request);

  $async.Future<$0.GetTaskLabelsResponse> getTaskLabels_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetTaskLabelsRequest> $request) async {
    return getTaskLabels($call, await $request);
  }

  $async.Future<$0.GetTaskLabelsResponse> getTaskLabels(
      $grpc.ServiceCall call, $0.GetTaskLabelsRequest request);

  $async.Future<$0.TaskTagLabel> createTaskLabel_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateTaskLabelRequest> $request) async {
    return createTaskLabel($call, await $request);
  }

  $async.Future<$0.TaskTagLabel> createTaskLabel(
      $grpc.ServiceCall call, $0.CreateTaskLabelRequest request);

  $async.Future<$1.Empty> deleteTaskLabel_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteTaskLabelRequest> $request) async {
    return deleteTaskLabel($call, await $request);
  }

  $async.Future<$1.Empty> deleteTaskLabel(
      $grpc.ServiceCall call, $0.DeleteTaskLabelRequest request);

  $async.Future<$0.RunTaskWorkflowActionResponse> runTaskWorkflowAction_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.RunTaskWorkflowActionRequest> $request) async {
    return runTaskWorkflowAction($call, await $request);
  }

  $async.Future<$0.RunTaskWorkflowActionResponse> runTaskWorkflowAction(
      $grpc.ServiceCall call, $0.RunTaskWorkflowActionRequest request);
}
