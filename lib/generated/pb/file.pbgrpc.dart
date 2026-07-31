// This is a generated file - do not edit.
//
// Generated from file.proto.

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

import 'file.pb.dart' as $0;

export 'file.pb.dart';

@$pb.GrpcServiceName('katan.FileService')
class FileServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  FileServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.GetFilesResponse> getFiles(
    $0.GetFilesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getFiles, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteFileResponse> deleteFile(
    $0.DeleteFileRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteFile, request, options: options);
  }

  $grpc.ResponseFuture<$0.UploadIconResponse> uploadIcon(
    $0.UploadIconRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$uploadIcon, request, options: options);
  }

  // method descriptors

  static final _$getFiles =
      $grpc.ClientMethod<$0.GetFilesRequest, $0.GetFilesResponse>(
          '/katan.FileService/GetFiles',
          ($0.GetFilesRequest value) => value.writeToBuffer(),
          $0.GetFilesResponse.fromBuffer);
  static final _$deleteFile =
      $grpc.ClientMethod<$0.DeleteFileRequest, $0.DeleteFileResponse>(
          '/katan.FileService/DeleteFile',
          ($0.DeleteFileRequest value) => value.writeToBuffer(),
          $0.DeleteFileResponse.fromBuffer);
  static final _$uploadIcon =
      $grpc.ClientMethod<$0.UploadIconRequest, $0.UploadIconResponse>(
          '/katan.FileService/UploadIcon',
          ($0.UploadIconRequest value) => value.writeToBuffer(),
          $0.UploadIconResponse.fromBuffer);
}

@$pb.GrpcServiceName('katan.FileService')
abstract class FileServiceBase extends $grpc.Service {
  $core.String get $name => 'katan.FileService';

  FileServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetFilesRequest, $0.GetFilesResponse>(
        'GetFiles',
        getFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetFilesRequest.fromBuffer(value),
        ($0.GetFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteFileRequest, $0.DeleteFileResponse>(
        'DeleteFile',
        deleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteFileRequest.fromBuffer(value),
        ($0.DeleteFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UploadIconRequest, $0.UploadIconResponse>(
        'UploadIcon',
        uploadIcon_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UploadIconRequest.fromBuffer(value),
        ($0.UploadIconResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetFilesResponse> getFiles_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetFilesRequest> $request) async {
    return getFiles($call, await $request);
  }

  $async.Future<$0.GetFilesResponse> getFiles(
      $grpc.ServiceCall call, $0.GetFilesRequest request);

  $async.Future<$0.DeleteFileResponse> deleteFile_Pre($grpc.ServiceCall $call,
      $async.Future<$0.DeleteFileRequest> $request) async {
    return deleteFile($call, await $request);
  }

  $async.Future<$0.DeleteFileResponse> deleteFile(
      $grpc.ServiceCall call, $0.DeleteFileRequest request);

  $async.Future<$0.UploadIconResponse> uploadIcon_Pre($grpc.ServiceCall $call,
      $async.Future<$0.UploadIconRequest> $request) async {
    return uploadIcon($call, await $request);
  }

  $async.Future<$0.UploadIconResponse> uploadIcon(
      $grpc.ServiceCall call, $0.UploadIconRequest request);
}
