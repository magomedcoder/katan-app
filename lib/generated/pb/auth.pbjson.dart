// This is a generated file - do not edit.
//
// Generated from auth.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSPAoIdXNlcm5hbWUYASABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0L'
    'jRgdCw0L3QuNC1Ugh1c2VybmFtZRI8CghwYXNzd29yZBgCIAEoCUIgkkEdMhvRgdC60L7RgNC+'
    'INC+0L/QuNGB0LDQvdC40LVSCHBhc3N3b3Jk');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'accessToken'},
    {
      '1': 'refresh_token',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'refreshToken'
    },
    {'1': 'expires_in', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'expiresIn'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEkMKDGFjY2Vzc190b2tlbhgBIAEoCUIgkkEdMhvRgdC60L7RgNC+IN'
    'C+0L/QuNGB0LDQvdC40LVSC2FjY2Vzc1Rva2VuEkUKDXJlZnJlc2hfdG9rZW4YAiABKAlCIJJB'
    'HTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgxyZWZyZXNoVG9rZW4SPwoKZXhwaXJlc1'
    '9pbhgDIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCWV4cGlyZXNJbg==');

@$core.Deprecated('Use refreshRequestDescriptor instead')
const RefreshRequest$json = {
  '1': 'RefreshRequest',
  '2': [
    {
      '1': 'refresh_token',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'refreshToken'
    },
  ],
};

/// Descriptor for `RefreshRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshRequestDescriptor = $convert.base64Decode(
    'Cg5SZWZyZXNoUmVxdWVzdBJFCg1yZWZyZXNoX3Rva2VuGAEgASgJQiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVIMcmVmcmVzaFRva2Vu');

@$core.Deprecated('Use refreshResponseDescriptor instead')
const RefreshResponse$json = {
  '1': 'RefreshResponse',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'accessToken'},
    {'1': 'expires_in', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'expiresIn'},
  ],
};

/// Descriptor for `RefreshResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshResponseDescriptor = $convert.base64Decode(
    'Cg9SZWZyZXNoUmVzcG9uc2USQwoMYWNjZXNzX3Rva2VuGAEgASgJQiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVILYWNjZXNzVG9rZW4SPwoKZXhwaXJlc19pbhgCIAEoA0IgkkEd'
    'MhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCWV4cGlyZXNJbg==');

@$core.Deprecated('Use logoutRequestDescriptor instead')
const LogoutRequest$json = {
  '1': 'LogoutRequest',
};

/// Descriptor for `LogoutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logoutRequestDescriptor =
    $convert.base64Decode('Cg1Mb2dvdXRSZXF1ZXN0');

@$core.Deprecated('Use logoutResponseDescriptor instead')
const LogoutResponse$json = {
  '1': 'LogoutResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'status'},
  ],
};

/// Descriptor for `LogoutResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logoutResponseDescriptor = $convert.base64Decode(
    'Cg5Mb2dvdXRSZXNwb25zZRI4CgZzdGF0dXMYASABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0L'
    'jRgdCw0L3QuNC1UgZzdGF0dXM=');

@$core.Deprecated('Use getOAuth2AuthorizationURLRequestDescriptor instead')
const GetOAuth2AuthorizationURLRequest$json = {
  '1': 'GetOAuth2AuthorizationURLRequest',
  '2': [
    {'1': 'provider_id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'providerId'},
  ],
};

/// Descriptor for `GetOAuth2AuthorizationURLRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOAuth2AuthorizationURLRequestDescriptor =
    $convert.base64Decode(
        'CiBHZXRPQXV0aDJBdXRob3JpemF0aW9uVVJMUmVxdWVzdBJBCgtwcm92aWRlcl9pZBgBIAEoCU'
        'IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCnByb3ZpZGVySWQ=');

@$core.Deprecated('Use getOAuth2AuthorizationURLResponseDescriptor instead')
const GetOAuth2AuthorizationURLResponse$json = {
  '1': 'GetOAuth2AuthorizationURLResponse',
  '2': [
    {
      '1': 'authorization_url',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'authorizationUrl'
    },
  ],
};

/// Descriptor for `GetOAuth2AuthorizationURLResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOAuth2AuthorizationURLResponseDescriptor =
    $convert.base64Decode(
        'CiFHZXRPQXV0aDJBdXRob3JpemF0aW9uVVJMUmVzcG9uc2USTQoRYXV0aG9yaXphdGlvbl91cm'
        'wYASABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UhBhdXRob3JpemF0aW9u'
        'VXJs');

@$core.Deprecated('Use oAuth2ResourceOwnerPasswordRequestDescriptor instead')
const OAuth2ResourceOwnerPasswordRequest$json = {
  '1': 'OAuth2ResourceOwnerPasswordRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'password'},
  ],
};

/// Descriptor for `OAuth2ResourceOwnerPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oAuth2ResourceOwnerPasswordRequestDescriptor =
    $convert.base64Decode(
        'CiJPQXV0aDJSZXNvdXJjZU93bmVyUGFzc3dvcmRSZXF1ZXN0EjwKCHVzZXJuYW1lGAEgASgJQi'
        'CSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIIdXNlcm5hbWUSPAoIcGFzc3dvcmQY'
        'AiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghwYXNzd29yZA==');

@$core.Deprecated('Use oAuth2ClientCredentialsRequestDescriptor instead')
const OAuth2ClientCredentialsRequest$json = {
  '1': 'OAuth2ClientCredentialsRequest',
  '2': [
    {'1': 'scope', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'scope'},
  ],
};

/// Descriptor for `OAuth2ClientCredentialsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oAuth2ClientCredentialsRequestDescriptor =
    $convert.base64Decode(
        'Ch5PQXV0aDJDbGllbnRDcmVkZW50aWFsc1JlcXVlc3QSNgoFc2NvcGUYASABKAlCIJJBHTIb0Y'
        'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgVzY29wZQ==');

@$core.Deprecated('Use oAuth2ClientCredentialsResponseDescriptor instead')
const OAuth2ClientCredentialsResponse$json = {
  '1': 'OAuth2ClientCredentialsResponse',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'accessToken'},
    {'1': 'token_type', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'tokenType'},
    {'1': 'expires_in', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'expiresIn'},
  ],
};

/// Descriptor for `OAuth2ClientCredentialsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oAuth2ClientCredentialsResponseDescriptor = $convert.base64Decode(
    'Ch9PQXV0aDJDbGllbnRDcmVkZW50aWFsc1Jlc3BvbnNlEkMKDGFjY2Vzc190b2tlbhgBIAEoCU'
    'IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSC2FjY2Vzc1Rva2VuEj8KCnRva2Vu'
    'X3R5cGUYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugl0b2tlblR5cG'
    'USPwoKZXhwaXJlc19pbhgDIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVS'
    'CWV4cGlyZXNJbg==');

@$core.Deprecated('Use oAuth2ProviderRefreshRequestDescriptor instead')
const OAuth2ProviderRefreshRequest$json = {
  '1': 'OAuth2ProviderRefreshRequest',
  '2': [
    {
      '1': 'refresh_token',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'refreshToken'
    },
  ],
};

/// Descriptor for `OAuth2ProviderRefreshRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oAuth2ProviderRefreshRequestDescriptor =
    $convert.base64Decode(
        'ChxPQXV0aDJQcm92aWRlclJlZnJlc2hSZXF1ZXN0EkUKDXJlZnJlc2hfdG9rZW4YASABKAlCIJ'
        'JBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgxyZWZyZXNoVG9rZW4=');

@$core.Deprecated('Use oAuth2ProviderRefreshResponseDescriptor instead')
const OAuth2ProviderRefreshResponse$json = {
  '1': 'OAuth2ProviderRefreshResponse',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'accessToken'},
    {'1': 'token_type', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'tokenType'},
    {'1': 'expires_in', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'expiresIn'},
    {
      '1': 'refresh_token',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'refreshToken'
    },
  ],
};

/// Descriptor for `OAuth2ProviderRefreshResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oAuth2ProviderRefreshResponseDescriptor = $convert.base64Decode(
    'Ch1PQXV0aDJQcm92aWRlclJlZnJlc2hSZXNwb25zZRJDCgxhY2Nlc3NfdG9rZW4YASABKAlCIJ'
    'JBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgthY2Nlc3NUb2tlbhI/Cgp0b2tlbl90'
    'eXBlGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJdG9rZW5UeXBlEj'
    '8KCmV4cGlyZXNfaW4YAyABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugll'
    'eHBpcmVzSW4SRQoNcmVmcmVzaF90b2tlbhgEIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSDHJlZnJlc2hUb2tlbg==');
