// This is a generated file - do not edit.
//
// Generated from chat.proto.

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

@$core.Deprecated('Use chatRoomPreviewDescriptor instead')
const ChatRoomPreview$json = {
  '1': 'ChatRoomPreview',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'body', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'body'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'userId'},
    {'1': 'user_name', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'userName'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 3, '8': {}, '10': 'createdAt'},
  ],
};

/// Descriptor for `ChatRoomPreview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatRoomPreviewDescriptor = $convert.base64Decode(
    'Cg9DaGF0Um9vbVByZXZpZXcSMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgd'
    'Cw0L3QuNC1UgJpZBI0CgRib2R5GAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC9'
    '0LjQtVIEYm9keRI5Cgd1c2VyX2lkGAMgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsN'
    'C90LjQtVIGdXNlcklkEj0KCXVzZXJfbmFtZRgEIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/Q'
    'uNGB0LDQvdC40LVSCHVzZXJOYW1lEj8KCmNyZWF0ZWRfYXQYBSABKANCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgljcmVhdGVkQXQ=');

@$core.Deprecated('Use chatRoomDescriptor instead')
const ChatRoom$json = {
  '1': 'ChatRoom',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'type'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'member_count', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'memberCount'},
    {'1': 'unread_count', '3': 5, '4': 1, '5': 5, '8': {}, '10': 'unreadCount'},
    {
      '1': 'last_message',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatRoomPreview',
      '8': {},
      '10': 'lastMessage'
    },
    {
      '1': 'members',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.katan.ChatMember',
      '8': {},
      '10': 'members'
    },
    {
      '1': 'others_last_read_message_id',
      '3': 8,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'othersLastReadMessageId'
    },
    {
      '1': 'others_last_read_at',
      '3': 9,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'othersLastReadAt'
    },
  ],
};

/// Descriptor for `ChatRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatRoomDescriptor = $convert.base64Decode(
    'CghDaGF0Um9vbRIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40L'
    'VSAmlkEjQKBHR5cGUYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgR0'
    'eXBlEjYKBXRpdGxlGAMgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFdG'
    'l0bGUSQwoMbWVtYmVyX2NvdW50GAQgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC9'
    '0LjQtVILbWVtYmVyQ291bnQSQwoMdW5yZWFkX2NvdW50GAUgASgFQiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVILdW5yZWFkQ291bnQSWwoMbGFzdF9tZXNzYWdlGAYgASgLMhYu'
    'a2F0YW4uQ2hhdFJvb21QcmV2aWV3QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtV'
    'ILbGFzdE1lc3NhZ2USTQoHbWVtYmVycxgHIAMoCzIRLmthdGFuLkNoYXRNZW1iZXJCIJJBHTIb'
    '0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdtZW1iZXJzEl4KG290aGVyc19sYXN0X3JlYW'
    'RfbWVzc2FnZV9pZBgIIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSF290'
    'aGVyc0xhc3RSZWFkTWVzc2FnZUlkEk8KE290aGVyc19sYXN0X3JlYWRfYXQYCSABKANCIJJBHT'
    'Ib0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UhBvdGhlcnNMYXN0UmVhZEF0');

@$core.Deprecated('Use chatMemberDescriptor instead')
const ChatMember$json = {
  '1': 'ChatMember',
  '2': [
    {
      '1': 'user',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'user'
    },
    {'1': 'role', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'role'},
    {'1': 'joined_at', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'joinedAt'},
    {'1': 'is_online', '3': 4, '4': 1, '5': 8, '8': {}, '10': 'isOnline'},
    {
      '1': 'last_visit_at',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'lastVisitAt'
    },
    {
      '1': 'last_read_message_id',
      '3': 6,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'lastReadMessageId'
    },
    {'1': 'last_read_at', '3': 7, '4': 1, '5': 3, '8': {}, '10': 'lastReadAt'},
  ],
};

/// Descriptor for `ChatMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMemberDescriptor = $convert.base64Decode(
    'CgpDaGF0TWVtYmVyEkUKBHVzZXIYASABKAsyDy5rYXRhbi5CYXNlVXNlckIgkkEdMhvRgdC60L'
    '7RgNC+INC+0L/QuNGB0LDQvdC40LVSBHVzZXISNAoEcm9sZRgCIAEoCUIgkkEdMhvRgdC60L7R'
    'gNC+INC+0L/QuNGB0LDQvdC40LVSBHJvbGUSPQoJam9pbmVkX2F0GAMgASgDQiCSQR0yG9GB0L'
    'rQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIIam9pbmVkQXQSPQoJaXNfb25saW5lGAQgASgIQiCS'
    'QR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIIaXNPbmxpbmUSRAoNbGFzdF92aXNpdF'
    '9hdBgFIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSC2xhc3RWaXNpdEF0'
    'ElEKFGxhc3RfcmVhZF9tZXNzYWdlX2lkGAYgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40Y'
    'HQsNC90LjQtVIRbGFzdFJlYWRNZXNzYWdlSWQSQgoMbGFzdF9yZWFkX2F0GAcgASgDQiCSQR0y'
    'G9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIKbGFzdFJlYWRBdA==');

@$core.Deprecated('Use chatAttachmentDescriptor instead')
const ChatAttachment$json = {
  '1': 'ChatAttachment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'mime_type', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'mimeType'},
    {'1': 'size', '3': 4, '4': 1, '5': 3, '8': {}, '10': 'size'},
  ],
};

/// Descriptor for `ChatAttachment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatAttachmentDescriptor = $convert.base64Decode(
    'Cg5DaGF0QXR0YWNobWVudBIwCgJpZBgBIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0L'
    'DQvdC40LVSAmlkEjQKBG5hbWUYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3Q'
    'uNC1UgRuYW1lEj0KCW1pbWVfdHlwZRgDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0L'
    'DQvdC40LVSCG1pbWVUeXBlEjQKBHNpemUYBCABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjR'
    'gdCw0L3QuNC1UgRzaXpl');

@$core.Deprecated('Use chatMessageDescriptor instead')
const ChatMessage$json = {
  '1': 'ChatMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
    {
      '1': 'author',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'author'
    },
    {'1': 'body', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'body'},
    {'1': 'reply_to_id', '3': 5, '4': 1, '5': 3, '8': {}, '10': 'replyToId'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 3, '8': {}, '10': 'createdAt'},
    {'1': 'edited_at', '3': 7, '4': 1, '5': 3, '8': {}, '10': 'editedAt'},
    {
      '1': 'attachments',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.katan.ChatAttachment',
      '8': {},
      '10': 'attachments'
    },
  ],
};

/// Descriptor for `ChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageDescriptor = $convert.base64Decode(
    'CgtDaGF0TWVzc2FnZRIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvd'
    'C40LVSAmlkEjkKB3Jvb21faWQYAiABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3Q'
    'uNC1UgZyb29tSWQSSQoGYXV0aG9yGAMgASgLMg8ua2F0YW4uQmFzZVVzZXJCIJJBHTIb0YHQut'
    'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZhdXRob3ISNAoEYm9keRgEIAEoCUIgkkEdMhvRgdC6'
    '0L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBGJvZHkSQAoLcmVwbHlfdG9faWQYBSABKANCIJJBHT'
    'Ib0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UglyZXBseVRvSWQSPwoKY3JlYXRlZF9hdBgG'
    'IAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCWNyZWF0ZWRBdBI9CgllZG'
    'l0ZWRfYXQYByABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghlZGl0ZWRB'
    'dBJZCgthdHRhY2htZW50cxgIIAMoCzIVLmthdGFuLkNoYXRBdHRhY2htZW50QiCSQR0yG9GB0L'
    'rQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVILYXR0YWNobWVudHM=');

@$core.Deprecated('Use chatListRoomsRequestDescriptor instead')
const ChatListRoomsRequest$json = {
  '1': 'ChatListRoomsRequest',
};

/// Descriptor for `ChatListRoomsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatListRoomsRequestDescriptor =
    $convert.base64Decode('ChRDaGF0TGlzdFJvb21zUmVxdWVzdA==');

@$core.Deprecated('Use chatListRoomsResponseDescriptor instead')
const ChatListRoomsResponse$json = {
  '1': 'ChatListRoomsResponse',
  '2': [
    {
      '1': 'rooms',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.ChatRoom',
      '8': {},
      '10': 'rooms'
    },
  ],
};

/// Descriptor for `ChatListRoomsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatListRoomsResponseDescriptor = $convert.base64Decode(
    'ChVDaGF0TGlzdFJvb21zUmVzcG9uc2USRwoFcm9vbXMYASADKAsyDy5rYXRhbi5DaGF0Um9vbU'
    'IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBXJvb21z');

@$core.Deprecated('Use chatGetRoomRequestDescriptor instead')
const ChatGetRoomRequest$json = {
  '1': 'ChatGetRoomRequest',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
  ],
};

/// Descriptor for `ChatGetRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatGetRoomRequestDescriptor = $convert.base64Decode(
    'ChJDaGF0R2V0Um9vbVJlcXVlc3QSOQoHcm9vbV9pZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+IN'
    'C+0L/QuNGB0LDQvdC40LVSBnJvb21JZA==');

@$core.Deprecated('Use chatListMessagesRequestDescriptor instead')
const ChatListMessagesRequest$json = {
  '1': 'ChatListMessagesRequest',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
    {'1': 'before_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'beforeId'},
    {'1': 'limit', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'limit'},
  ],
};

/// Descriptor for `ChatListMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatListMessagesRequestDescriptor = $convert.base64Decode(
    'ChdDaGF0TGlzdE1lc3NhZ2VzUmVxdWVzdBI5Cgdyb29tX2lkGAEgASgDQiCSQR0yG9GB0LrQvt'
    'GA0L4g0L7Qv9C40YHQsNC90LjQtVIGcm9vbUlkEj0KCWJlZm9yZV9pZBgCIAEoA0IgkkEdMhvR'
    'gdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCGJlZm9yZUlkEjYKBWxpbWl0GAMgASgFQiCSQR'
    '0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFbGltaXQ=');

@$core.Deprecated('Use chatListMessagesResponseDescriptor instead')
const ChatListMessagesResponse$json = {
  '1': 'ChatListMessagesResponse',
  '2': [
    {
      '1': 'messages',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.ChatMessage',
      '8': {},
      '10': 'messages'
    },
  ],
};

/// Descriptor for `ChatListMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatListMessagesResponseDescriptor =
    $convert.base64Decode(
        'ChhDaGF0TGlzdE1lc3NhZ2VzUmVzcG9uc2USUAoIbWVzc2FnZXMYASADKAsyEi5rYXRhbi5DaG'
        'F0TWVzc2FnZUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCG1lc3NhZ2Vz');

@$core.Deprecated('Use chatSendMessageRequestDescriptor instead')
const ChatSendMessageRequest$json = {
  '1': 'ChatSendMessageRequest',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
    {'1': 'body', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'body'},
    {'1': 'reply_to_id', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'replyToId'},
    {'1': 'has_media', '3': 4, '4': 1, '5': 8, '8': {}, '10': 'hasMedia'},
  ],
};

/// Descriptor for `ChatSendMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatSendMessageRequestDescriptor = $convert.base64Decode(
    'ChZDaGF0U2VuZE1lc3NhZ2VSZXF1ZXN0EjkKB3Jvb21faWQYASABKANCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgZyb29tSWQSNAoEYm9keRgCIAEoCUIgkkEdMhvRgdC60L7R'
    'gNC+INC+0L/QuNGB0LDQvdC40LVSBGJvZHkSQAoLcmVwbHlfdG9faWQYAyABKANCIJJBHTIb0Y'
    'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UglyZXBseVRvSWQSPQoJaGFzX21lZGlhGAQgASgI'
    'QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIIaGFzTWVkaWE=');

@$core.Deprecated('Use chatRefreshMessageRequestDescriptor instead')
const ChatRefreshMessageRequest$json = {
  '1': 'ChatRefreshMessageRequest',
  '2': [
    {'1': 'message_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'messageId'},
  ],
};

/// Descriptor for `ChatRefreshMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatRefreshMessageRequestDescriptor =
    $convert.base64Decode(
        'ChlDaGF0UmVmcmVzaE1lc3NhZ2VSZXF1ZXN0Ej8KCm1lc3NhZ2VfaWQYASABKANCIJJBHTIb0Y'
        'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgltZXNzYWdlSWQ=');

@$core.Deprecated('Use chatUploadAttachmentMetaDescriptor instead')
const ChatUploadAttachmentMeta$json = {
  '1': 'ChatUploadAttachmentMeta',
  '2': [
    {'1': 'message_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'messageId'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'filename'},
    {'1': 'mime_type', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'mimeType'},
    {'1': 'total_size', '3': 4, '4': 1, '5': 3, '8': {}, '10': 'totalSize'},
  ],
};

/// Descriptor for `ChatUploadAttachmentMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatUploadAttachmentMetaDescriptor = $convert.base64Decode(
    'ChhDaGF0VXBsb2FkQXR0YWNobWVudE1ldGESPwoKbWVzc2FnZV9pZBgBIAEoA0IgkkEdMhvRgd'
    'C60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCW1lc3NhZ2VJZBI8CghmaWxlbmFtZRgCIAEoCUIg'
    'kkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCGZpbGVuYW1lEj0KCW1pbWVfdHlwZR'
    'gDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCG1pbWVUeXBlEj8KCnRv'
    'dGFsX3NpemUYBCABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugl0b3RhbF'
    'NpemU=');

@$core.Deprecated('Use chatUploadAttachmentChunkDescriptor instead')
const ChatUploadAttachmentChunk$json = {
  '1': 'ChatUploadAttachmentChunk',
  '2': [
    {
      '1': 'meta',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatUploadAttachmentMeta',
      '8': {},
      '9': 0,
      '10': 'meta'
    },
    {'1': 'chunk', '3': 2, '4': 1, '5': 12, '8': {}, '9': 0, '10': 'chunk'},
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `ChatUploadAttachmentChunk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatUploadAttachmentChunkDescriptor = $convert.base64Decode(
    'ChlDaGF0VXBsb2FkQXR0YWNobWVudENodW5rElcKBG1ldGEYASABKAsyHy5rYXRhbi5DaGF0VX'
    'Bsb2FkQXR0YWNobWVudE1ldGFCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1SABS'
    'BG1ldGESOAoFY2h1bmsYAiABKAxCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1SA'
    'BSBWNodW5rQgYKBGRhdGE=');

@$core.Deprecated('Use chatUploadAttachmentResponseDescriptor instead')
const ChatUploadAttachmentResponse$json = {
  '1': 'ChatUploadAttachmentResponse',
  '2': [
    {
      '1': 'attachment',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatAttachment',
      '8': {},
      '10': 'attachment'
    },
  ],
};

/// Descriptor for `ChatUploadAttachmentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatUploadAttachmentResponseDescriptor =
    $convert.base64Decode(
        'ChxDaGF0VXBsb2FkQXR0YWNobWVudFJlc3BvbnNlElcKCmF0dGFjaG1lbnQYASABKAsyFS5rYX'
        'Rhbi5DaGF0QXR0YWNobWVudEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCmF0'
        'dGFjaG1lbnQ=');

@$core.Deprecated('Use chatMarkReadRequestDescriptor instead')
const ChatMarkReadRequest$json = {
  '1': 'ChatMarkReadRequest',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
    {'1': 'message_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'messageId'},
  ],
};

/// Descriptor for `ChatMarkReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMarkReadRequestDescriptor = $convert.base64Decode(
    'ChNDaGF0TWFya1JlYWRSZXF1ZXN0EjkKB3Jvb21faWQYASABKANCIJJBHTIb0YHQutC+0YDQvi'
    'DQvtC/0LjRgdCw0L3QuNC1UgZyb29tSWQSPwoKbWVzc2FnZV9pZBgCIAEoA0IgkkEdMhvRgdC6'
    '0L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCW1lc3NhZ2VJZA==');

@$core.Deprecated('Use chatGetUnreadCountsRequestDescriptor instead')
const ChatGetUnreadCountsRequest$json = {
  '1': 'ChatGetUnreadCountsRequest',
};

/// Descriptor for `ChatGetUnreadCountsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatGetUnreadCountsRequestDescriptor =
    $convert.base64Decode('ChpDaGF0R2V0VW5yZWFkQ291bnRzUmVxdWVzdA==');

@$core.Deprecated('Use chatGetUnreadCountsResponseDescriptor instead')
const ChatGetUnreadCountsResponse$json = {
  '1': 'ChatGetUnreadCountsResponse',
  '2': [
    {'1': 'total', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'total'},
    {
      '1': 'by_room',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.katan.ChatGetUnreadCountsResponse.ByRoomEntry',
      '8': {},
      '10': 'byRoom'
    },
  ],
  '3': [ChatGetUnreadCountsResponse_ByRoomEntry$json],
};

@$core.Deprecated('Use chatGetUnreadCountsResponseDescriptor instead')
const ChatGetUnreadCountsResponse_ByRoomEntry$json = {
  '1': 'ByRoomEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 3, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ChatGetUnreadCountsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatGetUnreadCountsResponseDescriptor = $convert.base64Decode(
    'ChtDaGF0R2V0VW5yZWFkQ291bnRzUmVzcG9uc2USNgoFdG90YWwYASABKAVCIJJBHTIb0YHQut'
    'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgV0b3RhbBJpCgdieV9yb29tGAIgAygLMi4ua2F0YW4u'
    'Q2hhdEdldFVucmVhZENvdW50c1Jlc3BvbnNlLkJ5Um9vbUVudHJ5QiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVIGYnlSb29tGjkKC0J5Um9vbUVudHJ5EhAKA2tleRgBIAEoA1ID'
    'a2V5EhQKBXZhbHVlGAIgASgFUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use chatCreateGroupRequestDescriptor instead')
const ChatCreateGroupRequest$json = {
  '1': 'ChatCreateGroupRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'user_ids', '3': 2, '4': 3, '5': 3, '8': {}, '10': 'userIds'},
  ],
};

/// Descriptor for `ChatCreateGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatCreateGroupRequestDescriptor = $convert.base64Decode(
    'ChZDaGF0Q3JlYXRlR3JvdXBSZXF1ZXN0EjYKBXRpdGxlGAEgASgJQiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVIFdGl0bGUSOwoIdXNlcl9pZHMYAiADKANCIJJBHTIb0YHQutC+'
    '0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugd1c2VySWRz');

@$core.Deprecated('Use chatAddMembersRequestDescriptor instead')
const ChatAddMembersRequest$json = {
  '1': 'ChatAddMembersRequest',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
    {'1': 'user_ids', '3': 2, '4': 3, '5': 3, '8': {}, '10': 'userIds'},
  ],
};

/// Descriptor for `ChatAddMembersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatAddMembersRequestDescriptor = $convert.base64Decode(
    'ChVDaGF0QWRkTWVtYmVyc1JlcXVlc3QSOQoHcm9vbV9pZBgBIAEoA0IgkkEdMhvRgdC60L7RgN'
    'C+INC+0L/QuNGB0LDQvdC40LVSBnJvb21JZBI7Cgh1c2VyX2lkcxgCIAMoA0IgkkEdMhvRgdC6'
    '0L7RgNC+INC+0L/QuNGB0LDQvdC40LVSB3VzZXJJZHM=');

@$core.Deprecated('Use chatRemoveMemberRequestDescriptor instead')
const ChatRemoveMemberRequest$json = {
  '1': 'ChatRemoveMemberRequest',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'userId'},
  ],
};

/// Descriptor for `ChatRemoveMemberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatRemoveMemberRequestDescriptor = $convert.base64Decode(
    'ChdDaGF0UmVtb3ZlTWVtYmVyUmVxdWVzdBI5Cgdyb29tX2lkGAEgASgDQiCSQR0yG9GB0LrQvt'
    'GA0L4g0L7Qv9C40YHQsNC90LjQtVIGcm9vbUlkEjkKB3VzZXJfaWQYAiABKANCIJJBHTIb0YHQ'
    'utC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZ1c2VySWQ=');

@$core.Deprecated('Use chatLeaveRoomRequestDescriptor instead')
const ChatLeaveRoomRequest$json = {
  '1': 'ChatLeaveRoomRequest',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
  ],
};

/// Descriptor for `ChatLeaveRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatLeaveRoomRequestDescriptor = $convert.base64Decode(
    'ChRDaGF0TGVhdmVSb29tUmVxdWVzdBI5Cgdyb29tX2lkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVIGcm9vbUlk');

@$core.Deprecated('Use chatCreateDirectRequestDescriptor instead')
const ChatCreateDirectRequest$json = {
  '1': 'ChatCreateDirectRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'userId'},
  ],
};

/// Descriptor for `ChatCreateDirectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatCreateDirectRequestDescriptor =
    $convert.base64Decode(
        'ChdDaGF0Q3JlYXRlRGlyZWN0UmVxdWVzdBI5Cgd1c2VyX2lkGAEgASgDQiCSQR0yG9GB0LrQvt'
        'GA0L4g0L7Qv9C40YHQsNC90LjQtVIGdXNlcklk');

@$core.Deprecated('Use chatUpdateGroupRequestDescriptor instead')
const ChatUpdateGroupRequest$json = {
  '1': 'ChatUpdateGroupRequest',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
  ],
};

/// Descriptor for `ChatUpdateGroupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatUpdateGroupRequestDescriptor = $convert.base64Decode(
    'ChZDaGF0VXBkYXRlR3JvdXBSZXF1ZXN0EjkKB3Jvb21faWQYASABKANCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgZyb29tSWQSNgoFdGl0bGUYAiABKAlCIJJBHTIb0YHQutC+'
    '0YDQviDQvtC/0LjRgdCw0L3QuNC1UgV0aXRsZQ==');

@$core.Deprecated('Use chatEditMessageRequestDescriptor instead')
const ChatEditMessageRequest$json = {
  '1': 'ChatEditMessageRequest',
  '2': [
    {'1': 'message_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'messageId'},
    {'1': 'body', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'body'},
  ],
};

/// Descriptor for `ChatEditMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatEditMessageRequestDescriptor = $convert.base64Decode(
    'ChZDaGF0RWRpdE1lc3NhZ2VSZXF1ZXN0Ej8KCm1lc3NhZ2VfaWQYASABKANCIJJBHTIb0YHQut'
    'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgltZXNzYWdlSWQSNAoEYm9keRgCIAEoCUIgkkEdMhvR'
    'gdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBGJvZHk=');

@$core.Deprecated('Use chatDeleteMessageRequestDescriptor instead')
const ChatDeleteMessageRequest$json = {
  '1': 'ChatDeleteMessageRequest',
  '2': [
    {'1': 'message_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'messageId'},
  ],
};

/// Descriptor for `ChatDeleteMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatDeleteMessageRequestDescriptor =
    $convert.base64Decode(
        'ChhDaGF0RGVsZXRlTWVzc2FnZVJlcXVlc3QSPwoKbWVzc2FnZV9pZBgBIAEoA0IgkkEdMhvRgd'
        'C60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCW1lc3NhZ2VJZA==');

@$core.Deprecated('Use chatSearchRequestDescriptor instead')
const ChatSearchRequest$json = {
  '1': 'ChatSearchRequest',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'query'},
    {'1': 'limit', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'limit'},
  ],
};

/// Descriptor for `ChatSearchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatSearchRequestDescriptor = $convert.base64Decode(
    'ChFDaGF0U2VhcmNoUmVxdWVzdBI2CgVxdWVyeRgBIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L'
    '/QuNGB0LDQvdC40LVSBXF1ZXJ5EjYKBWxpbWl0GAIgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Q'
    'v9C40YHQsNC90LjQtVIFbGltaXQ=');

@$core.Deprecated('Use chatSearchResponseDescriptor instead')
const ChatSearchResponse$json = {
  '1': 'ChatSearchResponse',
  '2': [
    {
      '1': 'rooms',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.ChatRoom',
      '8': {},
      '10': 'rooms'
    },
    {
      '1': 'users',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'users'
    },
  ],
};

/// Descriptor for `ChatSearchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatSearchResponseDescriptor = $convert.base64Decode(
    'ChJDaGF0U2VhcmNoUmVzcG9uc2USRwoFcm9vbXMYASADKAsyDy5rYXRhbi5DaGF0Um9vbUIgkk'
    'EdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBXJvb21zEkcKBXVzZXJzGAIgAygLMg8u'
    'a2F0YW4uQmFzZVVzZXJCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgV1c2Vycw'
    '==');

@$core.Deprecated('Use chatRoomRefDescriptor instead')
const ChatRoomRef$json = {
  '1': 'ChatRoomRef',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
  ],
};

/// Descriptor for `ChatRoomRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatRoomRefDescriptor = $convert.base64Decode(
    'CgtDaGF0Um9vbVJlZhI5Cgdyb29tX2lkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40Y'
    'HQsNC90LjQtVIGcm9vbUlk');

@$core.Deprecated('Use chatClientEventDescriptor instead')
const ChatClientEvent$json = {
  '1': 'ChatClientEvent',
  '2': [
    {
      '1': 'subscribe_room',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatRoomRef',
      '8': {},
      '9': 0,
      '10': 'subscribeRoom'
    },
    {
      '1': 'unsubscribe_room',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatRoomRef',
      '8': {},
      '9': 0,
      '10': 'unsubscribeRoom'
    },
    {
      '1': 'typing',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatRoomRef',
      '8': {},
      '9': 0,
      '10': 'typing'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `ChatClientEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatClientEventDescriptor = $convert.base64Decode(
    'Cg9DaGF0Q2xpZW50RXZlbnQSXQoOc3Vic2NyaWJlX3Jvb20YASABKAsyEi5rYXRhbi5DaGF0Um'
    '9vbVJlZkIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVIAFINc3Vic2NyaWJlUm9v'
    'bRJhChB1bnN1YnNjcmliZV9yb29tGAIgASgLMhIua2F0YW4uQ2hhdFJvb21SZWZCIJJBHTIb0Y'
    'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1SABSD3Vuc3Vic2NyaWJlUm9vbRJOCgZ0eXBpbmcY'
    'AyABKAsyEi5rYXRhbi5DaGF0Um9vbVJlZkIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvd'
    'C40LVIAFIGdHlwaW5nQgkKB3BheWxvYWQ=');

@$core.Deprecated('Use chatMessageDeletedDescriptor instead')
const ChatMessageDeleted$json = {
  '1': 'ChatMessageDeleted',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'room_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
  ],
};

/// Descriptor for `ChatMessageDeleted`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageDeletedDescriptor = $convert.base64Decode(
    'ChJDaGF0TWVzc2FnZURlbGV0ZWQSMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0L'
    'jRgdCw0L3QuNC1UgJpZBI5Cgdyb29tX2lkGAIgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C4'
    '0YHQsNC90LjQtVIGcm9vbUlk');

@$core.Deprecated('Use chatTypingEventDescriptor instead')
const ChatTypingEvent$json = {
  '1': 'ChatTypingEvent',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'userId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'name'},
  ],
};

/// Descriptor for `ChatTypingEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatTypingEventDescriptor = $convert.base64Decode(
    'Cg9DaGF0VHlwaW5nRXZlbnQSOQoHcm9vbV9pZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L'
    '/QuNGB0LDQvdC40LVSBnJvb21JZBI5Cgd1c2VyX2lkGAIgASgDQiCSQR0yG9GB0LrQvtGA0L4g'
    '0L7Qv9C40YHQsNC90LjQtVIGdXNlcklkEjQKBG5hbWUYAyABKAlCIJJBHTIb0YHQutC+0YDQvi'
    'DQvtC/0LjRgdCw0L3QuNC1UgRuYW1l');

@$core.Deprecated('Use chatPresenceEventDescriptor instead')
const ChatPresenceEvent$json = {
  '1': 'ChatPresenceEvent',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'userId'},
    {'1': 'is_online', '3': 2, '4': 1, '5': 8, '8': {}, '10': 'isOnline'},
    {
      '1': 'last_visit_at',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'lastVisitAt'
    },
  ],
};

/// Descriptor for `ChatPresenceEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatPresenceEventDescriptor = $convert.base64Decode(
    'ChFDaGF0UHJlc2VuY2VFdmVudBI5Cgd1c2VyX2lkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L'
    '7Qv9C40YHQsNC90LjQtVIGdXNlcklkEj0KCWlzX29ubGluZRgCIAEoCEIgkkEdMhvRgdC60L7R'
    'gNC+INC+0L/QuNGB0LDQvdC40LVSCGlzT25saW5lEkQKDWxhc3RfdmlzaXRfYXQYAyABKAlCIJ'
    'JBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgtsYXN0VmlzaXRBdA==');

@$core.Deprecated('Use chatReadEventDescriptor instead')
const ChatReadEvent$json = {
  '1': 'ChatReadEvent',
  '2': [
    {'1': 'room_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'roomId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'userId'},
    {
      '1': 'last_read_message_id',
      '3': 3,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'lastReadMessageId'
    },
    {'1': 'last_read_at', '3': 4, '4': 1, '5': 3, '8': {}, '10': 'lastReadAt'},
  ],
};

/// Descriptor for `ChatReadEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatReadEventDescriptor = $convert.base64Decode(
    'Cg1DaGF0UmVhZEV2ZW50EjkKB3Jvb21faWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0L'
    'jRgdCw0L3QuNC1UgZyb29tSWQSOQoHdXNlcl9pZBgCIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+'
    '0L/QuNGB0LDQvdC40LVSBnVzZXJJZBJRChRsYXN0X3JlYWRfbWVzc2FnZV9pZBgDIAEoA0Igkk'
    'EdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSEWxhc3RSZWFkTWVzc2FnZUlkEkIKDGxh'
    'c3RfcmVhZF9hdBgEIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCmxhc3'
    'RSZWFkQXQ=');

@$core.Deprecated('Use chatEventDescriptor instead')
const ChatEvent$json = {
  '1': 'ChatEvent',
  '2': [
    {
      '1': 'message',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatMessage',
      '8': {},
      '9': 0,
      '10': 'message'
    },
    {
      '1': 'message_updated',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatMessage',
      '8': {},
      '9': 0,
      '10': 'messageUpdated'
    },
    {
      '1': 'message_deleted',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatMessageDeleted',
      '8': {},
      '9': 0,
      '10': 'messageDeleted'
    },
    {
      '1': 'typing',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatTypingEvent',
      '8': {},
      '9': 0,
      '10': 'typing'
    },
    {
      '1': 'presence',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatPresenceEvent',
      '8': {},
      '9': 0,
      '10': 'presence'
    },
    {
      '1': 'read',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.katan.ChatReadEvent',
      '8': {},
      '9': 0,
      '10': 'read'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `ChatEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatEventDescriptor = $convert.base64Decode(
    'CglDaGF0RXZlbnQSUAoHbWVzc2FnZRgBIAEoCzISLmthdGFuLkNoYXRNZXNzYWdlQiCSQR0yG9'
    'GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtUgAUgdtZXNzYWdlEl8KD21lc3NhZ2VfdXBkYXRl'
    'ZBgCIAEoCzISLmthdGFuLkNoYXRNZXNzYWdlQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsN'
    'C90LjQtUgAUg5tZXNzYWdlVXBkYXRlZBJmCg9tZXNzYWdlX2RlbGV0ZWQYAyABKAsyGS5rYXRh'
    'bi5DaGF0TWVzc2FnZURlbGV0ZWRCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1SA'
    'BSDm1lc3NhZ2VEZWxldGVkElIKBnR5cGluZxgEIAEoCzIWLmthdGFuLkNoYXRUeXBpbmdFdmVu'
    'dEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVIAFIGdHlwaW5nElgKCHByZXNlbm'
    'NlGAUgASgLMhgua2F0YW4uQ2hhdFByZXNlbmNlRXZlbnRCIJJBHTIb0YHQutC+0YDQviDQvtC/'
    '0LjRgdCw0L3QuNC1SABSCHByZXNlbmNlEkwKBHJlYWQYBiABKAsyFC5rYXRhbi5DaGF0UmVhZE'
    'V2ZW50QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtUgAUgRyZWFkQgkKB3BheWxv'
    'YWQ=');
