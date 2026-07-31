// This is a generated file - do not edit.
//
// Generated from account.proto.

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

import 'account.pb.dart' as $0;
import 'common.pb.dart' as $1;

export 'account.pb.dart';

@$pb.GrpcServiceName('katan.AccountService')
class AccountServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  AccountServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.GetAccountResponse> getAccount(
    $0.GetAccountRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.EditAccountResponse> editAccount(
    $0.EditAccountRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$editAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChangePasswordResponse> changePassword(
    $0.ChangePasswordRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$changePassword, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetAccountAddressResponse> getAccountAddress(
    $0.GetAccountAddressRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getAccountAddress, request, options: options);
  }

  $grpc.ResponseFuture<$0.AccountExportResponse> getExports(
    $0.AccountExportRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getExports, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetNotificationsResponse> getNotifications(
    $0.GetNotificationsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getNotifications, request, options: options);
  }

  $grpc.ResponseFuture<$0.MarkNotificationReadResponse> markNotificationRead(
    $0.MarkNotificationReadRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$markNotificationRead, request, options: options);
  }

  $grpc.ResponseFuture<$0.MarkAllNotificationsReadResponse>
      markAllNotificationsRead(
    $0.MarkAllNotificationsReadRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$markAllNotificationsRead, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.AccountSearchResponse> search(
    $0.AccountSearchRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$search, request, options: options);
  }

  $grpc.ResponseStream<$0.AccountEvent> subscribe(
    $0.AccountSubscribeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createStreamingCall(
        _$subscribe, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.Empty> emit(
    $0.AccountClientEvent request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$emit, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateAllowedLoginIps(
    $0.UpdateAllowedLoginIpsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$updateAllowedLoginIps, request, options: options);
  }

  // method descriptors

  static final _$getAccount =
      $grpc.ClientMethod<$0.GetAccountRequest, $0.GetAccountResponse>(
          '/katan.AccountService/GetAccount',
          ($0.GetAccountRequest value) => value.writeToBuffer(),
          $0.GetAccountResponse.fromBuffer);
  static final _$editAccount =
      $grpc.ClientMethod<$0.EditAccountRequest, $0.EditAccountResponse>(
          '/katan.AccountService/EditAccount',
          ($0.EditAccountRequest value) => value.writeToBuffer(),
          $0.EditAccountResponse.fromBuffer);
  static final _$changePassword =
      $grpc.ClientMethod<$0.ChangePasswordRequest, $0.ChangePasswordResponse>(
          '/katan.AccountService/ChangePassword',
          ($0.ChangePasswordRequest value) => value.writeToBuffer(),
          $0.ChangePasswordResponse.fromBuffer);
  static final _$getAccountAddress = $grpc.ClientMethod<
          $0.GetAccountAddressRequest, $0.GetAccountAddressResponse>(
      '/katan.AccountService/GetAccountAddress',
      ($0.GetAccountAddressRequest value) => value.writeToBuffer(),
      $0.GetAccountAddressResponse.fromBuffer);
  static final _$getExports =
      $grpc.ClientMethod<$0.AccountExportRequest, $0.AccountExportResponse>(
          '/katan.AccountService/GetExports',
          ($0.AccountExportRequest value) => value.writeToBuffer(),
          $0.AccountExportResponse.fromBuffer);
  static final _$getNotifications = $grpc.ClientMethod<
          $0.GetNotificationsRequest, $0.GetNotificationsResponse>(
      '/katan.AccountService/GetNotifications',
      ($0.GetNotificationsRequest value) => value.writeToBuffer(),
      $0.GetNotificationsResponse.fromBuffer);
  static final _$markNotificationRead = $grpc.ClientMethod<
          $0.MarkNotificationReadRequest, $0.MarkNotificationReadResponse>(
      '/katan.AccountService/MarkNotificationRead',
      ($0.MarkNotificationReadRequest value) => value.writeToBuffer(),
      $0.MarkNotificationReadResponse.fromBuffer);
  static final _$markAllNotificationsRead = $grpc.ClientMethod<
          $0.MarkAllNotificationsReadRequest,
          $0.MarkAllNotificationsReadResponse>(
      '/katan.AccountService/MarkAllNotificationsRead',
      ($0.MarkAllNotificationsReadRequest value) => value.writeToBuffer(),
      $0.MarkAllNotificationsReadResponse.fromBuffer);
  static final _$search =
      $grpc.ClientMethod<$0.AccountSearchRequest, $0.AccountSearchResponse>(
          '/katan.AccountService/Search',
          ($0.AccountSearchRequest value) => value.writeToBuffer(),
          $0.AccountSearchResponse.fromBuffer);
  static final _$subscribe =
      $grpc.ClientMethod<$0.AccountSubscribeRequest, $0.AccountEvent>(
          '/katan.AccountService/Subscribe',
          ($0.AccountSubscribeRequest value) => value.writeToBuffer(),
          $0.AccountEvent.fromBuffer);
  static final _$emit = $grpc.ClientMethod<$0.AccountClientEvent, $1.Empty>(
      '/katan.AccountService/Emit',
      ($0.AccountClientEvent value) => value.writeToBuffer(),
      $1.Empty.fromBuffer);
  static final _$updateAllowedLoginIps =
      $grpc.ClientMethod<$0.UpdateAllowedLoginIpsRequest, $1.Empty>(
          '/katan.AccountService/UpdateAllowedLoginIps',
          ($0.UpdateAllowedLoginIpsRequest value) => value.writeToBuffer(),
          $1.Empty.fromBuffer);
}

@$pb.GrpcServiceName('katan.AccountService')
abstract class AccountServiceBase extends $grpc.Service {
  $core.String get $name => 'katan.AccountService';

  AccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetAccountRequest, $0.GetAccountResponse>(
        'GetAccount',
        getAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAccountRequest.fromBuffer(value),
        ($0.GetAccountResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.EditAccountRequest, $0.EditAccountResponse>(
            'EditAccount',
            editAccount_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.EditAccountRequest.fromBuffer(value),
            ($0.EditAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangePasswordRequest,
            $0.ChangePasswordResponse>(
        'ChangePassword',
        changePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChangePasswordRequest.fromBuffer(value),
        ($0.ChangePasswordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAccountAddressRequest,
            $0.GetAccountAddressResponse>(
        'GetAccountAddress',
        getAccountAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetAccountAddressRequest.fromBuffer(value),
        ($0.GetAccountAddressResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AccountExportRequest, $0.AccountExportResponse>(
            'GetExports',
            getExports_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AccountExportRequest.fromBuffer(value),
            ($0.AccountExportResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetNotificationsRequest,
            $0.GetNotificationsResponse>(
        'GetNotifications',
        getNotifications_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetNotificationsRequest.fromBuffer(value),
        ($0.GetNotificationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MarkNotificationReadRequest,
            $0.MarkNotificationReadResponse>(
        'MarkNotificationRead',
        markNotificationRead_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.MarkNotificationReadRequest.fromBuffer(value),
        ($0.MarkNotificationReadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MarkAllNotificationsReadRequest,
            $0.MarkAllNotificationsReadResponse>(
        'MarkAllNotificationsRead',
        markAllNotificationsRead_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.MarkAllNotificationsReadRequest.fromBuffer(value),
        ($0.MarkAllNotificationsReadResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.AccountSearchRequest, $0.AccountSearchResponse>(
            'Search',
            search_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.AccountSearchRequest.fromBuffer(value),
            ($0.AccountSearchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountSubscribeRequest, $0.AccountEvent>(
        'Subscribe',
        subscribe_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountSubscribeRequest.fromBuffer(value),
        ($0.AccountEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountClientEvent, $1.Empty>(
        'Emit',
        emit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountClientEvent.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateAllowedLoginIpsRequest, $1.Empty>(
        'UpdateAllowedLoginIps',
        updateAllowedLoginIps_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateAllowedLoginIpsRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetAccountResponse> getAccount_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetAccountRequest> $request) async {
    return getAccount($call, await $request);
  }

  $async.Future<$0.GetAccountResponse> getAccount(
      $grpc.ServiceCall call, $0.GetAccountRequest request);

  $async.Future<$0.EditAccountResponse> editAccount_Pre($grpc.ServiceCall $call,
      $async.Future<$0.EditAccountRequest> $request) async {
    return editAccount($call, await $request);
  }

  $async.Future<$0.EditAccountResponse> editAccount(
      $grpc.ServiceCall call, $0.EditAccountRequest request);

  $async.Future<$0.ChangePasswordResponse> changePassword_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ChangePasswordRequest> $request) async {
    return changePassword($call, await $request);
  }

  $async.Future<$0.ChangePasswordResponse> changePassword(
      $grpc.ServiceCall call, $0.ChangePasswordRequest request);

  $async.Future<$0.GetAccountAddressResponse> getAccountAddress_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetAccountAddressRequest> $request) async {
    return getAccountAddress($call, await $request);
  }

  $async.Future<$0.GetAccountAddressResponse> getAccountAddress(
      $grpc.ServiceCall call, $0.GetAccountAddressRequest request);

  $async.Future<$0.AccountExportResponse> getExports_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.AccountExportRequest> $request) async {
    return getExports($call, await $request);
  }

  $async.Future<$0.AccountExportResponse> getExports(
      $grpc.ServiceCall call, $0.AccountExportRequest request);

  $async.Future<$0.GetNotificationsResponse> getNotifications_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetNotificationsRequest> $request) async {
    return getNotifications($call, await $request);
  }

  $async.Future<$0.GetNotificationsResponse> getNotifications(
      $grpc.ServiceCall call, $0.GetNotificationsRequest request);

  $async.Future<$0.MarkNotificationReadResponse> markNotificationRead_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.MarkNotificationReadRequest> $request) async {
    return markNotificationRead($call, await $request);
  }

  $async.Future<$0.MarkNotificationReadResponse> markNotificationRead(
      $grpc.ServiceCall call, $0.MarkNotificationReadRequest request);

  $async.Future<$0.MarkAllNotificationsReadResponse>
      markAllNotificationsRead_Pre($grpc.ServiceCall $call,
          $async.Future<$0.MarkAllNotificationsReadRequest> $request) async {
    return markAllNotificationsRead($call, await $request);
  }

  $async.Future<$0.MarkAllNotificationsReadResponse> markAllNotificationsRead(
      $grpc.ServiceCall call, $0.MarkAllNotificationsReadRequest request);

  $async.Future<$0.AccountSearchResponse> search_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AccountSearchRequest> $request) async {
    return search($call, await $request);
  }

  $async.Future<$0.AccountSearchResponse> search(
      $grpc.ServiceCall call, $0.AccountSearchRequest request);

  $async.Stream<$0.AccountEvent> subscribe_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AccountSubscribeRequest> $request) async* {
    yield* subscribe($call, await $request);
  }

  $async.Stream<$0.AccountEvent> subscribe(
      $grpc.ServiceCall call, $0.AccountSubscribeRequest request);

  $async.Future<$1.Empty> emit_Pre($grpc.ServiceCall $call,
      $async.Future<$0.AccountClientEvent> $request) async {
    return emit($call, await $request);
  }

  $async.Future<$1.Empty> emit(
      $grpc.ServiceCall call, $0.AccountClientEvent request);

  $async.Future<$1.Empty> updateAllowedLoginIps_Pre($grpc.ServiceCall $call,
      $async.Future<$0.UpdateAllowedLoginIpsRequest> $request) async {
    return updateAllowedLoginIps($call, await $request);
  }

  $async.Future<$1.Empty> updateAllowedLoginIps(
      $grpc.ServiceCall call, $0.UpdateAllowedLoginIpsRequest request);
}
