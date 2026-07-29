// This is a generated file - do not edit.
//
// Generated from account.proto.

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

@$core.Deprecated('Use accountAddressDescriptor instead')
const AccountAddress$json = {
  '1': 'AccountAddress',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'label'},
  ],
};

/// Descriptor for `AccountAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountAddressDescriptor = $convert.base64Decode(
    'Cg5BY2NvdW50QWRkcmVzcxIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0L'
    'DQvdC40LVSAmlkEjYKBWxhYmVsGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC9'
    '0LjQtVIFbGFiZWw=');

@$core.Deprecated('Use accountExportDescriptor instead')
const AccountExport$json = {
  '1': 'AccountExport',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'progress', '3': 2, '4': 1, '5': 8, '8': {}, '10': 'progress'},
    {'1': 'file_name', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'fileName'},
  ],
};

/// Descriptor for `AccountExport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountExportDescriptor = $convert.base64Decode(
    'Cg1BY2NvdW50RXhwb3J0EjAKAmlkGAEgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsN'
    'C90LjQtVICaWQSPAoIcHJvZ3Jlc3MYAiABKAhCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw'
    '0L3QuNC1Ughwcm9ncmVzcxI9CglmaWxlX25hbWUYAyABKAlCIJJBHTIb0YHQutC+0YDQviDQvt'
    'C/0LjRgdCw0L3QuNC1UghmaWxlTmFtZQ==');

@$core.Deprecated('Use notificationDescriptor instead')
const Notification$json = {
  '1': 'Notification',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'description'},
    {'1': 'type', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'type'},
    {'1': 'task_id', '3': 5, '4': 1, '5': 3, '8': {}, '10': 'taskId'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 3, '8': {}, '10': 'createdAt'},
    {'1': 'read', '3': 7, '4': 1, '5': 8, '8': {}, '10': 'read'},
  ],
};

/// Descriptor for `Notification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationDescriptor = $convert.base64Decode(
    'CgxOb3RpZmljYXRpb24SMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L'
    '3QuNC1UgJpZBI0CgRuYW1lGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
    'tVIEbmFtZRJCCgtkZXNjcmlwdGlvbhgDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0L'
    'DQvdC40LVSC2Rlc2NyaXB0aW9uEjQKBHR5cGUYBCABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/'
    '0LjRgdCw0L3QuNC1UgR0eXBlEjkKB3Rhc2tfaWQYBSABKANCIJJBHTIb0YHQutC+0YDQviDQvt'
    'C/0LjRgdCw0L3QuNC1UgZ0YXNrSWQSPwoKY3JlYXRlZF9hdBgGIAEoA0IgkkEdMhvRgdC60L7R'
    'gNC+INC+0L/QuNGB0LDQvdC40LVSCWNyZWF0ZWRBdBI0CgRyZWFkGAcgASgIQiCSQR0yG9GB0L'
    'rQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIEcmVhZA==');

@$core.Deprecated('Use getAccountRequestDescriptor instead')
const GetAccountRequest$json = {
  '1': 'GetAccountRequest',
  '2': [
    {'1': 'agent', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'agent'},
  ],
};

/// Descriptor for `GetAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountRequestDescriptor = $convert.base64Decode(
    'ChFHZXRBY2NvdW50UmVxdWVzdBI2CgVhZ2VudBgBIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L'
    '/QuNGB0LDQvdC40LVSBWFnZW50');

@$core.Deprecated('Use getAccountResponseDescriptor instead')
const GetAccountResponse$json = {
  '1': 'GetAccountResponse',
  '2': [
    {'1': 'full_name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'fullName'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'username'},
    {'1': 'permissions', '3': 3, '4': 3, '5': 9, '8': {}, '10': 'permissions'},
    {
      '1': 'tags',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.katan.Tag',
      '8': {},
      '10': 'tags'
    },
    {
      '1': 'active',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.katan.GetAccountResponse.Active',
      '8': {},
      '10': 'active'
    },
    {
      '1': 'notification',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.katan.GetAccountResponse.Notification',
      '8': {},
      '10': 'notification'
    },
  ],
  '3': [GetAccountResponse_Active$json, GetAccountResponse_Notification$json],
};

@$core.Deprecated('Use getAccountResponseDescriptor instead')
const GetAccountResponse_Active$json = {
  '1': 'Active',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'address'},
    {'1': 'nodes', '3': 2, '4': 3, '5': 9, '8': {}, '10': 'nodes'},
    {'1': 'cables', '3': 3, '4': 3, '5': 9, '8': {}, '10': 'cables'},
    {
      '1': 'coverage_area',
      '3': 4,
      '4': 3,
      '5': 9,
      '8': {},
      '10': 'coverageArea'
    },
    {'1': 'polygons', '3': 5, '4': 3, '5': 9, '8': {}, '10': 'polygons'},
    {'1': 'buildings', '3': 6, '4': 3, '5': 9, '8': {}, '10': 'buildings'},
    {'1': 'tags', '3': 7, '4': 3, '5': 3, '8': {}, '10': 'tags'},
    {'1': 'mode', '3': 8, '4': 1, '5': 5, '8': {}, '10': 'mode'},
    {'1': 'objectNode', '3': 9, '4': 1, '5': 5, '8': {}, '10': 'objectNode'},
  ],
};

@$core.Deprecated('Use getAccountResponseDescriptor instead')
const GetAccountResponse_Notification$json = {
  '1': 'Notification',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'message'},
  ],
};

/// Descriptor for `GetAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountResponseDescriptor = $convert.base64Decode(
    'ChJHZXRBY2NvdW50UmVzcG9uc2USPQoJZnVsbF9uYW1lGAEgASgJQiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVIIZnVsbE5hbWUSPAoIdXNlcm5hbWUYAiABKAlCIJJBHTIb0YHQ'
    'utC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugh1c2VybmFtZRJCCgtwZXJtaXNzaW9ucxgDIAMoCU'
    'IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSC3Blcm1pc3Npb25zEkAKBHRhZ3MY'
    'BCADKAsyCi5rYXRhbi5UYWdCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgR0YW'
    'dzEloKBmFjdGl2ZRgFIAEoCzIgLmthdGFuLkdldEFjY291bnRSZXNwb25zZS5BY3RpdmVCIJJB'
    'HTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZhY3RpdmUSbAoMbm90aWZpY2F0aW9uGA'
    'YgASgLMiYua2F0YW4uR2V0QWNjb3VudFJlc3BvbnNlLk5vdGlmaWNhdGlvbkIgkkEdMhvRgdC6'
    '0L7RgNC+INC+0L/QuNGB0LDQvdC40LVSDG5vdGlmaWNhdGlvbhqpBAoGQWN0aXZlEjoKB2FkZH'
    'Jlc3MYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdhZGRyZXNzEjYK'
    'BW5vZGVzGAIgAygJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFbm9kZXMSOA'
    'oGY2FibGVzGAMgAygJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGY2FibGVz'
    'EkUKDWNvdmVyYWdlX2FyZWEYBCADKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuN'
    'C1Ugxjb3ZlcmFnZUFyZWESPAoIcG9seWdvbnMYBSADKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/'
    '0LjRgdCw0L3QuNC1Ughwb2x5Z29ucxI+CglidWlsZGluZ3MYBiADKAlCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UglidWlsZGluZ3MSNAoEdGFncxgHIAMoA0IgkkEdMhvRgdC6'
    '0L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBHRhZ3MSNAoEbW9kZRgIIAEoBUIgkkEdMhvRgdC60L'
    '7RgNC+INC+0L/QuNGB0LDQvdC40LVSBG1vZGUSQAoKb2JqZWN0Tm9kZRgJIAEoBUIgkkEdMhvR'
    'gdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCm9iamVjdE5vZGUaSgoMTm90aWZpY2F0aW9uEj'
    'oKB21lc3NhZ2UYASABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdtZXNz'
    'YWdl');

@$core.Deprecated('Use editAccountRequestDescriptor instead')
const EditAccountRequest$json = {
  '1': 'EditAccountRequest',
  '2': [
    {'1': 'address_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'addressId'},
    {'1': 'mode_id', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'modeId'},
  ],
};

/// Descriptor for `EditAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editAccountRequestDescriptor = $convert.base64Decode(
    'ChJFZGl0QWNjb3VudFJlcXVlc3QSPwoKYWRkcmVzc19pZBgBIAEoA0IgkkEdMhvRgdC60L7RgN'
    'C+INC+0L/QuNGB0LDQvdC40LVSCWFkZHJlc3NJZBI5Cgdtb2RlX2lkGAIgASgFQiCSQR0yG9GB'
    '0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGbW9kZUlk');

@$core.Deprecated('Use editAccountResponseDescriptor instead')
const EditAccountResponse$json = {
  '1': 'EditAccountResponse',
};

/// Descriptor for `EditAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editAccountResponseDescriptor =
    $convert.base64Decode('ChNFZGl0QWNjb3VudFJlc3BvbnNl');

@$core.Deprecated('Use changePasswordRequestDescriptor instead')
const ChangePasswordRequest$json = {
  '1': 'ChangePasswordRequest',
  '2': [
    {'1': 'old', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'old'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'password'},
  ],
};

/// Descriptor for `ChangePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordRequestDescriptor = $convert.base64Decode(
    'ChVDaGFuZ2VQYXNzd29yZFJlcXVlc3QSMgoDb2xkGAEgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L'
    '7Qv9C40YHQsNC90LjQtVIDb2xkEjwKCHBhc3N3b3JkGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g'
    '0L7Qv9C40YHQsNC90LjQtVIIcGFzc3dvcmQ=');

@$core.Deprecated('Use changePasswordResponseDescriptor instead')
const ChangePasswordResponse$json = {
  '1': 'ChangePasswordResponse',
};

/// Descriptor for `ChangePasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordResponseDescriptor =
    $convert.base64Decode('ChZDaGFuZ2VQYXNzd29yZFJlc3BvbnNl');

@$core.Deprecated('Use getAccountAddressRequestDescriptor instead')
const GetAccountAddressRequest$json = {
  '1': 'GetAccountAddressRequest',
};

/// Descriptor for `GetAccountAddressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountAddressRequestDescriptor =
    $convert.base64Decode('ChhHZXRBY2NvdW50QWRkcmVzc1JlcXVlc3Q=');

@$core.Deprecated('Use getAccountAddressResponseDescriptor instead')
const GetAccountAddressResponse$json = {
  '1': 'GetAccountAddressResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.AccountAddress',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetAccountAddressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountAddressResponseDescriptor =
    $convert.base64Decode(
        'ChlHZXRBY2NvdW50QWRkcmVzc1Jlc3BvbnNlEk0KBWl0ZW1zGAEgAygLMhUua2F0YW4uQWNjb3'
        'VudEFkZHJlc3NCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgVpdGVtcw==');

@$core.Deprecated('Use accountExportRequestDescriptor instead')
const AccountExportRequest$json = {
  '1': 'AccountExportRequest',
};

/// Descriptor for `AccountExportRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountExportRequestDescriptor =
    $convert.base64Decode('ChRBY2NvdW50RXhwb3J0UmVxdWVzdA==');

@$core.Deprecated('Use accountExportResponseDescriptor instead')
const AccountExportResponse$json = {
  '1': 'AccountExportResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.AccountExport',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `AccountExportResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountExportResponseDescriptor = $convert.base64Decode(
    'ChVBY2NvdW50RXhwb3J0UmVzcG9uc2USTAoFaXRlbXMYASADKAsyFC5rYXRhbi5BY2NvdW50RX'
    'hwb3J0QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFaXRlbXM=');

@$core.Deprecated('Use getNotificationsRequestDescriptor instead')
const GetNotificationsRequest$json = {
  '1': 'GetNotificationsRequest',
};

/// Descriptor for `GetNotificationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNotificationsRequestDescriptor =
    $convert.base64Decode('ChdHZXROb3RpZmljYXRpb25zUmVxdWVzdA==');

@$core.Deprecated('Use getNotificationsResponseDescriptor instead')
const GetNotificationsResponse$json = {
  '1': 'GetNotificationsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.Notification',
      '8': {},
      '10': 'items'
    },
    {'1': 'unread_count', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'unreadCount'},
  ],
};

/// Descriptor for `GetNotificationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNotificationsResponseDescriptor = $convert.base64Decode(
    'ChhHZXROb3RpZmljYXRpb25zUmVzcG9uc2USSwoFaXRlbXMYASADKAsyEy5rYXRhbi5Ob3RpZm'
    'ljYXRpb25CIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgVpdGVtcxJDCgx1bnJl'
    'YWRfY291bnQYAiABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugt1bnJlYW'
    'RDb3VudA==');

@$core.Deprecated('Use markNotificationReadRequestDescriptor instead')
const MarkNotificationReadRequest$json = {
  '1': 'MarkNotificationReadRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `MarkNotificationReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markNotificationReadRequestDescriptor =
    $convert.base64Decode(
        'ChtNYXJrTm90aWZpY2F0aW9uUmVhZFJlcXVlc3QSMAoCaWQYASABKANCIJJBHTIb0YHQutC+0Y'
        'DQviDQvtC/0LjRgdCw0L3QuNC1UgJpZA==');

@$core.Deprecated('Use markNotificationReadResponseDescriptor instead')
const MarkNotificationReadResponse$json = {
  '1': 'MarkNotificationReadResponse',
};

/// Descriptor for `MarkNotificationReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markNotificationReadResponseDescriptor =
    $convert.base64Decode('ChxNYXJrTm90aWZpY2F0aW9uUmVhZFJlc3BvbnNl');

@$core.Deprecated('Use markAllNotificationsReadRequestDescriptor instead')
const MarkAllNotificationsReadRequest$json = {
  '1': 'MarkAllNotificationsReadRequest',
};

/// Descriptor for `MarkAllNotificationsReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markAllNotificationsReadRequestDescriptor =
    $convert.base64Decode('Ch9NYXJrQWxsTm90aWZpY2F0aW9uc1JlYWRSZXF1ZXN0');

@$core.Deprecated('Use markAllNotificationsReadResponseDescriptor instead')
const MarkAllNotificationsReadResponse$json = {
  '1': 'MarkAllNotificationsReadResponse',
};

/// Descriptor for `MarkAllNotificationsReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markAllNotificationsReadResponseDescriptor =
    $convert.base64Decode('CiBNYXJrQWxsTm90aWZpY2F0aW9uc1JlYWRSZXNwb25zZQ==');

@$core.Deprecated('Use searchLocalDescriptor instead')
const SearchLocal$json = {
  '1': 'SearchLocal',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
  ],
};

/// Descriptor for `SearchLocal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchLocalDescriptor = $convert.base64Decode(
    'CgtTZWFyY2hMb2NhbBIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvd'
    'C40LVSAmlkEjQKBG5hbWUYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1'
    'UgRuYW1l');

@$core.Deprecated('Use searchDaDataDescriptor instead')
const SearchDaData$json = {
  '1': 'SearchDaData',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'geom',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.katan.Point',
      '8': {},
      '10': 'geom'
    },
  ],
};

/// Descriptor for `SearchDaData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchDaDataDescriptor = $convert.base64Decode(
    'CgxTZWFyY2hEYURhdGESNAoEbmFtZRgBIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0L'
    'DQvdC40LVSBG5hbWUSQgoEZ2VvbRgCIAEoCzIMLmthdGFuLlBvaW50QiCSQR0yG9GB0LrQvtGA'
    '0L4g0L7Qv9C40YHQsNC90LjQtVIEZ2VvbQ==');

@$core.Deprecated('Use accountSearchItemDescriptor instead')
const AccountSearchItem$json = {
  '1': 'AccountSearchItem',
  '2': [
    {
      '1': 'local',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.SearchLocal',
      '8': {},
      '9': 0,
      '10': 'local'
    },
    {
      '1': 'dadata',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.katan.SearchDaData',
      '8': {},
      '9': 0,
      '10': 'dadata'
    },
  ],
  '8': [
    {'1': 'search_item'},
  ],
};

/// Descriptor for `AccountSearchItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountSearchItemDescriptor = $convert.base64Decode(
    'ChFBY2NvdW50U2VhcmNoSXRlbRJMCgVsb2NhbBgBIAEoCzISLmthdGFuLlNlYXJjaExvY2FsQi'
    'CSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtUgAUgVsb2NhbBJPCgZkYWRhdGEYAiAB'
    'KAsyEy5rYXRhbi5TZWFyY2hEYURhdGFCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuN'
    'C1SABSBmRhZGF0YUINCgtzZWFyY2hfaXRlbQ==');

@$core.Deprecated('Use accountSearchRequestDescriptor instead')
const AccountSearchRequest$json = {
  '1': 'AccountSearchRequest',
  '2': [
    {
      '1': 'pagination',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.Pagination',
      '8': {},
      '10': 'pagination'
    },
    {'1': 'local', '3': 2, '4': 1, '5': 9, '8': {}, '9': 0, '10': 'local'},
    {'1': 'dadata', '3': 3, '4': 1, '5': 9, '8': {}, '9': 0, '10': 'dadata'},
  ],
  '8': [
    {'1': 'search'},
  ],
};

/// Descriptor for `AccountSearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountSearchRequestDescriptor = $convert.base64Decode(
    'ChRBY2NvdW50U2VhcmNoUmVxdWVzdBJTCgpwYWdpbmF0aW9uGAEgASgLMhEua2F0YW4uUGFnaW'
    '5hdGlvbkIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCnBhZ2luYXRpb24SOAoF'
    'bG9jYWwYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1SABSBWxvY2FsEj'
    'oKBmRhZGF0YRgDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVIAFIGZGFk'
    'YXRhQggKBnNlYXJjaA==');

@$core.Deprecated('Use accountSearchResponseDescriptor instead')
const AccountSearchResponse$json = {
  '1': 'AccountSearchResponse',
  '2': [
    {'1': 'total', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'total'},
    {
      '1': 'items',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.katan.AccountSearchItem',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `AccountSearchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountSearchResponseDescriptor = $convert.base64Decode(
    'ChVBY2NvdW50U2VhcmNoUmVzcG9uc2USNgoFdG90YWwYASABKANCIJJBHTIb0YHQutC+0YDQvi'
    'DQvtC/0LjRgdCw0L3QuNC1UgV0b3RhbBJQCgVpdGVtcxgCIAMoCzIYLmthdGFuLkFjY291bnRT'
    'ZWFyY2hJdGVtQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFaXRlbXM=');
