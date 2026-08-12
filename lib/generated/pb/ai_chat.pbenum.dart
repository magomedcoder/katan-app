// This is a generated file - do not edit.
//
// Generated from ai_chat.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AiChatChunkKind extends $pb.ProtobufEnum {
  static const AiChatChunkKind AI_CHAT_CHUNK_TEXT =
      AiChatChunkKind._(0, _omitEnumNames ? '' : 'AI_CHAT_CHUNK_TEXT');
  static const AiChatChunkKind AI_CHAT_CHUNK_REASONING =
      AiChatChunkKind._(1, _omitEnumNames ? '' : 'AI_CHAT_CHUNK_REASONING');
  static const AiChatChunkKind AI_CHAT_CHUNK_NOTICE =
      AiChatChunkKind._(2, _omitEnumNames ? '' : 'AI_CHAT_CHUNK_NOTICE');
  static const AiChatChunkKind AI_CHAT_CHUNK_TOOL_STATUS =
      AiChatChunkKind._(3, _omitEnumNames ? '' : 'AI_CHAT_CHUNK_TOOL_STATUS');

  static const $core.List<AiChatChunkKind> values = <AiChatChunkKind>[
    AI_CHAT_CHUNK_TEXT,
    AI_CHAT_CHUNK_REASONING,
    AI_CHAT_CHUNK_NOTICE,
    AI_CHAT_CHUNK_TOOL_STATUS,
  ];

  static final $core.List<AiChatChunkKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static AiChatChunkKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AiChatChunkKind._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
