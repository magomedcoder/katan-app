// This is a generated file - do not edit.
//
// Generated from file.proto.

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

@$core.Deprecated('Use nodeFileDescriptor instead')
const NodeFile$json = {
  '1': 'NodeFile',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `NodeFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeFileDescriptor = $convert.base64Decode(
    'CghOb2RlRmlsZRIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40L'
    'VSAmlk');

@$core.Deprecated('Use cableFileDescriptor instead')
const CableFile$json = {
  '1': 'CableFile',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `CableFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cableFileDescriptor = $convert.base64Decode(
    'CglDYWJsZUZpbGUSMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuN'
    'C1UgJpZA==');

@$core.Deprecated('Use taskFileDescriptor instead')
const TaskFile$json = {
  '1': 'TaskFile',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `TaskFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskFileDescriptor = $convert.base64Decode(
    'CghUYXNrRmlsZRIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40L'
    'VSAmlk');

@$core.Deprecated('Use taskCommentFileDescriptor instead')
const TaskCommentFile$json = {
  '1': 'TaskCommentFile',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `TaskCommentFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskCommentFileDescriptor = $convert.base64Decode(
    'Cg9UYXNrQ29tbWVudEZpbGUSMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgd'
    'Cw0L3QuNC1UgJpZA==');

@$core.Deprecated('Use chatMessageFileDescriptor instead')
const ChatMessageFile$json = {
  '1': 'ChatMessageFile',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `ChatMessageFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageFileDescriptor = $convert.base64Decode(
    'Cg9DaGF0TWVzc2FnZUZpbGUSMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgd'
    'Cw0L3QuNC1UgJpZA==');

@$core.Deprecated('Use fileDescriptor instead')
const File$json = {
  '1': 'File',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'url', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'url'},
    {
      '1': 'user',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'user'
    },
    {'1': 'created_at', '3': 5, '4': 1, '5': 3, '8': {}, '10': 'createdAt'},
  ],
};

/// Descriptor for `File`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDescriptor = $convert.base64Decode(
    'CgRGaWxlEjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVICaW'
    'QSNAoEbmFtZRgCIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBG5hbWUS'
    'MgoDdXJsGAMgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIDdXJsEkUKBH'
    'VzZXIYBCABKAsyDy5rYXRhbi5CYXNlVXNlckIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQ'
    'vdC40LVSBHVzZXISPwoKY3JlYXRlZF9hdBgFIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSCWNyZWF0ZWRBdA==');

@$core.Deprecated('Use getFilesRequestDescriptor instead')
const GetFilesRequest$json = {
  '1': 'GetFilesRequest',
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
    {
      '1': 'node',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.katan.NodeFile',
      '8': {},
      '9': 0,
      '10': 'node'
    },
    {
      '1': 'cable',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.CableFile',
      '8': {},
      '9': 0,
      '10': 'cable'
    },
    {
      '1': 'task',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.katan.TaskFile',
      '8': {},
      '9': 0,
      '10': 'task'
    },
    {
      '1': 'task_comment',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.katan.TaskCommentFile',
      '8': {},
      '9': 0,
      '10': 'taskComment'
    },
    {
      '1': 'chat_message',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatMessageFile',
      '8': {},
      '9': 0,
      '10': 'chatMessage'
    },
  ],
  '8': [
    {'1': 'object_type'},
  ],
};

/// Descriptor for `GetFilesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFilesRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRGaWxlc1JlcXVlc3QSUwoKcGFnaW5hdGlvbhgBIAEoCzIRLmthdGFuLlBhZ2luYXRpb2'
    '5CIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgpwYWdpbmF0aW9uEkcKBG5vZGUY'
    'AiABKAsyDy5rYXRhbi5Ob2RlRmlsZUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40L'
    'VIAFIEbm9kZRJKCgVjYWJsZRgDIAEoCzIQLmthdGFuLkNhYmxlRmlsZUIgkkEdMhvRgdC60L7R'
    'gNC+INC+0L/QuNGB0LDQvdC40LVIAFIFY2FibGUSRwoEdGFzaxgEIAEoCzIPLmthdGFuLlRhc2'
    'tGaWxlQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtUgAUgR0YXNrEl0KDHRhc2tf'
    'Y29tbWVudBgFIAEoCzIWLmthdGFuLlRhc2tDb21tZW50RmlsZUIgkkEdMhvRgdC60L7RgNC+IN'
    'C+0L/QuNGB0LDQvdC40LVIAFILdGFza0NvbW1lbnQSXQoMY2hhdF9tZXNzYWdlGAYgASgLMhYu'
    'a2F0YW4uQ2hhdE1lc3NhZ2VGaWxlQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtU'
    'gAUgtjaGF0TWVzc2FnZUINCgtvYmplY3RfdHlwZQ==');

@$core.Deprecated('Use getFilesResponseDescriptor instead')
const GetFilesResponse$json = {
  '1': 'GetFilesResponse',
  '2': [
    {'1': 'total', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'total'},
    {
      '1': 'items',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.katan.File',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetFilesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFilesResponseDescriptor = $convert.base64Decode(
    'ChBHZXRGaWxlc1Jlc3BvbnNlEjYKBXRvdGFsGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVIFdG90YWwSQwoFaXRlbXMYAiADKAsyCy5rYXRhbi5GaWxlQiCSQR0yG9GB'
    '0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFaXRlbXM=');

@$core.Deprecated('Use deleteFileRequestDescriptor instead')
const DeleteFileRequest$json = {
  '1': 'DeleteFileRequest',
  '2': [
    {
      '1': 'node',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.NodeFile',
      '8': {},
      '9': 0,
      '10': 'node'
    },
    {
      '1': 'cable',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.katan.CableFile',
      '8': {},
      '9': 0,
      '10': 'cable'
    },
    {
      '1': 'task',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.TaskFile',
      '8': {},
      '9': 0,
      '10': 'task'
    },
    {
      '1': 'task_comment',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.katan.TaskCommentFile',
      '8': {},
      '9': 0,
      '10': 'taskComment'
    },
    {
      '1': 'chat_message',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatMessageFile',
      '8': {},
      '9': 0,
      '10': 'chatMessage'
    },
  ],
  '8': [
    {'1': 'object_type'},
  ],
};

/// Descriptor for `DeleteFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFileRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVGaWxlUmVxdWVzdBJHCgRub2RlGAEgASgLMg8ua2F0YW4uTm9kZUZpbGVCIJJBHT'
    'Ib0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1SABSBG5vZGUSSgoFY2FibGUYAiABKAsyEC5r'
    'YXRhbi5DYWJsZUZpbGVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1SABSBWNhYm'
    'xlEkcKBHRhc2sYAyABKAsyDy5rYXRhbi5UYXNrRmlsZUIgkkEdMhvRgdC60L7RgNC+INC+0L/Q'
    'uNGB0LDQvdC40LVIAFIEdGFzaxJdCgx0YXNrX2NvbW1lbnQYBCABKAsyFi5rYXRhbi5UYXNrQ2'
    '9tbWVudEZpbGVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1SABSC3Rhc2tDb21t'
    'ZW50El0KDGNoYXRfbWVzc2FnZRgFIAEoCzIWLmthdGFuLkNoYXRNZXNzYWdlRmlsZUIgkkEdMh'
    'vRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVIAFILY2hhdE1lc3NhZ2VCDQoLb2JqZWN0X3R5'
    'cGU=');

@$core.Deprecated('Use deleteFileResponseDescriptor instead')
const DeleteFileResponse$json = {
  '1': 'DeleteFileResponse',
};

/// Descriptor for `DeleteFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFileResponseDescriptor =
    $convert.base64Decode('ChJEZWxldGVGaWxlUmVzcG9uc2U=');

@$core.Deprecated('Use uploadIconRequestDescriptor instead')
const UploadIconRequest$json = {
  '1': 'UploadIconRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'mime_type', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'mimeType'},
    {'1': 'content', '3': 3, '4': 1, '5': 12, '8': {}, '10': 'content'},
  ],
};

/// Descriptor for `UploadIconRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadIconRequestDescriptor = $convert.base64Decode(
    'ChFVcGxvYWRJY29uUmVxdWVzdBI0CgRuYW1lGAEgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVIEbmFtZRI9CgltaW1lX3R5cGUYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQ'
    'vtC/0LjRgdCw0L3QuNC1UghtaW1lVHlwZRI6Cgdjb250ZW50GAMgASgMQiCSQR0yG9GB0LrQvt'
    'GA0L4g0L7Qv9C40YHQsNC90LjQtVIHY29udGVudA==');

@$core.Deprecated('Use uploadIconResponseDescriptor instead')
const UploadIconResponse$json = {
  '1': 'UploadIconResponse',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'url'},
  ],
};

/// Descriptor for `UploadIconResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadIconResponseDescriptor = $convert.base64Decode(
    'ChJVcGxvYWRJY29uUmVzcG9uc2USMgoDdXJsGAEgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVIDdXJs');
