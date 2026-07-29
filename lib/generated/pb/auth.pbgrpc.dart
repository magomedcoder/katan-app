// This is a generated file - do not edit.
//
// Generated from auth.proto.

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

import 'auth.pb.dart' as $0;

export 'auth.pb.dart';

@$pb.GrpcServiceName('katan.AuthService')
class AuthServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  AuthServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.LoginResponse> login(
    $0.LoginRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.RefreshResponse> refresh(
    $0.RefreshRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$refresh, request, options: options);
  }

  $grpc.ResponseFuture<$0.LogoutResponse> logout(
    $0.LogoutRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$logout, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetOAuth2AuthorizationURLResponse>
      getOAuth2AuthorizationURL(
    $0.GetOAuth2AuthorizationURLRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getOAuth2AuthorizationURL, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.LoginResponse> oAuth2ResourceOwnerPassword(
    $0.OAuth2ResourceOwnerPasswordRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$oAuth2ResourceOwnerPassword, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.OAuth2ClientCredentialsResponse>
      oAuth2ClientCredentials(
    $0.OAuth2ClientCredentialsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$oAuth2ClientCredentials, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.OAuth2ProviderRefreshResponse> oAuth2ProviderRefresh(
    $0.OAuth2ProviderRefreshRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$oAuth2ProviderRefresh, request, options: options);
  }

  // method descriptors

  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/katan.AuthService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      $0.LoginResponse.fromBuffer);
  static final _$refresh =
      $grpc.ClientMethod<$0.RefreshRequest, $0.RefreshResponse>(
          '/katan.AuthService/Refresh',
          ($0.RefreshRequest value) => value.writeToBuffer(),
          $0.RefreshResponse.fromBuffer);
  static final _$logout =
      $grpc.ClientMethod<$0.LogoutRequest, $0.LogoutResponse>(
          '/katan.AuthService/Logout',
          ($0.LogoutRequest value) => value.writeToBuffer(),
          $0.LogoutResponse.fromBuffer);
  static final _$getOAuth2AuthorizationURL = $grpc.ClientMethod<
          $0.GetOAuth2AuthorizationURLRequest,
          $0.GetOAuth2AuthorizationURLResponse>(
      '/katan.AuthService/GetOAuth2AuthorizationURL',
      ($0.GetOAuth2AuthorizationURLRequest value) => value.writeToBuffer(),
      $0.GetOAuth2AuthorizationURLResponse.fromBuffer);
  static final _$oAuth2ResourceOwnerPassword = $grpc.ClientMethod<
          $0.OAuth2ResourceOwnerPasswordRequest, $0.LoginResponse>(
      '/katan.AuthService/OAuth2ResourceOwnerPassword',
      ($0.OAuth2ResourceOwnerPasswordRequest value) => value.writeToBuffer(),
      $0.LoginResponse.fromBuffer);
  static final _$oAuth2ClientCredentials = $grpc.ClientMethod<
          $0.OAuth2ClientCredentialsRequest,
          $0.OAuth2ClientCredentialsResponse>(
      '/katan.AuthService/OAuth2ClientCredentials',
      ($0.OAuth2ClientCredentialsRequest value) => value.writeToBuffer(),
      $0.OAuth2ClientCredentialsResponse.fromBuffer);
  static final _$oAuth2ProviderRefresh = $grpc.ClientMethod<
          $0.OAuth2ProviderRefreshRequest, $0.OAuth2ProviderRefreshResponse>(
      '/katan.AuthService/OAuth2ProviderRefresh',
      ($0.OAuth2ProviderRefreshRequest value) => value.writeToBuffer(),
      $0.OAuth2ProviderRefreshResponse.fromBuffer);
}

@$pb.GrpcServiceName('katan.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'katan.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RefreshRequest, $0.RefreshResponse>(
        'Refresh',
        refresh_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RefreshRequest.fromBuffer(value),
        ($0.RefreshResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LogoutRequest, $0.LogoutResponse>(
        'Logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LogoutRequest.fromBuffer(value),
        ($0.LogoutResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetOAuth2AuthorizationURLRequest,
            $0.GetOAuth2AuthorizationURLResponse>(
        'GetOAuth2AuthorizationURL',
        getOAuth2AuthorizationURL_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetOAuth2AuthorizationURLRequest.fromBuffer(value),
        ($0.GetOAuth2AuthorizationURLResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OAuth2ResourceOwnerPasswordRequest,
            $0.LoginResponse>(
        'OAuth2ResourceOwnerPassword',
        oAuth2ResourceOwnerPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.OAuth2ResourceOwnerPasswordRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OAuth2ClientCredentialsRequest,
            $0.OAuth2ClientCredentialsResponse>(
        'OAuth2ClientCredentials',
        oAuth2ClientCredentials_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.OAuth2ClientCredentialsRequest.fromBuffer(value),
        ($0.OAuth2ClientCredentialsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OAuth2ProviderRefreshRequest,
            $0.OAuth2ProviderRefreshResponse>(
        'OAuth2ProviderRefresh',
        oAuth2ProviderRefresh_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.OAuth2ProviderRefreshRequest.fromBuffer(value),
        ($0.OAuth2ProviderRefreshResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginResponse> login_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.LoginRequest> $request) async {
    return login($call, await $request);
  }

  $async.Future<$0.LoginResponse> login(
      $grpc.ServiceCall call, $0.LoginRequest request);

  $async.Future<$0.RefreshResponse> refresh_Pre($grpc.ServiceCall $call,
      $async.Future<$0.RefreshRequest> $request) async {
    return refresh($call, await $request);
  }

  $async.Future<$0.RefreshResponse> refresh(
      $grpc.ServiceCall call, $0.RefreshRequest request);

  $async.Future<$0.LogoutResponse> logout_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.LogoutRequest> $request) async {
    return logout($call, await $request);
  }

  $async.Future<$0.LogoutResponse> logout(
      $grpc.ServiceCall call, $0.LogoutRequest request);

  $async.Future<$0.GetOAuth2AuthorizationURLResponse>
      getOAuth2AuthorizationURL_Pre($grpc.ServiceCall $call,
          $async.Future<$0.GetOAuth2AuthorizationURLRequest> $request) async {
    return getOAuth2AuthorizationURL($call, await $request);
  }

  $async.Future<$0.GetOAuth2AuthorizationURLResponse> getOAuth2AuthorizationURL(
      $grpc.ServiceCall call, $0.GetOAuth2AuthorizationURLRequest request);

  $async.Future<$0.LoginResponse> oAuth2ResourceOwnerPassword_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.OAuth2ResourceOwnerPasswordRequest> $request) async {
    return oAuth2ResourceOwnerPassword($call, await $request);
  }

  $async.Future<$0.LoginResponse> oAuth2ResourceOwnerPassword(
      $grpc.ServiceCall call, $0.OAuth2ResourceOwnerPasswordRequest request);

  $async.Future<$0.OAuth2ClientCredentialsResponse> oAuth2ClientCredentials_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.OAuth2ClientCredentialsRequest> $request) async {
    return oAuth2ClientCredentials($call, await $request);
  }

  $async.Future<$0.OAuth2ClientCredentialsResponse> oAuth2ClientCredentials(
      $grpc.ServiceCall call, $0.OAuth2ClientCredentialsRequest request);

  $async.Future<$0.OAuth2ProviderRefreshResponse> oAuth2ProviderRefresh_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.OAuth2ProviderRefreshRequest> $request) async {
    return oAuth2ProviderRefresh($call, await $request);
  }

  $async.Future<$0.OAuth2ProviderRefreshResponse> oAuth2ProviderRefresh(
      $grpc.ServiceCall call, $0.OAuth2ProviderRefreshRequest request);
}
