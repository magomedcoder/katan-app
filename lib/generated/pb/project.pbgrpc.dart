// This is a generated file - do not edit.
//
// Generated from project.proto.

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
import 'project.pb.dart' as $0;

export 'project.pb.dart';

@$pb.GrpcServiceName('katan.ProjectService')
class ProjectServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ProjectServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.CreateProjectResponse> createProject(
    $0.CreateProjectRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createProject, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetProjectsResponse> getProjects(
    $0.GetProjectsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getProjects, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetProjectResponse> getProject(
    $0.GetProjectRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getProject, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteProject(
    $0.DeleteProjectRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteProject, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateProject(
    $0.UpdateProjectRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateProject, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> closeProject(
    $0.CloseProjectRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$closeProject, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetProjectKanbanResponse> getProjectKanban(
    $0.GetProjectKanbanRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getProjectKanban, request, options: options);
  }

  $grpc.ResponseFuture<$0.KanbanColumn> createKanbanColumn(
    $0.CreateKanbanColumnRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createKanbanColumn, request, options: options);
  }

  $grpc.ResponseFuture<$0.KanbanColumn> updateKanbanColumn(
    $0.UpdateKanbanColumnRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateKanbanColumn, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteKanbanColumn(
    $0.DeleteKanbanColumnRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteKanbanColumn, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> reorderKanbanColumns(
    $0.ReorderKanbanColumnsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$reorderKanbanColumns, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> moveTask(
    $0.MoveTaskRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$moveTask, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetProjectMembersResponse> getProjectMembers(
    $0.GetProjectMembersRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getProjectMembers, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> setProjectMembers(
    $0.SetProjectMembersRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$setProjectMembers, request, options: options);
  }

  // method descriptors

  static final _$createProject =
      $grpc.ClientMethod<$0.CreateProjectRequest, $0.CreateProjectResponse>(
          '/katan.ProjectService/CreateProject',
          ($0.CreateProjectRequest value) => value.writeToBuffer(),
          $0.CreateProjectResponse.fromBuffer);
  static final _$getProjects =
      $grpc.ClientMethod<$0.GetProjectsRequest, $0.GetProjectsResponse>(
          '/katan.ProjectService/GetProjects',
          ($0.GetProjectsRequest value) => value.writeToBuffer(),
          $0.GetProjectsResponse.fromBuffer);
  static final _$getProject =
      $grpc.ClientMethod<$0.GetProjectRequest, $0.GetProjectResponse>(
          '/katan.ProjectService/GetProject',
          ($0.GetProjectRequest value) => value.writeToBuffer(),
          $0.GetProjectResponse.fromBuffer);
  static final _$deleteProject =
      $grpc.ClientMethod<$0.DeleteProjectRequest, $1.Empty>(
          '/katan.ProjectService/DeleteProject',
          ($0.DeleteProjectRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$updateProject =
      $grpc.ClientMethod<$0.UpdateProjectRequest, $1.Empty>(
          '/katan.ProjectService/UpdateProject',
          ($0.UpdateProjectRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$closeProject =
      $grpc.ClientMethod<$0.CloseProjectRequest, $1.Empty>(
          '/katan.ProjectService/CloseProject',
          ($0.CloseProjectRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$getProjectKanban = $grpc.ClientMethod<
          $0.GetProjectKanbanRequest, $0.GetProjectKanbanResponse>(
      '/katan.ProjectService/GetProjectKanban',
      ($0.GetProjectKanbanRequest value) => value.writeToBuffer(),
      $0.GetProjectKanbanResponse.fromBuffer);
  static final _$createKanbanColumn =
      $grpc.ClientMethod<$0.CreateKanbanColumnRequest, $0.KanbanColumn>(
          '/katan.ProjectService/CreateKanbanColumn',
          ($0.CreateKanbanColumnRequest value) => value.writeToBuffer(),
          $0.KanbanColumn.fromBuffer);
  static final _$updateKanbanColumn =
      $grpc.ClientMethod<$0.UpdateKanbanColumnRequest, $0.KanbanColumn>(
          '/katan.ProjectService/UpdateKanbanColumn',
          ($0.UpdateKanbanColumnRequest value) => value.writeToBuffer(),
          $0.KanbanColumn.fromBuffer);
  static final _$deleteKanbanColumn =
      $grpc.ClientMethod<$0.DeleteKanbanColumnRequest, $1.Empty>(
          '/katan.ProjectService/DeleteKanbanColumn',
          ($0.DeleteKanbanColumnRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$reorderKanbanColumns =
      $grpc.ClientMethod<$0.ReorderKanbanColumnsRequest, $1.Empty>(
          '/katan.ProjectService/ReorderKanbanColumns',
          ($0.ReorderKanbanColumnsRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
  static final _$moveTask = $grpc.ClientMethod<$0.MoveTaskRequest, $1.Empty>(
      '/katan.ProjectService/MoveTask',
      ($0.MoveTaskRequest value) => value.writeToBuffer(),
      $1.Empty.fromBuffer);
  static final _$getProjectMembers = $grpc.ClientMethod<
          $0.GetProjectMembersRequest, $0.GetProjectMembersResponse>(
      '/katan.ProjectService/GetProjectMembers',
      ($0.GetProjectMembersRequest value) => value.writeToBuffer(),
      $0.GetProjectMembersResponse.fromBuffer);
  static final _$setProjectMembers =
      $grpc.ClientMethod<$0.SetProjectMembersRequest, $1.Empty>(
          '/katan.ProjectService/SetProjectMembers',
          ($0.SetProjectMembersRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
}

@$pb.GrpcServiceName('katan.ProjectService')
abstract class ProjectServiceBase extends $grpc.Service {
  $core.String get $name => 'katan.ProjectService';

  ProjectServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.CreateProjectRequest, $0.CreateProjectResponse>(
            'CreateProject',
            createProject_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateProjectRequest.fromBuffer(value),
            ($0.CreateProjectResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetProjectsRequest, $0.GetProjectsResponse>(
            'GetProjects',
            getProjects_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetProjectsRequest.fromBuffer(value),
            ($0.GetProjectsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetProjectRequest, $0.GetProjectResponse>(
        'GetProject',
        getProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetProjectRequest.fromBuffer(value),
        ($0.GetProjectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteProjectRequest, $1.Empty>(
        'DeleteProject',
        deleteProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteProjectRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateProjectRequest, $1.Empty>(
        'UpdateProject',
        updateProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateProjectRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CloseProjectRequest, $1.Empty>(
        'CloseProject',
        closeProject_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CloseProjectRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetProjectKanbanRequest,
            $0.GetProjectKanbanResponse>(
        'GetProjectKanban',
        getProjectKanban_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetProjectKanbanRequest.fromBuffer(value),
        ($0.GetProjectKanbanResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CreateKanbanColumnRequest, $0.KanbanColumn>(
            'CreateKanbanColumn',
            createKanbanColumn_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateKanbanColumnRequest.fromBuffer(value),
            ($0.KanbanColumn value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UpdateKanbanColumnRequest, $0.KanbanColumn>(
            'UpdateKanbanColumn',
            updateKanbanColumn_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UpdateKanbanColumnRequest.fromBuffer(value),
            ($0.KanbanColumn value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteKanbanColumnRequest, $1.Empty>(
        'DeleteKanbanColumn',
        deleteKanbanColumn_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteKanbanColumnRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReorderKanbanColumnsRequest, $1.Empty>(
        'ReorderKanbanColumns',
        reorderKanbanColumns_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ReorderKanbanColumnsRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MoveTaskRequest, $1.Empty>(
        'MoveTask',
        moveTask_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MoveTaskRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetProjectMembersRequest,
            $0.GetProjectMembersResponse>(
        'GetProjectMembers',
        getProjectMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetProjectMembersRequest.fromBuffer(value),
        ($0.GetProjectMembersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetProjectMembersRequest, $1.Empty>(
        'SetProjectMembers',
        setProjectMembers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetProjectMembersRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateProjectResponse> createProject_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CreateProjectRequest> $request) async {
    return createProject($call, await $request);
  }

  $async.Future<$0.CreateProjectResponse> createProject(
      $grpc.ServiceCall call, $0.CreateProjectRequest request);

  $async.Future<$0.GetProjectsResponse> getProjects_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetProjectsRequest> $request) async {
    return getProjects($call, await $request);
  }

  $async.Future<$0.GetProjectsResponse> getProjects(
      $grpc.ServiceCall call, $0.GetProjectsRequest request);

  $async.Future<$0.GetProjectResponse> getProject_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetProjectRequest> $request) async {
    return getProject($call, await $request);
  }

  $async.Future<$0.GetProjectResponse> getProject(
      $grpc.ServiceCall call, $0.GetProjectRequest request);

  $async.Future<$1.Empty> deleteProject_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteProjectRequest> $request) async {
    return deleteProject($call, await $request);
  }

  $async.Future<$1.Empty> deleteProject(
      $grpc.ServiceCall call, $0.DeleteProjectRequest request);

  $async.Future<$1.Empty> updateProject_Pre($grpc.ServiceCall $call,
      $async.Future<$0.UpdateProjectRequest> $request) async {
    return updateProject($call, await $request);
  }

  $async.Future<$1.Empty> updateProject(
      $grpc.ServiceCall call, $0.UpdateProjectRequest request);

  $async.Future<$1.Empty> closeProject_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CloseProjectRequest> $request) async {
    return closeProject($call, await $request);
  }

  $async.Future<$1.Empty> closeProject(
      $grpc.ServiceCall call, $0.CloseProjectRequest request);

  $async.Future<$0.GetProjectKanbanResponse> getProjectKanban_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetProjectKanbanRequest> $request) async {
    return getProjectKanban($call, await $request);
  }

  $async.Future<$0.GetProjectKanbanResponse> getProjectKanban(
      $grpc.ServiceCall call, $0.GetProjectKanbanRequest request);

  $async.Future<$0.KanbanColumn> createKanbanColumn_Pre($grpc.ServiceCall $call,
      $async.Future<$0.CreateKanbanColumnRequest> $request) async {
    return createKanbanColumn($call, await $request);
  }

  $async.Future<$0.KanbanColumn> createKanbanColumn(
      $grpc.ServiceCall call, $0.CreateKanbanColumnRequest request);

  $async.Future<$0.KanbanColumn> updateKanbanColumn_Pre($grpc.ServiceCall $call,
      $async.Future<$0.UpdateKanbanColumnRequest> $request) async {
    return updateKanbanColumn($call, await $request);
  }

  $async.Future<$0.KanbanColumn> updateKanbanColumn(
      $grpc.ServiceCall call, $0.UpdateKanbanColumnRequest request);

  $async.Future<$1.Empty> deleteKanbanColumn_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteKanbanColumnRequest> $request) async {
    return deleteKanbanColumn($call, await $request);
  }

  $async.Future<$1.Empty> deleteKanbanColumn(
      $grpc.ServiceCall call, $0.DeleteKanbanColumnRequest request);

  $async.Future<$1.Empty> reorderKanbanColumns_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ReorderKanbanColumnsRequest> $request) async {
    return reorderKanbanColumns($call, await $request);
  }

  $async.Future<$1.Empty> reorderKanbanColumns(
      $grpc.ServiceCall call, $0.ReorderKanbanColumnsRequest request);

  $async.Future<$1.Empty> moveTask_Pre($grpc.ServiceCall $call,
      $async.Future<$0.MoveTaskRequest> $request) async {
    return moveTask($call, await $request);
  }

  $async.Future<$1.Empty> moveTask(
      $grpc.ServiceCall call, $0.MoveTaskRequest request);

  $async.Future<$0.GetProjectMembersResponse> getProjectMembers_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetProjectMembersRequest> $request) async {
    return getProjectMembers($call, await $request);
  }

  $async.Future<$0.GetProjectMembersResponse> getProjectMembers(
      $grpc.ServiceCall call, $0.GetProjectMembersRequest request);

  $async.Future<$1.Empty> setProjectMembers_Pre($grpc.ServiceCall $call,
      $async.Future<$0.SetProjectMembersRequest> $request) async {
    return setProjectMembers($call, await $request);
  }

  $async.Future<$1.Empty> setProjectMembers(
      $grpc.ServiceCall call, $0.SetProjectMembersRequest request);
}
