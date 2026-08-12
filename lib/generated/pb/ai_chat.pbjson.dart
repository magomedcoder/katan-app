// This is a generated file - do not edit.
//
// Generated from ai_chat.proto.

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

@$core.Deprecated('Use aiChatChunkKindDescriptor instead')
const AiChatChunkKind$json = {
  '1': 'AiChatChunkKind',
  '2': [
    {'1': 'AI_CHAT_CHUNK_TEXT', '2': 0},
    {'1': 'AI_CHAT_CHUNK_REASONING', '2': 1},
    {'1': 'AI_CHAT_CHUNK_NOTICE', '2': 2},
    {'1': 'AI_CHAT_CHUNK_TOOL_STATUS', '2': 3},
  ],
};

/// Descriptor for `AiChatChunkKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List aiChatChunkKindDescriptor = $convert.base64Decode(
    'Cg9BaUNoYXRDaHVua0tpbmQSFgoSQUlfQ0hBVF9DSFVOS19URVhUEAASGwoXQUlfQ0hBVF9DSF'
    'VOS19SRUFTT05JTkcQARIYChRBSV9DSEFUX0NIVU5LX05PVElDRRACEh0KGUFJX0NIQVRfQ0hV'
    'TktfVE9PTF9TVEFUVVMQAw==');

@$core.Deprecated('Use aiChatSessionTemplateDescriptor instead')
const AiChatSessionTemplate$json = {
  '1': 'AiChatSessionTemplate',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'description'},
    {
      '1': 'system_prompt',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'systemPrompt'
    },
    {
      '1': 'integrations_enabled',
      '3': 5,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'integrationsEnabled'
    },
    {'1': 'mcp_enabled', '3': 6, '4': 1, '5': 8, '8': {}, '10': 'mcpEnabled'},
  ],
};

/// Descriptor for `AiChatSessionTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatSessionTemplateDescriptor = $convert.base64Decode(
    'ChVBaUNoYXRTZXNzaW9uVGVtcGxhdGUSMAoCaWQYASABKAlCIJJBHTIb0YHQutC+0YDQviDQvt'
    'C/0LjRgdCw0L3QuNC1UgJpZBI2CgV0aXRsZRgCIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/Q'
    'uNGB0LDQvdC40LVSBXRpdGxlEkIKC2Rlc2NyaXB0aW9uGAMgASgJQiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVILZGVzY3JpcHRpb24SRQoNc3lzdGVtX3Byb21wdBgEIAEoCUIg'
    'kkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSDHN5c3RlbVByb21wdBJTChRpbnRlZ3'
    'JhdGlvbnNfZW5hYmxlZBgFIAEoCEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVS'
    'E2ludGVncmF0aW9uc0VuYWJsZWQSQQoLbWNwX2VuYWJsZWQYBiABKAhCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgptY3BFbmFibGVk');

@$core.Deprecated('Use aiChatQuickPromptDescriptor instead')
const AiChatQuickPrompt$json = {
  '1': 'AiChatQuickPrompt',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'label'},
    {'1': 'text', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'text'},
    {
      '1': 'integrations_only',
      '3': 4,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'integrationsOnly'
    },
  ],
};

/// Descriptor for `AiChatQuickPrompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatQuickPromptDescriptor = $convert.base64Decode(
    'ChFBaUNoYXRRdWlja1Byb21wdBIwCgJpZBgBIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSAmlkEjYKBWxhYmVsGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQ'
    'sNC90LjQtVIFbGFiZWwSNAoEdGV4dBgDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0L'
    'DQvdC40LVSBHRleHQSTQoRaW50ZWdyYXRpb25zX29ubHkYBCABKAhCIJJBHTIb0YHQutC+0YDQ'
    'viDQvtC/0LjRgdCw0L3QuNC1UhBpbnRlZ3JhdGlvbnNPbmx5');

@$core.Deprecated('Use aiChatMapContextDescriptor instead')
const AiChatMapContext$json = {
  '1': 'AiChatMapContext',
  '2': [
    {'1': 'kind', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'kind'},
    {'1': 'object_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'objectId'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'path', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'path'},
    {'1': 'summary', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'summary'},
  ],
};

/// Descriptor for `AiChatMapContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatMapContextDescriptor = $convert.base64Decode(
    'ChBBaUNoYXRNYXBDb250ZXh0EjQKBGtpbmQYASABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0L'
    'jRgdCw0L3QuNC1UgRraW5kEj0KCW9iamVjdF9pZBgCIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+'
    '0L/QuNGB0LDQvdC40LVSCG9iamVjdElkEjYKBXRpdGxlGAMgASgJQiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVIFdGl0bGUSNAoEcGF0aBgEIAEoCUIgkkEdMhvRgdC60L7RgNC+'
    'INC+0L/QuNGB0LDQvdC40LVSBHBhdGgSOgoHc3VtbWFyeRgFIAEoCUIgkkEdMhvRgdC60L7RgN'
    'C+INC+0L/QuNGB0LDQvdC40LVSB3N1bW1hcnk=');

@$core.Deprecated('Use aiChatSessionDescriptor instead')
const AiChatSession$json = {
  '1': 'AiChatSession',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'updated_at', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'updatedAt'},
    {
      '1': 'system_prompt',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'systemPrompt'
    },
    {
      '1': 'temperature',
      '3': 5,
      '4': 1,
      '5': 2,
      '8': {},
      '9': 0,
      '10': 'temperature',
      '17': true
    },
    {
      '1': 'top_p',
      '3': 6,
      '4': 1,
      '5': 2,
      '8': {},
      '9': 1,
      '10': 'topP',
      '17': true
    },
    {
      '1': 'top_k',
      '3': 7,
      '4': 1,
      '5': 5,
      '8': {},
      '9': 2,
      '10': 'topK',
      '17': true
    },
    {
      '1': 'timeout_seconds',
      '3': 8,
      '4': 1,
      '5': 5,
      '8': {},
      '9': 3,
      '10': 'timeoutSeconds',
      '17': true
    },
    {
      '1': 'stop_sequences',
      '3': 9,
      '4': 3,
      '5': 9,
      '8': {},
      '10': 'stopSequences'
    },
    {
      '1': 'model_reasoning_enabled',
      '3': 10,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'modelReasoningEnabled'
    },
    {
      '1': 'tools_enabled',
      '3': 11,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'toolsEnabled'
    },
    {
      '1': 'web_search_enabled',
      '3': 12,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'webSearchEnabled'
    },
    {
      '1': 'web_search_provider',
      '3': 13,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'webSearchProvider'
    },
    {'1': 'mcp_enabled', '3': 14, '4': 1, '5': 8, '8': {}, '10': 'mcpEnabled'},
    {
      '1': 'mcp_server_ids',
      '3': 15,
      '4': 3,
      '5': 3,
      '8': {},
      '10': 'mcpServerIds'
    },
    {
      '1': 'map_context',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.katan.AiChatMapContext',
      '8': {},
      '9': 4,
      '10': 'mapContext',
      '17': true
    },
    {
      '1': 'integrations_enabled',
      '3': 17,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'integrationsEnabled'
    },
  ],
  '8': [
    {'1': '_temperature'},
    {'1': '_top_p'},
    {'1': '_top_k'},
    {'1': '_timeout_seconds'},
    {'1': '_map_context'},
  ],
};

/// Descriptor for `AiChatSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatSessionDescriptor = $convert.base64Decode(
    'Cg1BaUNoYXRTZXNzaW9uEjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsN'
    'C90LjQtVICaWQSNgoFdGl0bGUYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3Q'
    'uNC1UgV0aXRsZRI/Cgp1cGRhdGVkX2F0GAMgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40Y'
    'HQsNC90LjQtVIJdXBkYXRlZEF0EkUKDXN5c3RlbV9wcm9tcHQYBCABKAlCIJJBHTIb0YHQutC+'
    '0YDQviDQvtC/0LjRgdCw0L3QuNC1UgxzeXN0ZW1Qcm9tcHQSRwoLdGVtcGVyYXR1cmUYBSABKA'
    'JCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1SABSC3RlbXBlcmF0dXJliAEBEjoK'
    'BXRvcF9wGAYgASgCQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtUgBUgR0b3BQiA'
    'EBEjoKBXRvcF9rGAcgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtUgCUgR0'
    'b3BLiAEBEk4KD3RpbWVvdXRfc2Vjb25kcxgIIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVIA1IOdGltZW91dFNlY29uZHOIAQESRwoOc3RvcF9zZXF1ZW5jZXMYCSADKAlC'
    'IJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ug1zdG9wU2VxdWVuY2VzElgKF21vZG'
    'VsX3JlYXNvbmluZ19lbmFibGVkGAogASgIQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC9'
    '0LjQtVIVbW9kZWxSZWFzb25pbmdFbmFibGVkEkUKDXRvb2xzX2VuYWJsZWQYCyABKAhCIJJBHT'
    'Ib0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugx0b29sc0VuYWJsZWQSTgoSd2ViX3NlYXJj'
    'aF9lbmFibGVkGAwgASgIQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIQd2ViU2'
    'VhcmNoRW5hYmxlZBJQChN3ZWJfc2VhcmNoX3Byb3ZpZGVyGA0gASgJQiCSQR0yG9GB0LrQvtGA'
    '0L4g0L7Qv9C40YHQsNC90LjQtVIRd2ViU2VhcmNoUHJvdmlkZXISQQoLbWNwX2VuYWJsZWQYDi'
    'ABKAhCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgptY3BFbmFibGVkEkYKDm1j'
    'cF9zZXJ2ZXJfaWRzGA8gAygDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIMbW'
    'NwU2VydmVySWRzEl8KC21hcF9jb250ZXh0GBAgASgLMhcua2F0YW4uQWlDaGF0TWFwQ29udGV4'
    'dEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVIBFIKbWFwQ29udGV4dIgBARJTCh'
    'RpbnRlZ3JhdGlvbnNfZW5hYmxlZBgRIAEoCEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQ'
    'vdC40LVSE2ludGVncmF0aW9uc0VuYWJsZWRCDgoMX3RlbXBlcmF0dXJlQggKBl90b3BfcEIICg'
    'ZfdG9wX2tCEgoQX3RpbWVvdXRfc2Vjb25kc0IOCgxfbWFwX2NvbnRleHQ=');

@$core.Deprecated('Use aiChatToolStepDescriptor instead')
const AiChatToolStep$json = {
  '1': 'AiChatToolStep',
  '2': [
    {'1': 'display_name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'displayName'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'category', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'category'},
  ],
};

/// Descriptor for `AiChatToolStep`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatToolStepDescriptor = $convert.base64Decode(
    'Cg5BaUNoYXRUb29sU3RlcBJDCgxkaXNwbGF5X25hbWUYASABKAlCIJJBHTIb0YHQutC+0YDQvi'
    'DQvtC/0LjRgdCw0L3QuNC1UgtkaXNwbGF5TmFtZRI4CgZzdGF0dXMYAiABKAlCIJJBHTIb0YHQ'
    'utC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZzdGF0dXMSPAoIY2F0ZWdvcnkYAyABKAlCIJJBHT'
    'Ib0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghjYXRlZ29yeQ==');

@$core.Deprecated('Use aiChatMessageDescriptor instead')
const AiChatMessage$json = {
  '1': 'AiChatMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'role', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'role'},
    {'1': 'content', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'content'},
    {'1': 'reasoning', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'reasoning'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 3, '8': {}, '10': 'createdAt'},
    {
      '1': 'attachment_file_id',
      '3': 6,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'attachmentFileId'
    },
    {
      '1': 'attachment_name',
      '3': 7,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'attachmentName'
    },
    {
      '1': 'tool_steps',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.katan.AiChatToolStep',
      '8': {},
      '10': 'toolSteps'
    },
  ],
};

/// Descriptor for `AiChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatMessageDescriptor = $convert.base64Decode(
    'Cg1BaUNoYXRNZXNzYWdlEjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsN'
    'C90LjQtVICaWQSNAoEcm9sZRgCIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC4'
    '0LVSBHJvbGUSOgoHY29udGVudBgDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvd'
    'C40LVSB2NvbnRlbnQSPgoJcmVhc29uaW5nGAQgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C4'
    '0YHQsNC90LjQtVIJcmVhc29uaW5nEj8KCmNyZWF0ZWRfYXQYBSABKANCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgljcmVhdGVkQXQSTgoSYXR0YWNobWVudF9maWxlX2lkGAYg'
    'ASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIQYXR0YWNobWVudEZpbGVJZB'
    'JJCg9hdHRhY2htZW50X25hbWUYByABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3Q'
    'uNC1Ug5hdHRhY2htZW50TmFtZRJWCgp0b29sX3N0ZXBzGAggAygLMhUua2F0YW4uQWlDaGF0VG'
    '9vbFN0ZXBCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugl0b29sU3RlcHM=');

@$core.Deprecated('Use aiChatSendRequestDescriptor instead')
const AiChatSendRequest$json = {
  '1': 'AiChatSendRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {'1': 'user_message', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'userMessage'},
    {
      '1': 'attachment_file_ids',
      '3': 3,
      '4': 3,
      '5': 3,
      '8': {},
      '10': 'attachmentFileIds'
    },
    {'1': 'use_file_rag', '3': 4, '4': 1, '5': 8, '8': {}, '10': 'useFileRag'},
    {
      '1': 'map_context',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.katan.AiChatMapContext',
      '8': {},
      '9': 0,
      '10': 'mapContext',
      '17': true
    },
    {
      '1': 'file_rag_top_k',
      '3': 6,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'fileRagTopK'
    },
    {
      '1': 'file_rag_embed_model',
      '3': 7,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'fileRagEmbedModel'
    },
    {
      '1': 'file_rag_force_vector',
      '3': 8,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'fileRagForceVector'
    },
  ],
  '8': [
    {'1': '_map_context'},
  ],
};

/// Descriptor for `AiChatSendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatSendRequestDescriptor = $convert.base64Decode(
    'ChFBaUNoYXRTZW5kUmVxdWVzdBI/CgpzZXNzaW9uX2lkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVIJc2Vzc2lvbklkEkMKDHVzZXJfbWVzc2FnZRgCIAEoCUIgkkEd'
    'MhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSC3VzZXJNZXNzYWdlElAKE2F0dGFjaG1lbn'
    'RfZmlsZV9pZHMYAyADKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UhFhdHRh'
    'Y2htZW50RmlsZUlkcxJCCgx1c2VfZmlsZV9yYWcYBCABKAhCIJJBHTIb0YHQutC+0YDQviDQvt'
    'C/0LjRgdCw0L3QuNC1Ugp1c2VGaWxlUmFnEl8KC21hcF9jb250ZXh0GAUgASgLMhcua2F0YW4u'
    'QWlDaGF0TWFwQ29udGV4dEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVIAFIKbW'
    'FwQ29udGV4dIgBARJFCg5maWxlX3JhZ190b3BfaxgGIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+'
    '0L/QuNGB0LDQvdC40LVSC2ZpbGVSYWdUb3BLElEKFGZpbGVfcmFnX2VtYmVkX21vZGVsGAcgAS'
    'gJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIRZmlsZVJhZ0VtYmVkTW9kZWwS'
    'UwoVZmlsZV9yYWdfZm9yY2VfdmVjdG9yGAggASgIQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40Y'
    'HQsNC90LjQtVISZmlsZVJhZ0ZvcmNlVmVjdG9yQg4KDF9tYXBfY29udGV4dA==');

@$core.Deprecated('Use aiChatPutSessionFileRequestDescriptor instead')
const AiChatPutSessionFileRequest$json = {
  '1': 'AiChatPutSessionFileRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'filename'},
    {'1': 'content', '3': 3, '4': 1, '5': 12, '8': {}, '10': 'content'},
    {'1': 'ttl_seconds', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'ttlSeconds'},
  ],
};

/// Descriptor for `AiChatPutSessionFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatPutSessionFileRequestDescriptor = $convert.base64Decode(
    'ChtBaUNoYXRQdXRTZXNzaW9uRmlsZVJlcXVlc3QSPwoKc2Vzc2lvbl9pZBgBIAEoA0IgkkEdMh'
    'vRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXNlc3Npb25JZBI8CghmaWxlbmFtZRgCIAEo'
    'CUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCGZpbGVuYW1lEjoKB2NvbnRlbn'
    'QYAyABKAxCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugdjb250ZW50EkEKC3R0'
    'bF9zZWNvbmRzGAQgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIKdHRsU2'
    'Vjb25kcw==');

@$core.Deprecated('Use aiChatPutSessionFileResponseDescriptor instead')
const AiChatPutSessionFileResponse$json = {
  '1': 'AiChatPutSessionFileResponse',
  '2': [
    {'1': 'file_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'fileId'},
  ],
};

/// Descriptor for `AiChatPutSessionFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatPutSessionFileResponseDescriptor =
    $convert.base64Decode(
        'ChxBaUNoYXRQdXRTZXNzaW9uRmlsZVJlc3BvbnNlEjkKB2ZpbGVfaWQYASABKANCIJJBHTIb0Y'
        'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZmaWxlSWQ=');

@$core.Deprecated('Use aiChatGetSessionFileRequestDescriptor instead')
const AiChatGetSessionFileRequest$json = {
  '1': 'AiChatGetSessionFileRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {'1': 'file_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'fileId'},
  ],
};

/// Descriptor for `AiChatGetSessionFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatGetSessionFileRequestDescriptor =
    $convert.base64Decode(
        'ChtBaUNoYXRHZXRTZXNzaW9uRmlsZVJlcXVlc3QSPwoKc2Vzc2lvbl9pZBgBIAEoA0IgkkEdMh'
        'vRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXNlc3Npb25JZBI5CgdmaWxlX2lkGAIgASgD'
        'QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGZmlsZUlk');

@$core.Deprecated('Use aiChatGetSessionFileResponseDescriptor instead')
const AiChatGetSessionFileResponse$json = {
  '1': 'AiChatGetSessionFileResponse',
  '2': [
    {'1': 'file_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'fileId'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'filename'},
    {'1': 'mime_type', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'mimeType'},
    {'1': 'content', '3': 4, '4': 1, '5': 12, '8': {}, '10': 'content'},
  ],
};

/// Descriptor for `AiChatGetSessionFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatGetSessionFileResponseDescriptor = $convert.base64Decode(
    'ChxBaUNoYXRHZXRTZXNzaW9uRmlsZVJlc3BvbnNlEjkKB2ZpbGVfaWQYASABKANCIJJBHTIb0Y'
    'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZmaWxlSWQSPAoIZmlsZW5hbWUYAiABKAlCIJJB'
    'HTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghmaWxlbmFtZRI9CgltaW1lX3R5cGUYAy'
    'ABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghtaW1lVHlwZRI6Cgdjb250'
    'ZW50GAQgASgMQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIHY29udGVudA==');

@$core.Deprecated('Use aiChatAssistantFinalDescriptor instead')
const AiChatAssistantFinal$json = {
  '1': 'AiChatAssistantFinal',
  '2': [
    {
      '1': 'assistant_message_id',
      '3': 1,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'assistantMessageId'
    },
    {'1': 'text', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'text'},
    {'1': 'reasoning', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'reasoning'},
    {
      '1': 'tool_steps',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.katan.AiChatToolStep',
      '8': {},
      '10': 'toolSteps'
    },
  ],
};

/// Descriptor for `AiChatAssistantFinal`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatAssistantFinalDescriptor = $convert.base64Decode(
    'ChRBaUNoYXRBc3Npc3RhbnRGaW5hbBJSChRhc3Npc3RhbnRfbWVzc2FnZV9pZBgBIAEoA0Igkk'
    'EdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSEmFzc2lzdGFudE1lc3NhZ2VJZBI0CgR0'
    'ZXh0GAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIEdGV4dBI+CglyZW'
    'Fzb25pbmcYAyABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UglyZWFzb25p'
    'bmcSVgoKdG9vbF9zdGVwcxgEIAMoCzIVLmthdGFuLkFpQ2hhdFRvb2xTdGVwQiCSQR0yG9GB0L'
    'rQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJdG9vbFN0ZXBz');

@$core.Deprecated('Use aiChatChunkDescriptor instead')
const AiChatChunk$json = {
  '1': 'AiChatChunk',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'content'},
    {'1': 'reasoning', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'reasoning'},
    {'1': 'done', '3': 3, '4': 1, '5': 8, '8': {}, '10': 'done'},
    {'1': 'session_id', '3': 4, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {
      '1': 'session_title',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'sessionTitle'
    },
    {
      '1': 'kind',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.katan.AiChatChunkKind',
      '8': {},
      '10': 'kind'
    },
    {
      '1': 'assistant_final',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.katan.AiChatAssistantFinal',
      '8': {},
      '9': 0,
      '10': 'assistantFinal',
      '17': true
    },
    {'1': 'tool_name', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'toolName'},
    {
      '1': 'tool_display_name',
      '3': 9,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'toolDisplayName'
    },
    {'1': 'tool_status', '3': 10, '4': 1, '5': 9, '8': {}, '10': 'toolStatus'},
    {
      '1': 'tool_category',
      '3': 11,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'toolCategory'
    },
  ],
  '8': [
    {'1': '_assistant_final'},
  ],
};

/// Descriptor for `AiChatChunk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatChunkDescriptor = $convert.base64Decode(
    'CgtBaUNoYXRDaHVuaxI6Cgdjb250ZW50GAEgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40Y'
    'HQsNC90LjQtVIHY29udGVudBI+CglyZWFzb25pbmcYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQ'
    'vtC/0LjRgdCw0L3QuNC1UglyZWFzb25pbmcSNAoEZG9uZRgDIAEoCEIgkkEdMhvRgdC60L7RgN'
    'C+INC+0L/QuNGB0LDQvdC40LVSBGRvbmUSPwoKc2Vzc2lvbl9pZBgEIAEoA0IgkkEdMhvRgdC6'
    '0L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXNlc3Npb25JZBJFCg1zZXNzaW9uX3RpdGxlGAUgAS'
    'gJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIMc2Vzc2lvblRpdGxlEkwKBGtp'
    'bmQYBiABKA4yFi5rYXRhbi5BaUNoYXRDaHVua0tpbmRCIJJBHTIb0YHQutC+0YDQviDQvtC/0L'
    'jRgdCw0L3QuNC1UgRraW5kEmsKD2Fzc2lzdGFudF9maW5hbBgHIAEoCzIbLmthdGFuLkFpQ2hh'
    'dEFzc2lzdGFudEZpbmFsQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtUgAUg5hc3'
    'Npc3RhbnRGaW5hbIgBARI9Cgl0b29sX25hbWUYCCABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/'
    '0LjRgdCw0L3QuNC1Ugh0b29sTmFtZRJMChF0b29sX2Rpc3BsYXlfbmFtZRgJIAEoCUIgkkEdMh'
    'vRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSD3Rvb2xEaXNwbGF5TmFtZRJBCgt0b29sX3N0'
    'YXR1cxgKIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCnRvb2xTdGF0dX'
    'MSRQoNdG9vbF9jYXRlZ29yeRgLIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC4'
    '0LVSDHRvb2xDYXRlZ29yeUISChBfYXNzaXN0YW50X2ZpbmFs');

@$core.Deprecated('Use aiChatStatusRequestDescriptor instead')
const AiChatStatusRequest$json = {
  '1': 'AiChatStatusRequest',
};

/// Descriptor for `AiChatStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatStatusRequestDescriptor =
    $convert.base64Decode('ChNBaUNoYXRTdGF0dXNSZXF1ZXN0');

@$core.Deprecated('Use aiChatRuntimeDefaultsDescriptor instead')
const AiChatRuntimeDefaults$json = {
  '1': 'AiChatRuntimeDefaults',
  '2': [
    {
      '1': 'temperature',
      '3': 1,
      '4': 1,
      '5': 2,
      '8': {},
      '9': 0,
      '10': 'temperature',
      '17': true
    },
    {
      '1': 'top_p',
      '3': 2,
      '4': 1,
      '5': 2,
      '8': {},
      '9': 1,
      '10': 'topP',
      '17': true
    },
    {
      '1': 'top_k',
      '3': 3,
      '4': 1,
      '5': 5,
      '8': {},
      '9': 2,
      '10': 'topK',
      '17': true
    },
    {
      '1': 'timeout_seconds',
      '3': 4,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'timeoutSeconds'
    },
    {
      '1': 'stop_sequences',
      '3': 5,
      '4': 3,
      '5': 9,
      '8': {},
      '10': 'stopSequences'
    },
    {
      '1': 'model_reasoning_enabled',
      '3': 6,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'modelReasoningEnabled'
    },
    {
      '1': 'web_search_enabled',
      '3': 7,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'webSearchEnabled'
    },
    {
      '1': 'web_search_provider',
      '3': 8,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'webSearchProvider'
    },
    {'1': 'mcp_enabled', '3': 9, '4': 1, '5': 8, '8': {}, '10': 'mcpEnabled'},
    {
      '1': 'mcp_server_ids',
      '3': 10,
      '4': 3,
      '5': 3,
      '8': {},
      '10': 'mcpServerIds'
    },
    {
      '1': 'integrations_enabled',
      '3': 11,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'integrationsEnabled'
    },
    {
      '1': 'file_rag_enabled',
      '3': 12,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'fileRagEnabled'
    },
    {
      '1': 'file_rag_top_k',
      '3': 13,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'fileRagTopK'
    },
    {
      '1': 'file_rag_embed_model',
      '3': 14,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'fileRagEmbedModel'
    },
    {
      '1': 'file_rag_force_vector',
      '3': 15,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'fileRagForceVector'
    },
    {
      '1': 'map_selection_max_items',
      '3': 16,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'mapSelectionMaxItems'
    },
  ],
  '8': [
    {'1': '_temperature'},
    {'1': '_top_p'},
    {'1': '_top_k'},
  ],
};

/// Descriptor for `AiChatRuntimeDefaults`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatRuntimeDefaultsDescriptor = $convert.base64Decode(
    'ChVBaUNoYXRSdW50aW1lRGVmYXVsdHMSRwoLdGVtcGVyYXR1cmUYASABKAJCIJJBHTIb0YHQut'
    'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1SABSC3RlbXBlcmF0dXJliAEBEjoKBXRvcF9wGAIgASgC'
    'QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtUgBUgR0b3BQiAEBEjoKBXRvcF9rGA'
    'MgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtUgCUgR0b3BLiAEBEkkKD3Rp'
    'bWVvdXRfc2Vjb25kcxgEIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSDn'
    'RpbWVvdXRTZWNvbmRzEkcKDnN0b3Bfc2VxdWVuY2VzGAUgAygJQiCSQR0yG9GB0LrQvtGA0L4g'
    '0L7Qv9C40YHQsNC90LjQtVINc3RvcFNlcXVlbmNlcxJYChdtb2RlbF9yZWFzb25pbmdfZW5hYm'
    'xlZBgGIAEoCEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSFW1vZGVsUmVhc29u'
    'aW5nRW5hYmxlZBJOChJ3ZWJfc2VhcmNoX2VuYWJsZWQYByABKAhCIJJBHTIb0YHQutC+0YDQvi'
    'DQvtC/0LjRgdCw0L3QuNC1UhB3ZWJTZWFyY2hFbmFibGVkElAKE3dlYl9zZWFyY2hfcHJvdmlk'
    'ZXIYCCABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UhF3ZWJTZWFyY2hQcm'
    '92aWRlchJBCgttY3BfZW5hYmxlZBgJIAEoCEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQ'
    'vdC40LVSCm1jcEVuYWJsZWQSRgoObWNwX3NlcnZlcl9pZHMYCiADKANCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgxtY3BTZXJ2ZXJJZHMSUwoUaW50ZWdyYXRpb25zX2VuYWJs'
    'ZWQYCyABKAhCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UhNpbnRlZ3JhdGlvbn'
    'NFbmFibGVkEkoKEGZpbGVfcmFnX2VuYWJsZWQYDCABKAhCIJJBHTIb0YHQutC+0YDQviDQvtC/'
    '0LjRgdCw0L3QuNC1Ug5maWxlUmFnRW5hYmxlZBJFCg5maWxlX3JhZ190b3BfaxgNIAEoBUIgkk'
    'EdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSC2ZpbGVSYWdUb3BLElEKFGZpbGVfcmFn'
    'X2VtYmVkX21vZGVsGA4gASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIRZm'
    'lsZVJhZ0VtYmVkTW9kZWwSUwoVZmlsZV9yYWdfZm9yY2VfdmVjdG9yGA8gASgIQiCSQR0yG9GB'
    '0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVISZmlsZVJhZ0ZvcmNlVmVjdG9yElcKF21hcF9zZW'
    'xlY3Rpb25fbWF4X2l0ZW1zGBAgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
    'tVIUbWFwU2VsZWN0aW9uTWF4SXRlbXNCDgoMX3RlbXBlcmF0dXJlQggKBl90b3BfcEIICgZfdG'
    '9wX2s=');

@$core.Deprecated('Use aiChatProactiveChipDescriptor instead')
const AiChatProactiveChip$json = {
  '1': 'AiChatProactiveChip',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'label'},
    {'1': 'prompt', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'prompt'},
  ],
};

/// Descriptor for `AiChatProactiveChip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatProactiveChipDescriptor = $convert.base64Decode(
    'ChNBaUNoYXRQcm9hY3RpdmVDaGlwEjAKAmlkGAEgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVICaWQSNgoFbGFiZWwYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjR'
    'gdCw0L3QuNC1UgVsYWJlbBI4CgZwcm9tcHQYAyABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0L'
    'jRgdCw0L3QuNC1UgZwcm9tcHQ=');

@$core.Deprecated('Use aiChatStatusResponseDescriptor instead')
const AiChatStatusResponse$json = {
  '1': 'AiChatStatusResponse',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '8': {}, '10': 'enabled'},
    {
      '1': 'llm_connected',
      '3': 2,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'llmConnected'
    },
    {
      '1': 'mcp_available',
      '3': 3,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'mcpAvailable'
    },
    {
      '1': 'attachments_available',
      '3': 4,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'attachmentsAvailable'
    },
    {
      '1': 'hide_ask_ai_button',
      '3': 5,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'hideAskAiButton'
    },
    {
      '1': 'web_search_available',
      '3': 6,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'webSearchAvailable'
    },
    {
      '1': 'web_search_providers',
      '3': 7,
      '4': 3,
      '5': 9,
      '8': {},
      '10': 'webSearchProviders'
    },
    {
      '1': 'default_web_search_provider',
      '3': 8,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'defaultWebSearchProvider'
    },
    {
      '1': 'defaults',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.katan.AiChatRuntimeDefaults',
      '8': {},
      '10': 'defaults'
    },
    {
      '1': 'integrations_available',
      '3': 10,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'integrationsAvailable'
    },
    {
      '1': 'session_templates',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.katan.AiChatSessionTemplate',
      '8': {},
      '10': 'sessionTemplates'
    },
    {
      '1': 'custom_quick_prompts',
      '3': 12,
      '4': 3,
      '5': 11,
      '6': '.katan.AiChatQuickPrompt',
      '8': {},
      '10': 'customQuickPrompts'
    },
    {
      '1': 'proactive_chips',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.katan.AiChatProactiveChip',
      '8': {},
      '10': 'proactiveChips'
    },
    {
      '1': 'image_upload_available',
      '3': 14,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'imageUploadAvailable'
    },
  ],
};

/// Descriptor for `AiChatStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatStatusResponseDescriptor = $convert.base64Decode(
    'ChRBaUNoYXRTdGF0dXNSZXNwb25zZRI6CgdlbmFibGVkGAEgASgIQiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVIHZW5hYmxlZBJFCg1sbG1fY29ubmVjdGVkGAIgASgIQiCSQR0y'
    'G9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIMbGxtQ29ubmVjdGVkEkUKDW1jcF9hdmFpbG'
    'FibGUYAyABKAhCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgxtY3BBdmFpbGFi'
    'bGUSVQoVYXR0YWNobWVudHNfYXZhaWxhYmxlGAQgASgIQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVIUYXR0YWNobWVudHNBdmFpbGFibGUSTQoSaGlkZV9hc2tfYWlfYnV0dG9u'
    'GAUgASgIQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIPaGlkZUFza0FpQnV0dG'
    '9uElIKFHdlYl9zZWFyY2hfYXZhaWxhYmxlGAYgASgIQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C4'
    '0YHQsNC90LjQtVISd2ViU2VhcmNoQXZhaWxhYmxlElIKFHdlYl9zZWFyY2hfcHJvdmlkZXJzGA'
    'cgAygJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVISd2ViU2VhcmNoUHJvdmlk'
    'ZXJzEl8KG2RlZmF1bHRfd2ViX3NlYXJjaF9wcm92aWRlchgIIAEoCUIgkkEdMhvRgdC60L7RgN'
    'C+INC+0L/QuNGB0LDQvdC40LVSGGRlZmF1bHRXZWJTZWFyY2hQcm92aWRlchJaCghkZWZhdWx0'
    'cxgJIAEoCzIcLmthdGFuLkFpQ2hhdFJ1bnRpbWVEZWZhdWx0c0IgkkEdMhvRgdC60L7RgNC+IN'
    'C+0L/QuNGB0LDQvdC40LVSCGRlZmF1bHRzElcKFmludGVncmF0aW9uc19hdmFpbGFibGUYCiAB'
    'KAhCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UhVpbnRlZ3JhdGlvbnNBdmFpbG'
    'FibGUSawoRc2Vzc2lvbl90ZW1wbGF0ZXMYCyADKAsyHC5rYXRhbi5BaUNoYXRTZXNzaW9uVGVt'
    'cGxhdGVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UhBzZXNzaW9uVGVtcGxhdG'
    'VzEmwKFGN1c3RvbV9xdWlja19wcm9tcHRzGAwgAygLMhgua2F0YW4uQWlDaGF0UXVpY2tQcm9t'
    'cHRCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UhJjdXN0b21RdWlja1Byb21wdH'
    'MSZQoPcHJvYWN0aXZlX2NoaXBzGA0gAygLMhoua2F0YW4uQWlDaGF0UHJvYWN0aXZlQ2hpcEIg'
    'kkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSDnByb2FjdGl2ZUNoaXBzElYKFmltYW'
    'dlX3VwbG9hZF9hdmFpbGFibGUYDiABKAhCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3Q'
    'uNC1UhRpbWFnZVVwbG9hZEF2YWlsYWJsZQ==');

@$core.Deprecated('Use aiChatGetSessionsRequestDescriptor instead')
const AiChatGetSessionsRequest$json = {
  '1': 'AiChatGetSessionsRequest',
};

/// Descriptor for `AiChatGetSessionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatGetSessionsRequestDescriptor =
    $convert.base64Decode('ChhBaUNoYXRHZXRTZXNzaW9uc1JlcXVlc3Q=');

@$core.Deprecated('Use aiChatGetSessionsResponseDescriptor instead')
const AiChatGetSessionsResponse$json = {
  '1': 'AiChatGetSessionsResponse',
  '2': [
    {
      '1': 'sessions',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.AiChatSession',
      '8': {},
      '10': 'sessions'
    },
  ],
};

/// Descriptor for `AiChatGetSessionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatGetSessionsResponseDescriptor = $convert.base64Decode(
    'ChlBaUNoYXRHZXRTZXNzaW9uc1Jlc3BvbnNlElIKCHNlc3Npb25zGAEgAygLMhQua2F0YW4uQW'
    'lDaGF0U2Vzc2lvbkIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCHNlc3Npb25z');

@$core.Deprecated('Use aiChatCreateSessionRequestDescriptor instead')
const AiChatCreateSessionRequest$json = {
  '1': 'AiChatCreateSessionRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {
      '1': 'system_prompt',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'systemPrompt'
    },
    {
      '1': 'map_context',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.AiChatMapContext',
      '8': {},
      '9': 0,
      '10': 'mapContext',
      '17': true
    },
    {'1': 'template_id', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'templateId'},
  ],
  '8': [
    {'1': '_map_context'},
  ],
};

/// Descriptor for `AiChatCreateSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatCreateSessionRequestDescriptor = $convert.base64Decode(
    'ChpBaUNoYXRDcmVhdGVTZXNzaW9uUmVxdWVzdBI2CgV0aXRsZRgBIAEoCUIgkkEdMhvRgdC60L'
    '7RgNC+INC+0L/QuNGB0LDQvdC40LVSBXRpdGxlEkUKDXN5c3RlbV9wcm9tcHQYAiABKAlCIJJB'
    'HTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgxzeXN0ZW1Qcm9tcHQSXwoLbWFwX2Nvbn'
    'RleHQYAyABKAsyFy5rYXRhbi5BaUNoYXRNYXBDb250ZXh0QiCSQR0yG9GB0LrQvtGA0L4g0L7Q'
    'v9C40YHQsNC90LjQtUgAUgptYXBDb250ZXh0iAEBEkEKC3RlbXBsYXRlX2lkGAQgASgJQiCSQR'
    '0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIKdGVtcGxhdGVJZEIOCgxfbWFwX2NvbnRl'
    'eHQ=');

@$core.Deprecated('Use aiChatDeleteSessionRequestDescriptor instead')
const AiChatDeleteSessionRequest$json = {
  '1': 'AiChatDeleteSessionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
  ],
};

/// Descriptor for `AiChatDeleteSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatDeleteSessionRequestDescriptor =
    $convert.base64Decode(
        'ChpBaUNoYXREZWxldGVTZXNzaW9uUmVxdWVzdBI/CgpzZXNzaW9uX2lkGAEgASgDQiCSQR0yG9'
        'GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJc2Vzc2lvbklk');

@$core.Deprecated('Use aiChatUpdateSessionTitleRequestDescriptor instead')
const AiChatUpdateSessionTitleRequest$json = {
  '1': 'AiChatUpdateSessionTitleRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
  ],
};

/// Descriptor for `AiChatUpdateSessionTitleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatUpdateSessionTitleRequestDescriptor =
    $convert.base64Decode(
        'Ch9BaUNoYXRVcGRhdGVTZXNzaW9uVGl0bGVSZXF1ZXN0Ej8KCnNlc3Npb25faWQYASABKANCIJ'
        'JBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UglzZXNzaW9uSWQSNgoFdGl0bGUYAiAB'
        'KAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgV0aXRsZQ==');

@$core
    .Deprecated('Use aiChatUpdateSessionSystemPromptRequestDescriptor instead')
const AiChatUpdateSessionSystemPromptRequest$json = {
  '1': 'AiChatUpdateSessionSystemPromptRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {
      '1': 'system_prompt',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'systemPrompt'
    },
  ],
};

/// Descriptor for `AiChatUpdateSessionSystemPromptRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatUpdateSessionSystemPromptRequestDescriptor =
    $convert.base64Decode(
        'CiZBaUNoYXRVcGRhdGVTZXNzaW9uU3lzdGVtUHJvbXB0UmVxdWVzdBI/CgpzZXNzaW9uX2lkGA'
        'EgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJc2Vzc2lvbklkEkUKDXN5'
        'c3RlbV9wcm9tcHQYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgxzeX'
        'N0ZW1Qcm9tcHQ=');

@$core.Deprecated('Use aiChatMCPServerDescriptor instead')
const AiChatMCPServer$json = {
  '1': 'AiChatMCPServer',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'enabled', '3': 3, '4': 1, '5': 8, '8': {}, '10': 'enabled'},
    {'1': 'transport', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'transport'},
  ],
};

/// Descriptor for `AiChatMCPServer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatMCPServerDescriptor = $convert.base64Decode(
    'Cg9BaUNoYXRNQ1BTZXJ2ZXISMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgd'
    'Cw0L3QuNC1UgJpZBI0CgRuYW1lGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC9'
    '0LjQtVIEbmFtZRI6CgdlbmFibGVkGAMgASgIQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsN'
    'C90LjQtVIHZW5hYmxlZBI+Cgl0cmFuc3BvcnQYBCABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/'
    '0LjRgdCw0L3QuNC1Ugl0cmFuc3BvcnQ=');

@$core.Deprecated('Use aiChatListMCPServersRequestDescriptor instead')
const AiChatListMCPServersRequest$json = {
  '1': 'AiChatListMCPServersRequest',
};

/// Descriptor for `AiChatListMCPServersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatListMCPServersRequestDescriptor =
    $convert.base64Decode('ChtBaUNoYXRMaXN0TUNQU2VydmVyc1JlcXVlc3Q=');

@$core.Deprecated('Use aiChatListMCPServersResponseDescriptor instead')
const AiChatListMCPServersResponse$json = {
  '1': 'AiChatListMCPServersResponse',
  '2': [
    {
      '1': 'servers',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.AiChatMCPServer',
      '8': {},
      '10': 'servers'
    },
  ],
};

/// Descriptor for `AiChatListMCPServersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatListMCPServersResponseDescriptor =
    $convert.base64Decode(
        'ChxBaUNoYXRMaXN0TUNQU2VydmVyc1Jlc3BvbnNlElIKB3NlcnZlcnMYASADKAsyFi5rYXRhbi'
        '5BaUNoYXRNQ1BTZXJ2ZXJCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdzZXJ2'
        'ZXJz');

@$core.Deprecated('Use aiChatGetMessagesRequestDescriptor instead')
const AiChatGetMessagesRequest$json = {
  '1': 'AiChatGetMessagesRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
  ],
};

/// Descriptor for `AiChatGetMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatGetMessagesRequestDescriptor =
    $convert.base64Decode(
        'ChhBaUNoYXRHZXRNZXNzYWdlc1JlcXVlc3QSPwoKc2Vzc2lvbl9pZBgBIAEoA0IgkkEdMhvRgd'
        'C60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXNlc3Npb25JZA==');

@$core.Deprecated('Use aiChatGetMessagesResponseDescriptor instead')
const AiChatGetMessagesResponse$json = {
  '1': 'AiChatGetMessagesResponse',
  '2': [
    {
      '1': 'messages',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.AiChatMessage',
      '8': {},
      '10': 'messages'
    },
  ],
};

/// Descriptor for `AiChatGetMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatGetMessagesResponseDescriptor = $convert.base64Decode(
    'ChlBaUNoYXRHZXRNZXNzYWdlc1Jlc3BvbnNlElIKCG1lc3NhZ2VzGAEgAygLMhQua2F0YW4uQW'
    'lDaGF0TWVzc2FnZUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCG1lc3NhZ2Vz');

@$core.Deprecated('Use aiChatRegenerateRequestDescriptor instead')
const AiChatRegenerateRequest$json = {
  '1': 'AiChatRegenerateRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {
      '1': 'assistant_message_id',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'assistantMessageId'
    },
  ],
};

/// Descriptor for `AiChatRegenerateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatRegenerateRequestDescriptor = $convert.base64Decode(
    'ChdBaUNoYXRSZWdlbmVyYXRlUmVxdWVzdBI/CgpzZXNzaW9uX2lkGAEgASgDQiCSQR0yG9GB0L'
    'rQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJc2Vzc2lvbklkElIKFGFzc2lzdGFudF9tZXNzYWdl'
    'X2lkGAIgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVISYXNzaXN0YW50TW'
    'Vzc2FnZUlk');

@$core.Deprecated('Use aiChatContinueRequestDescriptor instead')
const AiChatContinueRequest$json = {
  '1': 'AiChatContinueRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {
      '1': 'assistant_message_id',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'assistantMessageId'
    },
  ],
};

/// Descriptor for `AiChatContinueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatContinueRequestDescriptor = $convert.base64Decode(
    'ChVBaUNoYXRDb250aW51ZVJlcXVlc3QSPwoKc2Vzc2lvbl9pZBgBIAEoA0IgkkEdMhvRgdC60L'
    '7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXNlc3Npb25JZBJSChRhc3Npc3RhbnRfbWVzc2FnZV9p'
    'ZBgCIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSEmFzc2lzdGFudE1lc3'
    'NhZ2VJZA==');

@$core.Deprecated('Use aiChatEditUserMessageRequestDescriptor instead')
const AiChatEditUserMessageRequest$json = {
  '1': 'AiChatEditUserMessageRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {
      '1': 'user_message_id',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'userMessageId'
    },
    {'1': 'new_content', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'newContent'},
  ],
};

/// Descriptor for `AiChatEditUserMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatEditUserMessageRequestDescriptor = $convert.base64Decode(
    'ChxBaUNoYXRFZGl0VXNlck1lc3NhZ2VSZXF1ZXN0Ej8KCnNlc3Npb25faWQYASABKANCIJJBHT'
    'Ib0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UglzZXNzaW9uSWQSSAoPdXNlcl9tZXNzYWdl'
    'X2lkGAIgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVINdXNlck1lc3NhZ2'
    'VJZBJBCgtuZXdfY29udGVudBgDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC4'
    '0LVSCm5ld0NvbnRlbnQ=');

@$core.Deprecated('Use aiChatAssistantRegenerationDescriptor instead')
const AiChatAssistantRegeneration$json = {
  '1': 'AiChatAssistantRegeneration',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'message_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'messageId'},
    {'1': 'created_at', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'createdAt'},
    {'1': 'old_content', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'oldContent'},
    {'1': 'new_content', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'newContent'},
    {
      '1': 'old_reasoning',
      '3': 6,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'oldReasoning'
    },
    {
      '1': 'new_reasoning',
      '3': 7,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'newReasoning'
    },
  ],
};

/// Descriptor for `AiChatAssistantRegeneration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatAssistantRegenerationDescriptor = $convert.base64Decode(
    'ChtBaUNoYXRBc3Npc3RhbnRSZWdlbmVyYXRpb24SMAoCaWQYASABKANCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgJpZBI/CgptZXNzYWdlX2lkGAIgASgDQiCSQR0yG9GB0LrQ'
    'vtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJbWVzc2FnZUlkEj8KCmNyZWF0ZWRfYXQYAyABKANCIJ'
    'JBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgljcmVhdGVkQXQSQQoLb2xkX2NvbnRl'
    'bnQYBCABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgpvbGRDb250ZW50Ek'
    'EKC25ld19jb250ZW50GAUgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIK'
    'bmV3Q29udGVudBJFCg1vbGRfcmVhc29uaW5nGAYgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVIMb2xkUmVhc29uaW5nEkUKDW5ld19yZWFzb25pbmcYByABKAlCIJJBHTIb'
    '0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgxuZXdSZWFzb25pbmc=');

@$core
    .Deprecated('Use aiChatListAssistantRegenerationsRequestDescriptor instead')
const AiChatListAssistantRegenerationsRequest$json = {
  '1': 'AiChatListAssistantRegenerationsRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {
      '1': 'assistant_message_id',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'assistantMessageId'
    },
  ],
};

/// Descriptor for `AiChatListAssistantRegenerationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatListAssistantRegenerationsRequestDescriptor =
    $convert.base64Decode(
        'CidBaUNoYXRMaXN0QXNzaXN0YW50UmVnZW5lcmF0aW9uc1JlcXVlc3QSPwoKc2Vzc2lvbl9pZB'
        'gBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXNlc3Npb25JZBJSChRh'
        'c3Npc3RhbnRfbWVzc2FnZV9pZBgCIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvd'
        'C40LVSEmFzc2lzdGFudE1lc3NhZ2VJZA==');

@$core.Deprecated(
    'Use aiChatListAssistantRegenerationsResponseDescriptor instead')
const AiChatListAssistantRegenerationsResponse$json = {
  '1': 'AiChatListAssistantRegenerationsResponse',
  '2': [
    {
      '1': 'regenerations',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.AiChatAssistantRegeneration',
      '8': {},
      '10': 'regenerations'
    },
  ],
};

/// Descriptor for `AiChatListAssistantRegenerationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatListAssistantRegenerationsResponseDescriptor =
    $convert.base64Decode(
        'CihBaUNoYXRMaXN0QXNzaXN0YW50UmVnZW5lcmF0aW9uc1Jlc3BvbnNlEmoKDXJlZ2VuZXJhdG'
        'lvbnMYASADKAsyIi5rYXRhbi5BaUNoYXRBc3Npc3RhbnRSZWdlbmVyYXRpb25CIJJBHTIb0YHQ'
        'utC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ug1yZWdlbmVyYXRpb25z');

@$core.Deprecated(
    'Use aiChatGetMessagesAtAssistantVersionRequestDescriptor instead')
const AiChatGetMessagesAtAssistantVersionRequest$json = {
  '1': 'AiChatGetMessagesAtAssistantVersionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {
      '1': 'assistant_message_id',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'assistantMessageId'
    },
    {
      '1': 'version_index',
      '3': 3,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'versionIndex'
    },
  ],
};

/// Descriptor for `AiChatGetMessagesAtAssistantVersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List
    aiChatGetMessagesAtAssistantVersionRequestDescriptor =
    $convert.base64Decode(
        'CipBaUNoYXRHZXRNZXNzYWdlc0F0QXNzaXN0YW50VmVyc2lvblJlcXVlc3QSPwoKc2Vzc2lvbl'
        '9pZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXNlc3Npb25JZBJS'
        'ChRhc3Npc3RhbnRfbWVzc2FnZV9pZBgCIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0L'
        'DQvdC40LVSEmFzc2lzdGFudE1lc3NhZ2VJZBJFCg12ZXJzaW9uX2luZGV4GAMgASgFQiCSQR0y'
        'G9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIMdmVyc2lvbkluZGV4');

@$core.Deprecated('Use aiChatMcpServerAdminDescriptor instead')
const AiChatMcpServerAdmin$json = {
  '1': 'AiChatMcpServerAdmin',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'user_ids', '3': 2, '4': 3, '5': 3, '8': {}, '10': 'userIds'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'enabled', '3': 4, '4': 1, '5': 8, '8': {}, '10': 'enabled'},
    {'1': 'transport', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'transport'},
    {'1': 'url', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'url'},
    {'1': 'headers', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'headers'},
    {
      '1': 'timeout_seconds',
      '3': 8,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'timeoutSeconds'
    },
  ],
};

/// Descriptor for `AiChatMcpServerAdmin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatMcpServerAdminDescriptor = $convert.base64Decode(
    'ChRBaUNoYXRNY3BTZXJ2ZXJBZG1pbhIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L'
    '/QuNGB0LDQvdC40LVSAmlkEjsKCHVzZXJfaWRzGAIgAygDQiCSQR0yG9GB0LrQvtGA0L4g0L7Q'
    'v9C40YHQsNC90LjQtVIHdXNlcklkcxI0CgRuYW1lGAMgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L'
    '7Qv9C40YHQsNC90LjQtVIEbmFtZRI6CgdlbmFibGVkGAQgASgIQiCSQR0yG9GB0LrQvtGA0L4g'
    '0L7Qv9C40YHQsNC90LjQtVIHZW5hYmxlZBI+Cgl0cmFuc3BvcnQYBSABKAlCIJJBHTIb0YHQut'
    'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugl0cmFuc3BvcnQSMgoDdXJsGAYgASgJQiCSQR0yG9GB'
    '0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIDdXJsEjoKB2hlYWRlcnMYByABKAlCIJJBHTIb0Y'
    'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdoZWFkZXJzEkkKD3RpbWVvdXRfc2Vjb25kcxgI'
    'IAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSDnRpbWVvdXRTZWNvbmRz');

@$core.Deprecated('Use aiChatListMcpServersAdminRequestDescriptor instead')
const AiChatListMcpServersAdminRequest$json = {
  '1': 'AiChatListMcpServersAdminRequest',
};

/// Descriptor for `AiChatListMcpServersAdminRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatListMcpServersAdminRequestDescriptor =
    $convert.base64Decode('CiBBaUNoYXRMaXN0TWNwU2VydmVyc0FkbWluUmVxdWVzdA==');

@$core.Deprecated('Use aiChatListMcpServersAdminResponseDescriptor instead')
const AiChatListMcpServersAdminResponse$json = {
  '1': 'AiChatListMcpServersAdminResponse',
  '2': [
    {
      '1': 'servers',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.AiChatMcpServerAdmin',
      '8': {},
      '10': 'servers'
    },
  ],
};

/// Descriptor for `AiChatListMcpServersAdminResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatListMcpServersAdminResponseDescriptor =
    $convert.base64Decode(
        'CiFBaUNoYXRMaXN0TWNwU2VydmVyc0FkbWluUmVzcG9uc2USVwoHc2VydmVycxgBIAMoCzIbLm'
        'thdGFuLkFpQ2hhdE1jcFNlcnZlckFkbWluQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC9'
        '0LjQtVIHc2VydmVycw==');

@$core.Deprecated('Use aiChatGetMcpServerAdminRequestDescriptor instead')
const AiChatGetMcpServerAdminRequest$json = {
  '1': 'AiChatGetMcpServerAdminRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `AiChatGetMcpServerAdminRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatGetMcpServerAdminRequestDescriptor =
    $convert.base64Decode(
        'Ch5BaUNoYXRHZXRNY3BTZXJ2ZXJBZG1pblJlcXVlc3QSMAoCaWQYASABKANCIJJBHTIb0YHQut'
        'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgJpZA==');

@$core.Deprecated('Use aiChatGetMcpServerAdminResponseDescriptor instead')
const AiChatGetMcpServerAdminResponse$json = {
  '1': 'AiChatGetMcpServerAdminResponse',
  '2': [
    {
      '1': 'server',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.AiChatMcpServerAdmin',
      '8': {},
      '10': 'server'
    },
  ],
};

/// Descriptor for `AiChatGetMcpServerAdminResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatGetMcpServerAdminResponseDescriptor =
    $convert.base64Decode(
        'Ch9BaUNoYXRHZXRNY3BTZXJ2ZXJBZG1pblJlc3BvbnNlElUKBnNlcnZlchgBIAEoCzIbLmthdG'
        'FuLkFpQ2hhdE1jcFNlcnZlckFkbWluQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
        'tVIGc2VydmVy');

@$core.Deprecated('Use aiChatCreateMcpServerAdminRequestDescriptor instead')
const AiChatCreateMcpServerAdminRequest$json = {
  '1': 'AiChatCreateMcpServerAdminRequest',
  '2': [
    {'1': 'user_ids', '3': 1, '4': 3, '5': 3, '8': {}, '10': 'userIds'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'enabled', '3': 3, '4': 1, '5': 8, '8': {}, '10': 'enabled'},
    {'1': 'transport', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'transport'},
    {'1': 'url', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'url'},
    {'1': 'headers', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'headers'},
    {
      '1': 'timeout_seconds',
      '3': 7,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'timeoutSeconds'
    },
  ],
};

/// Descriptor for `AiChatCreateMcpServerAdminRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatCreateMcpServerAdminRequestDescriptor = $convert.base64Decode(
    'CiFBaUNoYXRDcmVhdGVNY3BTZXJ2ZXJBZG1pblJlcXVlc3QSOwoIdXNlcl9pZHMYASADKANCIJ'
    'JBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugd1c2VySWRzEjQKBG5hbWUYAiABKAlC'
    'IJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgRuYW1lEjoKB2VuYWJsZWQYAyABKA'
    'hCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdlbmFibGVkEj4KCXRyYW5zcG9y'
    'dBgEIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXRyYW5zcG9ydBIyCg'
    'N1cmwYBSABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgN1cmwSOgoHaGVh'
    'ZGVycxgGIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSB2hlYWRlcnMSSQ'
    'oPdGltZW91dF9zZWNvbmRzGAcgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
    'tVIOdGltZW91dFNlY29uZHM=');

@$core.Deprecated('Use aiChatUpdateMcpServerAdminRequestDescriptor instead')
const AiChatUpdateMcpServerAdminRequest$json = {
  '1': 'AiChatUpdateMcpServerAdminRequest',
  '2': [
    {
      '1': 'server',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.AiChatMcpServerAdmin',
      '8': {},
      '10': 'server'
    },
  ],
};

/// Descriptor for `AiChatUpdateMcpServerAdminRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatUpdateMcpServerAdminRequestDescriptor =
    $convert.base64Decode(
        'CiFBaUNoYXRVcGRhdGVNY3BTZXJ2ZXJBZG1pblJlcXVlc3QSVQoGc2VydmVyGAEgASgLMhsua2'
        'F0YW4uQWlDaGF0TWNwU2VydmVyQWRtaW5CIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3Q'
        'uNC1UgZzZXJ2ZXI=');

@$core.Deprecated('Use aiChatDeleteMcpServerAdminRequestDescriptor instead')
const AiChatDeleteMcpServerAdminRequest$json = {
  '1': 'AiChatDeleteMcpServerAdminRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `AiChatDeleteMcpServerAdminRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatDeleteMcpServerAdminRequestDescriptor =
    $convert.base64Decode(
        'CiFBaUNoYXREZWxldGVNY3BTZXJ2ZXJBZG1pblJlcXVlc3QSMAoCaWQYASABKANCIJJBHTIb0Y'
        'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgJpZA==');

@$core.Deprecated('Use aiChatLLMProviderAdminDescriptor instead')
const AiChatLLMProviderAdmin$json = {
  '1': 'AiChatLLMProviderAdmin',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'kind', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'kind'},
    {'1': 'category', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'category'},
    {'1': 'active', '3': 5, '4': 1, '5': 8, '8': {}, '10': 'active'},
    {'1': 'base_url', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'baseUrl'},
    {'1': 'api_key', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'apiKey'},
    {'1': 'auth_url', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'authUrl'},
    {'1': 'scope', '3': 9, '4': 1, '5': 9, '8': {}, '10': 'scope'},
    {'1': 'folder_id', '3': 10, '4': 1, '5': 9, '8': {}, '10': 'folderId'},
    {
      '1': 'insecure_skip_verify',
      '3': 11,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'insecureSkipVerify'
    },
    {
      '1': 'probe_on_connect',
      '3': 12,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'probeOnConnect'
    },
    {
      '1': 'timeout_seconds',
      '3': 13,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'timeoutSeconds'
    },
    {
      '1': 'max_context_tokens',
      '3': 14,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'maxContextTokens'
    },
  ],
};

/// Descriptor for `AiChatLLMProviderAdmin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatLLMProviderAdminDescriptor = $convert.base64Decode(
    'ChZBaUNoYXRMTE1Qcm92aWRlckFkbWluEjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L'
    '7Qv9C40YHQsNC90LjQtVICaWQSNAoEbmFtZRgCIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/Q'
    'uNGB0LDQvdC40LVSBG5hbWUSNAoEa2luZBgDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSBGtpbmQSPAoIY2F0ZWdvcnkYBCABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/'
    '0LjRgdCw0L3QuNC1UghjYXRlZ29yeRI4CgZhY3RpdmUYBSABKAhCIJJBHTIb0YHQutC+0YDQvi'
    'DQvtC/0LjRgdCw0L3QuNC1UgZhY3RpdmUSOwoIYmFzZV91cmwYBiABKAlCIJJBHTIb0YHQutC+'
    '0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdiYXNlVXJsEjkKB2FwaV9rZXkYByABKAlCIJJBHTIb0Y'
    'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZhcGlLZXkSOwoIYXV0aF91cmwYCCABKAlCIJJB'
    'HTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdhdXRoVXJsEjYKBXNjb3BlGAkgASgJQi'
    'CSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFc2NvcGUSPQoJZm9sZGVyX2lkGAog'
    'ASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIIZm9sZGVySWQSUgoUaW5zZW'
    'N1cmVfc2tpcF92ZXJpZnkYCyABKAhCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1'
    'UhJpbnNlY3VyZVNraXBWZXJpZnkSSgoQcHJvYmVfb25fY29ubmVjdBgMIAEoCEIgkkEdMhvRgd'
    'C60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSDnByb2JlT25Db25uZWN0EkkKD3RpbWVvdXRfc2Vj'
    'b25kcxgNIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSDnRpbWVvdXRTZW'
    'NvbmRzEk4KEm1heF9jb250ZXh0X3Rva2VucxgOIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/Q'
    'uNGB0LDQvdC40LVSEG1heENvbnRleHRUb2tlbnM=');

@$core.Deprecated('Use aiChatListLLMProvidersAdminRequestDescriptor instead')
const AiChatListLLMProvidersAdminRequest$json = {
  '1': 'AiChatListLLMProvidersAdminRequest',
};

/// Descriptor for `AiChatListLLMProvidersAdminRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatListLLMProvidersAdminRequestDescriptor =
    $convert.base64Decode('CiJBaUNoYXRMaXN0TExNUHJvdmlkZXJzQWRtaW5SZXF1ZXN0');

@$core.Deprecated('Use aiChatListLLMProvidersAdminResponseDescriptor instead')
const AiChatListLLMProvidersAdminResponse$json = {
  '1': 'AiChatListLLMProvidersAdminResponse',
  '2': [
    {
      '1': 'providers',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.AiChatLLMProviderAdmin',
      '8': {},
      '10': 'providers'
    },
  ],
};

/// Descriptor for `AiChatListLLMProvidersAdminResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatListLLMProvidersAdminResponseDescriptor =
    $convert.base64Decode(
        'CiNBaUNoYXRMaXN0TExNUHJvdmlkZXJzQWRtaW5SZXNwb25zZRJdCglwcm92aWRlcnMYASADKA'
        'syHS5rYXRhbi5BaUNoYXRMTE1Qcm92aWRlckFkbWluQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C4'
        '0YHQsNC90LjQtVIJcHJvdmlkZXJz');

@$core.Deprecated('Use aiChatGetLLMProviderAdminResponseDescriptor instead')
const AiChatGetLLMProviderAdminResponse$json = {
  '1': 'AiChatGetLLMProviderAdminResponse',
  '2': [
    {
      '1': 'provider',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.AiChatLLMProviderAdmin',
      '8': {},
      '10': 'provider'
    },
  ],
};

/// Descriptor for `AiChatGetLLMProviderAdminResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatGetLLMProviderAdminResponseDescriptor =
    $convert.base64Decode(
        'CiFBaUNoYXRHZXRMTE1Qcm92aWRlckFkbWluUmVzcG9uc2USWwoIcHJvdmlkZXIYASABKAsyHS'
        '5rYXRhbi5BaUNoYXRMTE1Qcm92aWRlckFkbWluQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQ'
        'sNC90LjQtVIIcHJvdmlkZXI=');

@$core.Deprecated('Use aiChatUpdateLLMProviderAdminRequestDescriptor instead')
const AiChatUpdateLLMProviderAdminRequest$json = {
  '1': 'AiChatUpdateLLMProviderAdminRequest',
  '2': [
    {
      '1': 'provider',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.AiChatLLMProviderAdmin',
      '8': {},
      '10': 'provider'
    },
  ],
};

/// Descriptor for `AiChatUpdateLLMProviderAdminRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatUpdateLLMProviderAdminRequestDescriptor =
    $convert.base64Decode(
        'CiNBaUNoYXRVcGRhdGVMTE1Qcm92aWRlckFkbWluUmVxdWVzdBJbCghwcm92aWRlchgBIAEoCz'
        'IdLmthdGFuLkFpQ2hhdExMTVByb3ZpZGVyQWRtaW5CIJJBHTIb0YHQutC+0YDQviDQvtC/0LjR'
        'gdCw0L3QuNC1Ughwcm92aWRlcg==');

@$core.Deprecated('Use aiChatProbeLLMProviderAdminRequestDescriptor instead')
const AiChatProbeLLMProviderAdminRequest$json = {
  '1': 'AiChatProbeLLMProviderAdminRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'kind'},
    {'1': 'active', '3': 3, '4': 1, '5': 8, '8': {}, '10': 'active'},
    {'1': 'base_url', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'baseUrl'},
    {'1': 'api_key', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'apiKey'},
    {'1': 'auth_url', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'authUrl'},
    {'1': 'scope', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'scope'},
    {'1': 'folder_id', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'folderId'},
    {
      '1': 'insecure_skip_verify',
      '3': 9,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'insecureSkipVerify'
    },
    {
      '1': 'probe_on_connect',
      '3': 10,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'probeOnConnect'
    },
    {
      '1': 'timeout_seconds',
      '3': 11,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'timeoutSeconds'
    },
    {
      '1': 'max_context_tokens',
      '3': 12,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'maxContextTokens'
    },
  ],
};

/// Descriptor for `AiChatProbeLLMProviderAdminRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatProbeLLMProviderAdminRequestDescriptor = $convert.base64Decode(
    'CiJBaUNoYXRQcm9iZUxMTVByb3ZpZGVyQWRtaW5SZXF1ZXN0EjQKBG5hbWUYASABKAlCIJJBHT'
    'Ib0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgRuYW1lEjQKBGtpbmQYAiABKAlCIJJBHTIb'
    '0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgRraW5kEjgKBmFjdGl2ZRgDIAEoCEIgkkEdMh'
    'vRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBmFjdGl2ZRI7CghiYXNlX3VybBgEIAEoCUIg'
    'kkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSB2Jhc2VVcmwSOQoHYXBpX2tleRgFIA'
    'EoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBmFwaUtleRI7CghhdXRoX3Vy'
    'bBgGIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSB2F1dGhVcmwSNgoFc2'
    'NvcGUYByABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgVzY29wZRI9Cglm'
    'b2xkZXJfaWQYCCABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ughmb2xkZX'
    'JJZBJSChRpbnNlY3VyZV9za2lwX3ZlcmlmeRgJIAEoCEIgkkEdMhvRgdC60L7RgNC+INC+0L/Q'
    'uNGB0LDQvdC40LVSEmluc2VjdXJlU2tpcFZlcmlmeRJKChBwcm9iZV9vbl9jb25uZWN0GAogAS'
    'gIQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIOcHJvYmVPbkNvbm5lY3QSSQoP'
    'dGltZW91dF9zZWNvbmRzGAsgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtV'
    'IOdGltZW91dFNlY29uZHMSTgoSbWF4X2NvbnRleHRfdG9rZW5zGAwgASgFQiCSQR0yG9GB0LrQ'
    'vtGA0L4g0L7Qv9C40YHQsNC90LjQtVIQbWF4Q29udGV4dFRva2Vucw==');

@$core.Deprecated('Use aiChatProbeLLMProviderAdminResponseDescriptor instead')
const AiChatProbeLLMProviderAdminResponse$json = {
  '1': 'AiChatProbeLLMProviderAdminResponse',
  '2': [
    {'1': 'connected', '3': 1, '4': 1, '5': 8, '8': {}, '10': 'connected'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'message'},
  ],
};

/// Descriptor for `AiChatProbeLLMProviderAdminResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatProbeLLMProviderAdminResponseDescriptor =
    $convert.base64Decode(
        'CiNBaUNoYXRQcm9iZUxMTVByb3ZpZGVyQWRtaW5SZXNwb25zZRI+Cgljb25uZWN0ZWQYASABKA'
        'hCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugljb25uZWN0ZWQSOgoHbWVzc2Fn'
        'ZRgCIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSB21lc3NhZ2U=');

@$core.Deprecated('Use aiChatForkSessionRequestDescriptor instead')
const AiChatForkSessionRequest$json = {
  '1': 'AiChatForkSessionRequest',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
  ],
};

/// Descriptor for `AiChatForkSessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatForkSessionRequestDescriptor =
    $convert.base64Decode(
        'ChhBaUNoYXRGb3JrU2Vzc2lvblJlcXVlc3QSPwoKc2Vzc2lvbl9pZBgBIAEoA0IgkkEdMhvRgd'
        'C60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXNlc3Npb25JZA==');

@$core.Deprecated('Use aiChatObjectReportRequestDescriptor instead')
const AiChatObjectReportRequest$json = {
  '1': 'AiChatObjectReportRequest',
  '2': [
    {'1': 'kind', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'kind'},
    {'1': 'object_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'objectId'},
    {'1': 'format', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'format'},
    {'1': 'session_id', '3': 4, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {
      '1': 'include_integrations',
      '3': 5,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'includeIntegrations'
    },
  ],
};

/// Descriptor for `AiChatObjectReportRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatObjectReportRequestDescriptor = $convert.base64Decode(
    'ChlBaUNoYXRPYmplY3RSZXBvcnRSZXF1ZXN0EjQKBGtpbmQYASABKAlCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgRraW5kEj0KCW9iamVjdF9pZBgCIAEoA0IgkkEdMhvRgdC6'
    '0L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCG9iamVjdElkEjgKBmZvcm1hdBgDIAEoCUIgkkEdMh'
    'vRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBmZvcm1hdBI/CgpzZXNzaW9uX2lkGAQgASgD'
    'QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJc2Vzc2lvbklkElMKFGluY2x1ZG'
    'VfaW50ZWdyYXRpb25zGAUgASgIQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIT'
    'aW5jbHVkZUludGVncmF0aW9ucw==');

@$core.Deprecated('Use aiChatObjectReportResponseDescriptor instead')
const AiChatObjectReportResponse$json = {
  '1': 'AiChatObjectReportResponse',
  '2': [
    {'1': 'markdown', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'markdown'},
    {'1': 'docx', '3': 2, '4': 1, '5': 12, '8': {}, '10': 'docx'},
    {'1': 'filename', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'filename'},
    {'1': 'file_id', '3': 4, '4': 1, '5': 3, '8': {}, '10': 'fileId'},
  ],
};

/// Descriptor for `AiChatObjectReportResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatObjectReportResponseDescriptor = $convert.base64Decode(
    'ChpBaUNoYXRPYmplY3RSZXBvcnRSZXNwb25zZRI8CghtYXJrZG93bhgBIAEoCUIgkkEdMhvRgd'
    'C60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCG1hcmtkb3duEjQKBGRvY3gYAiABKAxCIJJBHTIb'
    '0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgRkb2N4EjwKCGZpbGVuYW1lGAMgASgJQiCSQR'
    '0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIIZmlsZW5hbWUSOQoHZmlsZV9pZBgEIAEo'
    'A0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBmZpbGVJZA==');

@$core.Deprecated('Use aiChatAskSyncRequestDescriptor instead')
const AiChatAskSyncRequest$json = {
  '1': 'AiChatAskSyncRequest',
  '2': [
    {'1': 'user_message', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'userMessage'},
    {
      '1': 'map_context',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.katan.AiChatMapContext',
      '8': {},
      '9': 0,
      '10': 'mapContext',
      '17': true
    },
    {'1': 'session_id', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {'1': 'template_id', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'templateId'},
    {'1': 'title', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {
      '1': 'timeout_seconds',
      '3': 6,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'timeoutSeconds'
    },
  ],
  '8': [
    {'1': '_map_context'},
  ],
};

/// Descriptor for `AiChatAskSyncRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatAskSyncRequestDescriptor = $convert.base64Decode(
    'ChRBaUNoYXRBc2tTeW5jUmVxdWVzdBJDCgx1c2VyX21lc3NhZ2UYASABKAlCIJJBHTIb0YHQut'
    'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugt1c2VyTWVzc2FnZRJfCgttYXBfY29udGV4dBgCIAEo'
    'CzIXLmthdGFuLkFpQ2hhdE1hcENvbnRleHRCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L'
    '3QuNC1SABSCm1hcENvbnRleHSIAQESPwoKc2Vzc2lvbl9pZBgDIAEoA0IgkkEdMhvRgdC60L7R'
    'gNC+INC+0L/QuNGB0LDQvdC40LVSCXNlc3Npb25JZBJBCgt0ZW1wbGF0ZV9pZBgEIAEoCUIgkk'
    'EdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCnRlbXBsYXRlSWQSNgoFdGl0bGUYBSAB'
    'KAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgV0aXRsZRJJCg90aW1lb3V0X3'
    'NlY29uZHMYBiABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ug50aW1lb3V0'
    'U2Vjb25kc0IOCgxfbWFwX2NvbnRleHQ=');

@$core.Deprecated('Use aiChatAskSyncResponseDescriptor instead')
const AiChatAskSyncResponse$json = {
  '1': 'AiChatAskSyncResponse',
  '2': [
    {'1': 'session_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {
      '1': 'session_title',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'sessionTitle'
    },
    {
      '1': 'assistant_message_id',
      '3': 3,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'assistantMessageId'
    },
    {
      '1': 'assistant_text',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'assistantText'
    },
  ],
};

/// Descriptor for `AiChatAskSyncResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatAskSyncResponseDescriptor = $convert.base64Decode(
    'ChVBaUNoYXRBc2tTeW5jUmVzcG9uc2USPwoKc2Vzc2lvbl9pZBgBIAEoA0IgkkEdMhvRgdC60L'
    '7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXNlc3Npb25JZBJFCg1zZXNzaW9uX3RpdGxlGAIgASgJ'
    'QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIMc2Vzc2lvblRpdGxlElIKFGFzc2'
    'lzdGFudF9tZXNzYWdlX2lkGAMgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
    'tVISYXNzaXN0YW50TWVzc2FnZUlkEkcKDmFzc2lzdGFudF90ZXh0GAQgASgJQiCSQR0yG9GB0L'
    'rQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVINYXNzaXN0YW50VGV4dA==');

@$core.Deprecated('Use aiChatEnqueueAskRequestDescriptor instead')
const AiChatEnqueueAskRequest$json = {
  '1': 'AiChatEnqueueAskRequest',
  '2': [
    {'1': 'user_message', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'userMessage'},
    {
      '1': 'map_context',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.katan.AiChatMapContext',
      '8': {},
      '9': 0,
      '10': 'mapContext',
      '17': true
    },
    {'1': 'session_id', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {'1': 'template_id', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'templateId'},
    {'1': 'title', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {
      '1': 'timeout_seconds',
      '3': 6,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'timeoutSeconds'
    },
  ],
  '8': [
    {'1': '_map_context'},
  ],
};

/// Descriptor for `AiChatEnqueueAskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatEnqueueAskRequestDescriptor = $convert.base64Decode(
    'ChdBaUNoYXRFbnF1ZXVlQXNrUmVxdWVzdBJDCgx1c2VyX21lc3NhZ2UYASABKAlCIJJBHTIb0Y'
    'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugt1c2VyTWVzc2FnZRJfCgttYXBfY29udGV4dBgC'
    'IAEoCzIXLmthdGFuLkFpQ2hhdE1hcENvbnRleHRCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgd'
    'Cw0L3QuNC1SABSCm1hcENvbnRleHSIAQESPwoKc2Vzc2lvbl9pZBgDIAEoA0IgkkEdMhvRgdC6'
    '0L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXNlc3Npb25JZBJBCgt0ZW1wbGF0ZV9pZBgEIAEoCU'
    'IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCnRlbXBsYXRlSWQSNgoFdGl0bGUY'
    'BSABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgV0aXRsZRJJCg90aW1lb3'
    'V0X3NlY29uZHMYBiABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ug50aW1l'
    'b3V0U2Vjb25kc0IOCgxfbWFwX2NvbnRleHQ=');

@$core.Deprecated('Use aiChatEnqueueAskResponseDescriptor instead')
const AiChatEnqueueAskResponse$json = {
  '1': 'AiChatEnqueueAskResponse',
  '2': [
    {'1': 'job_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'jobId'},
  ],
};

/// Descriptor for `AiChatEnqueueAskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatEnqueueAskResponseDescriptor =
    $convert.base64Decode(
        'ChhBaUNoYXRFbnF1ZXVlQXNrUmVzcG9uc2USNwoGam9iX2lkGAEgASgDQiCSQR0yG9GB0LrQvt'
        'GA0L4g0L7Qv9C40YHQsNC90LjQtVIFam9iSWQ=');

@$core.Deprecated('Use aiChatGetBackgroundAskStatusRequestDescriptor instead')
const AiChatGetBackgroundAskStatusRequest$json = {
  '1': 'AiChatGetBackgroundAskStatusRequest',
  '2': [
    {'1': 'job_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'jobId'},
  ],
};

/// Descriptor for `AiChatGetBackgroundAskStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatGetBackgroundAskStatusRequestDescriptor =
    $convert.base64Decode(
        'CiNBaUNoYXRHZXRCYWNrZ3JvdW5kQXNrU3RhdHVzUmVxdWVzdBI3CgZqb2JfaWQYASABKANCIJ'
        'JBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgVqb2JJZA==');

@$core.Deprecated('Use aiChatGetBackgroundAskStatusResponseDescriptor instead')
const AiChatGetBackgroundAskStatusResponse$json = {
  '1': 'AiChatGetBackgroundAskStatusResponse',
  '2': [
    {'1': 'job_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'jobId'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {
      '1': 'assistant_message_id',
      '3': 4,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'assistantMessageId'
    },
    {
      '1': 'assistant_text',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'assistantText'
    },
    {'1': 'error', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'error'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 3, '8': {}, '10': 'createdAt'},
    {'1': 'finished_at', '3': 8, '4': 1, '5': 3, '8': {}, '10': 'finishedAt'},
    {'1': 'title', '3': 9, '4': 1, '5': 9, '8': {}, '10': 'title'},
  ],
};

/// Descriptor for `AiChatGetBackgroundAskStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatGetBackgroundAskStatusResponseDescriptor = $convert.base64Decode(
    'CiRBaUNoYXRHZXRCYWNrZ3JvdW5kQXNrU3RhdHVzUmVzcG9uc2USNwoGam9iX2lkGAEgASgDQi'
    'CSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFam9iSWQSOAoGc3RhdHVzGAIgASgJ'
    'QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGc3RhdHVzEj8KCnNlc3Npb25faW'
    'QYAyABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UglzZXNzaW9uSWQSUgoU'
    'YXNzaXN0YW50X21lc3NhZ2VfaWQYBCABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L'
    '3QuNC1UhJhc3Npc3RhbnRNZXNzYWdlSWQSRwoOYXNzaXN0YW50X3RleHQYBSABKAlCIJJBHTIb'
    '0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ug1hc3Npc3RhbnRUZXh0EjYKBWVycm9yGAYgAS'
    'gJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFZXJyb3ISMwoKY3JlYXRlZF9h'
    'dBgHIAEoA0IUkkERMg91bml4INCy0YDQtdC80Y9SCWNyZWF0ZWRBdBI1CgtmaW5pc2hlZF9hdB'
    'gIIAEoA0IUkkERMg91bml4INCy0YDQtdC80Y9SCmZpbmlzaGVkQXQSNgoFdGl0bGUYCSABKAlC'
    'IJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgV0aXRsZQ==');

@$core.Deprecated('Use aiChatListBackgroundJobsRequestDescriptor instead')
const AiChatListBackgroundJobsRequest$json = {
  '1': 'AiChatListBackgroundJobsRequest',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'limit', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'limit'},
  ],
};

/// Descriptor for `AiChatListBackgroundJobsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatListBackgroundJobsRequestDescriptor =
    $convert.base64Decode(
        'Ch9BaUNoYXRMaXN0QmFja2dyb3VuZEpvYnNSZXF1ZXN0EkIKBnN0YXR1cxgBIAEoCUIqkkEnMi'
        'VwZW5kaW5nfGRvbmV8ZmFpbGVkINC40LvQuCDQv9GD0YHRgtC+UgZzdGF0dXMSPAoFbGltaXQY'
        'AiABKAVCJpJBIzIhMS0yMDAsINC/0L4g0YPQvNC+0LvRh9Cw0L3QuNGOIDUwUgVsaW1pdA==');

@$core.Deprecated('Use aiChatBackgroundJobItemDescriptor instead')
const AiChatBackgroundJobItem$json = {
  '1': 'AiChatBackgroundJobItem',
  '2': [
    {'1': 'job_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'jobId'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'session_id', '3': 4, '4': 1, '5': 3, '8': {}, '10': 'sessionId'},
    {
      '1': 'assistant_message_id',
      '3': 5,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'assistantMessageId'
    },
    {'1': 'error', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'error'},
    {'1': 'created_at', '3': 7, '4': 1, '5': 3, '8': {}, '10': 'createdAt'},
    {'1': 'finished_at', '3': 8, '4': 1, '5': 3, '8': {}, '10': 'finishedAt'},
  ],
};

/// Descriptor for `AiChatBackgroundJobItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatBackgroundJobItemDescriptor = $convert.base64Decode(
    'ChdBaUNoYXRCYWNrZ3JvdW5kSm9iSXRlbRI3CgZqb2JfaWQYASABKANCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgVqb2JJZBI4CgZzdGF0dXMYAiABKAlCIJJBHTIb0YHQutC+'
    '0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZzdGF0dXMSNgoFdGl0bGUYAyABKAlCIJJBHTIb0YHQut'
    'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgV0aXRsZRI/CgpzZXNzaW9uX2lkGAQgASgDQiCSQR0y'
    'G9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJc2Vzc2lvbklkElIKFGFzc2lzdGFudF9tZX'
    'NzYWdlX2lkGAUgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVISYXNzaXN0'
    'YW50TWVzc2FnZUlkEjYKBWVycm9yGAYgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsN'
    'C90LjQtVIFZXJyb3ISMwoKY3JlYXRlZF9hdBgHIAEoA0IUkkERMg91bml4INCy0YDQtdC80Y9S'
    'CWNyZWF0ZWRBdBI1CgtmaW5pc2hlZF9hdBgIIAEoA0IUkkERMg91bml4INCy0YDQtdC80Y9SCm'
    'ZpbmlzaGVkQXQ=');

@$core.Deprecated('Use aiChatListBackgroundJobsResponseDescriptor instead')
const AiChatListBackgroundJobsResponse$json = {
  '1': 'AiChatListBackgroundJobsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.AiChatBackgroundJobItem',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `AiChatListBackgroundJobsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatListBackgroundJobsResponseDescriptor =
    $convert.base64Decode(
        'CiBBaUNoYXRMaXN0QmFja2dyb3VuZEpvYnNSZXNwb25zZRJWCgVpdGVtcxgBIAMoCzIeLmthdG'
        'FuLkFpQ2hhdEJhY2tncm91bmRKb2JJdGVtQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC9'
        '0LjQtVIFaXRlbXM=');

@$core.Deprecated(
    'Use aiChatGetTaskChecklistSuggestionsRequestDescriptor instead')
const AiChatGetTaskChecklistSuggestionsRequest$json = {
  '1': 'AiChatGetTaskChecklistSuggestionsRequest',
  '2': [
    {'1': 'task_type', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'taskType'},
  ],
};

/// Descriptor for `AiChatGetTaskChecklistSuggestionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aiChatGetTaskChecklistSuggestionsRequestDescriptor =
    $convert.base64Decode(
        'CihBaUNoYXRHZXRUYXNrQ2hlY2tsaXN0U3VnZ2VzdGlvbnNSZXF1ZXN0Ej0KCXRhc2tfdHlwZR'
        'gBIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCHRhc2tUeXBl');

@$core.Deprecated(
    'Use aiChatGetTaskChecklistSuggestionsResponseDescriptor instead')
const AiChatGetTaskChecklistSuggestionsResponse$json = {
  '1': 'AiChatGetTaskChecklistSuggestionsResponse',
  '2': [
    {'1': 'task_type', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'taskType'},
    {'1': 'items', '3': 2, '4': 3, '5': 9, '8': {}, '10': 'items'},
  ],
};

/// Descriptor for `AiChatGetTaskChecklistSuggestionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List
    aiChatGetTaskChecklistSuggestionsResponseDescriptor = $convert.base64Decode(
        'CilBaUNoYXRHZXRUYXNrQ2hlY2tsaXN0U3VnZ2VzdGlvbnNSZXNwb25zZRI9Cgl0YXNrX3R5cG'
        'UYASABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugh0YXNrVHlwZRI2CgVp'
        'dGVtcxgCIAMoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBWl0ZW1z');
