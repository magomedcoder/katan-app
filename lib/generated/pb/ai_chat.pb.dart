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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'ai_chat.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'ai_chat.pbenum.dart';

class AiChatSessionTemplate extends $pb.GeneratedMessage {
  factory AiChatSessionTemplate({
    $core.String? id,
    $core.String? title,
    $core.String? description,
    $core.String? systemPrompt,
    $core.bool? integrationsEnabled,
    $core.bool? mcpEnabled,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    if (description != null) result.description = description;
    if (systemPrompt != null) result.systemPrompt = systemPrompt;
    if (integrationsEnabled != null)
      result.integrationsEnabled = integrationsEnabled;
    if (mcpEnabled != null) result.mcpEnabled = mcpEnabled;
    return result;
  }

  AiChatSessionTemplate._();

  factory AiChatSessionTemplate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatSessionTemplate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatSessionTemplate',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'systemPrompt')
    ..aOB(5, _omitFieldNames ? '' : 'integrationsEnabled')
    ..aOB(6, _omitFieldNames ? '' : 'mcpEnabled')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatSessionTemplate clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatSessionTemplate copyWith(
          void Function(AiChatSessionTemplate) updates) =>
      super.copyWith((message) => updates(message as AiChatSessionTemplate))
          as AiChatSessionTemplate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatSessionTemplate create() => AiChatSessionTemplate._();
  @$core.override
  AiChatSessionTemplate createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatSessionTemplate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatSessionTemplate>(create);
  static AiChatSessionTemplate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get systemPrompt => $_getSZ(3);
  @$pb.TagNumber(4)
  set systemPrompt($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSystemPrompt() => $_has(3);
  @$pb.TagNumber(4)
  void clearSystemPrompt() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get integrationsEnabled => $_getBF(4);
  @$pb.TagNumber(5)
  set integrationsEnabled($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIntegrationsEnabled() => $_has(4);
  @$pb.TagNumber(5)
  void clearIntegrationsEnabled() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get mcpEnabled => $_getBF(5);
  @$pb.TagNumber(6)
  set mcpEnabled($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMcpEnabled() => $_has(5);
  @$pb.TagNumber(6)
  void clearMcpEnabled() => $_clearField(6);
}

class AiChatQuickPrompt extends $pb.GeneratedMessage {
  factory AiChatQuickPrompt({
    $core.String? id,
    $core.String? label,
    $core.String? text,
    $core.bool? integrationsOnly,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (label != null) result.label = label;
    if (text != null) result.text = text;
    if (integrationsOnly != null) result.integrationsOnly = integrationsOnly;
    return result;
  }

  AiChatQuickPrompt._();

  factory AiChatQuickPrompt.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatQuickPrompt.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatQuickPrompt',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'label')
    ..aOS(3, _omitFieldNames ? '' : 'text')
    ..aOB(4, _omitFieldNames ? '' : 'integrationsOnly')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatQuickPrompt clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatQuickPrompt copyWith(void Function(AiChatQuickPrompt) updates) =>
      super.copyWith((message) => updates(message as AiChatQuickPrompt))
          as AiChatQuickPrompt;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatQuickPrompt create() => AiChatQuickPrompt._();
  @$core.override
  AiChatQuickPrompt createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatQuickPrompt getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatQuickPrompt>(create);
  static AiChatQuickPrompt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get label => $_getSZ(1);
  @$pb.TagNumber(2)
  set label($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabel() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get text => $_getSZ(2);
  @$pb.TagNumber(3)
  set text($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get integrationsOnly => $_getBF(3);
  @$pb.TagNumber(4)
  set integrationsOnly($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIntegrationsOnly() => $_has(3);
  @$pb.TagNumber(4)
  void clearIntegrationsOnly() => $_clearField(4);
}

class AiChatMapContext extends $pb.GeneratedMessage {
  factory AiChatMapContext({
    $core.String? kind,
    $fixnum.Int64? objectId,
    $core.String? title,
    $core.String? path,
    $core.String? summary,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (objectId != null) result.objectId = objectId;
    if (title != null) result.title = title;
    if (path != null) result.path = path;
    if (summary != null) result.summary = summary;
    return result;
  }

  AiChatMapContext._();

  factory AiChatMapContext.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatMapContext.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatMapContext',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kind')
    ..aInt64(2, _omitFieldNames ? '' : 'objectId')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'path')
    ..aOS(5, _omitFieldNames ? '' : 'summary')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatMapContext clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatMapContext copyWith(void Function(AiChatMapContext) updates) =>
      super.copyWith((message) => updates(message as AiChatMapContext))
          as AiChatMapContext;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatMapContext create() => AiChatMapContext._();
  @$core.override
  AiChatMapContext createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatMapContext getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatMapContext>(create);
  static AiChatMapContext? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kind => $_getSZ(0);
  @$pb.TagNumber(1)
  set kind($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get objectId => $_getI64(1);
  @$pb.TagNumber(2)
  set objectId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasObjectId() => $_has(1);
  @$pb.TagNumber(2)
  void clearObjectId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get path => $_getSZ(3);
  @$pb.TagNumber(4)
  set path($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearPath() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get summary => $_getSZ(4);
  @$pb.TagNumber(5)
  set summary($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSummary() => $_has(4);
  @$pb.TagNumber(5)
  void clearSummary() => $_clearField(5);
}

class AiChatSession extends $pb.GeneratedMessage {
  factory AiChatSession({
    $fixnum.Int64? id,
    $core.String? title,
    $fixnum.Int64? updatedAt,
    $core.String? systemPrompt,
    $core.double? temperature,
    $core.double? topP,
    $core.int? topK,
    $core.int? timeoutSeconds,
    $core.Iterable<$core.String>? stopSequences,
    $core.bool? modelReasoningEnabled,
    $core.bool? toolsEnabled,
    $core.bool? webSearchEnabled,
    $core.String? webSearchProvider,
    $core.bool? mcpEnabled,
    $core.Iterable<$fixnum.Int64>? mcpServerIds,
    AiChatMapContext? mapContext,
    $core.bool? integrationsEnabled,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    if (updatedAt != null) result.updatedAt = updatedAt;
    if (systemPrompt != null) result.systemPrompt = systemPrompt;
    if (temperature != null) result.temperature = temperature;
    if (topP != null) result.topP = topP;
    if (topK != null) result.topK = topK;
    if (timeoutSeconds != null) result.timeoutSeconds = timeoutSeconds;
    if (stopSequences != null) result.stopSequences.addAll(stopSequences);
    if (modelReasoningEnabled != null)
      result.modelReasoningEnabled = modelReasoningEnabled;
    if (toolsEnabled != null) result.toolsEnabled = toolsEnabled;
    if (webSearchEnabled != null) result.webSearchEnabled = webSearchEnabled;
    if (webSearchProvider != null) result.webSearchProvider = webSearchProvider;
    if (mcpEnabled != null) result.mcpEnabled = mcpEnabled;
    if (mcpServerIds != null) result.mcpServerIds.addAll(mcpServerIds);
    if (mapContext != null) result.mapContext = mapContext;
    if (integrationsEnabled != null)
      result.integrationsEnabled = integrationsEnabled;
    return result;
  }

  AiChatSession._();

  factory AiChatSession.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatSession.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatSession',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aInt64(3, _omitFieldNames ? '' : 'updatedAt')
    ..aOS(4, _omitFieldNames ? '' : 'systemPrompt')
    ..aD(5, _omitFieldNames ? '' : 'temperature', fieldType: $pb.PbFieldType.OF)
    ..aD(6, _omitFieldNames ? '' : 'topP', fieldType: $pb.PbFieldType.OF)
    ..aI(7, _omitFieldNames ? '' : 'topK')
    ..aI(8, _omitFieldNames ? '' : 'timeoutSeconds')
    ..pPS(9, _omitFieldNames ? '' : 'stopSequences')
    ..aOB(10, _omitFieldNames ? '' : 'modelReasoningEnabled')
    ..aOB(11, _omitFieldNames ? '' : 'toolsEnabled')
    ..aOB(12, _omitFieldNames ? '' : 'webSearchEnabled')
    ..aOS(13, _omitFieldNames ? '' : 'webSearchProvider')
    ..aOB(14, _omitFieldNames ? '' : 'mcpEnabled')
    ..p<$fixnum.Int64>(
        15, _omitFieldNames ? '' : 'mcpServerIds', $pb.PbFieldType.K6)
    ..aOM<AiChatMapContext>(16, _omitFieldNames ? '' : 'mapContext',
        subBuilder: AiChatMapContext.create)
    ..aOB(17, _omitFieldNames ? '' : 'integrationsEnabled')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatSession clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatSession copyWith(void Function(AiChatSession) updates) =>
      super.copyWith((message) => updates(message as AiChatSession))
          as AiChatSession;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatSession create() => AiChatSession._();
  @$core.override
  AiChatSession createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatSession getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatSession>(create);
  static AiChatSession? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get updatedAt => $_getI64(2);
  @$pb.TagNumber(3)
  set updatedAt($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUpdatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedAt() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get systemPrompt => $_getSZ(3);
  @$pb.TagNumber(4)
  set systemPrompt($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSystemPrompt() => $_has(3);
  @$pb.TagNumber(4)
  void clearSystemPrompt() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get temperature => $_getN(4);
  @$pb.TagNumber(5)
  set temperature($core.double value) => $_setFloat(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTemperature() => $_has(4);
  @$pb.TagNumber(5)
  void clearTemperature() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get topP => $_getN(5);
  @$pb.TagNumber(6)
  set topP($core.double value) => $_setFloat(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTopP() => $_has(5);
  @$pb.TagNumber(6)
  void clearTopP() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get topK => $_getIZ(6);
  @$pb.TagNumber(7)
  set topK($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTopK() => $_has(6);
  @$pb.TagNumber(7)
  void clearTopK() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get timeoutSeconds => $_getIZ(7);
  @$pb.TagNumber(8)
  set timeoutSeconds($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTimeoutSeconds() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimeoutSeconds() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$core.String> get stopSequences => $_getList(8);

  @$pb.TagNumber(10)
  $core.bool get modelReasoningEnabled => $_getBF(9);
  @$pb.TagNumber(10)
  set modelReasoningEnabled($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasModelReasoningEnabled() => $_has(9);
  @$pb.TagNumber(10)
  void clearModelReasoningEnabled() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get toolsEnabled => $_getBF(10);
  @$pb.TagNumber(11)
  set toolsEnabled($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasToolsEnabled() => $_has(10);
  @$pb.TagNumber(11)
  void clearToolsEnabled() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get webSearchEnabled => $_getBF(11);
  @$pb.TagNumber(12)
  set webSearchEnabled($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasWebSearchEnabled() => $_has(11);
  @$pb.TagNumber(12)
  void clearWebSearchEnabled() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get webSearchProvider => $_getSZ(12);
  @$pb.TagNumber(13)
  set webSearchProvider($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasWebSearchProvider() => $_has(12);
  @$pb.TagNumber(13)
  void clearWebSearchProvider() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.bool get mcpEnabled => $_getBF(13);
  @$pb.TagNumber(14)
  set mcpEnabled($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(14)
  $core.bool hasMcpEnabled() => $_has(13);
  @$pb.TagNumber(14)
  void clearMcpEnabled() => $_clearField(14);

  @$pb.TagNumber(15)
  $pb.PbList<$fixnum.Int64> get mcpServerIds => $_getList(14);

  @$pb.TagNumber(16)
  AiChatMapContext get mapContext => $_getN(15);
  @$pb.TagNumber(16)
  set mapContext(AiChatMapContext value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasMapContext() => $_has(15);
  @$pb.TagNumber(16)
  void clearMapContext() => $_clearField(16);
  @$pb.TagNumber(16)
  AiChatMapContext ensureMapContext() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.bool get integrationsEnabled => $_getBF(16);
  @$pb.TagNumber(17)
  set integrationsEnabled($core.bool value) => $_setBool(16, value);
  @$pb.TagNumber(17)
  $core.bool hasIntegrationsEnabled() => $_has(16);
  @$pb.TagNumber(17)
  void clearIntegrationsEnabled() => $_clearField(17);
}

class AiChatToolStep extends $pb.GeneratedMessage {
  factory AiChatToolStep({
    $core.String? displayName,
    $core.String? status,
    $core.String? category,
  }) {
    final result = create();
    if (displayName != null) result.displayName = displayName;
    if (status != null) result.status = status;
    if (category != null) result.category = category;
    return result;
  }

  AiChatToolStep._();

  factory AiChatToolStep.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatToolStep.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatToolStep',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'displayName')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOS(3, _omitFieldNames ? '' : 'category')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatToolStep clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatToolStep copyWith(void Function(AiChatToolStep) updates) =>
      super.copyWith((message) => updates(message as AiChatToolStep))
          as AiChatToolStep;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatToolStep create() => AiChatToolStep._();
  @$core.override
  AiChatToolStep createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatToolStep getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatToolStep>(create);
  static AiChatToolStep? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get displayName => $_getSZ(0);
  @$pb.TagNumber(1)
  set displayName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDisplayName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get category => $_getSZ(2);
  @$pb.TagNumber(3)
  set category($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCategory() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategory() => $_clearField(3);
}

class AiChatMessage extends $pb.GeneratedMessage {
  factory AiChatMessage({
    $fixnum.Int64? id,
    $core.String? role,
    $core.String? content,
    $core.String? reasoning,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? attachmentFileId,
    $core.String? attachmentName,
    $core.Iterable<AiChatToolStep>? toolSteps,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (role != null) result.role = role;
    if (content != null) result.content = content;
    if (reasoning != null) result.reasoning = reasoning;
    if (createdAt != null) result.createdAt = createdAt;
    if (attachmentFileId != null) result.attachmentFileId = attachmentFileId;
    if (attachmentName != null) result.attachmentName = attachmentName;
    if (toolSteps != null) result.toolSteps.addAll(toolSteps);
    return result;
  }

  AiChatMessage._();

  factory AiChatMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'role')
    ..aOS(3, _omitFieldNames ? '' : 'content')
    ..aOS(4, _omitFieldNames ? '' : 'reasoning')
    ..aInt64(5, _omitFieldNames ? '' : 'createdAt')
    ..aInt64(6, _omitFieldNames ? '' : 'attachmentFileId')
    ..aOS(7, _omitFieldNames ? '' : 'attachmentName')
    ..pPM<AiChatToolStep>(8, _omitFieldNames ? '' : 'toolSteps',
        subBuilder: AiChatToolStep.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatMessage copyWith(void Function(AiChatMessage) updates) =>
      super.copyWith((message) => updates(message as AiChatMessage))
          as AiChatMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatMessage create() => AiChatMessage._();
  @$core.override
  AiChatMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatMessage>(create);
  static AiChatMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get role => $_getSZ(1);
  @$pb.TagNumber(2)
  set role($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get content => $_getSZ(2);
  @$pb.TagNumber(3)
  set content($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get reasoning => $_getSZ(3);
  @$pb.TagNumber(4)
  set reasoning($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReasoning() => $_has(3);
  @$pb.TagNumber(4)
  void clearReasoning() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get attachmentFileId => $_getI64(5);
  @$pb.TagNumber(6)
  set attachmentFileId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAttachmentFileId() => $_has(5);
  @$pb.TagNumber(6)
  void clearAttachmentFileId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get attachmentName => $_getSZ(6);
  @$pb.TagNumber(7)
  set attachmentName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAttachmentName() => $_has(6);
  @$pb.TagNumber(7)
  void clearAttachmentName() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<AiChatToolStep> get toolSteps => $_getList(7);
}

class AiChatSendRequest extends $pb.GeneratedMessage {
  factory AiChatSendRequest({
    $fixnum.Int64? sessionId,
    $core.String? userMessage,
    $core.Iterable<$fixnum.Int64>? attachmentFileIds,
    $core.bool? useFileRag,
    AiChatMapContext? mapContext,
    $core.int? fileRagTopK,
    $core.String? fileRagEmbedModel,
    $core.bool? fileRagForceVector,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (userMessage != null) result.userMessage = userMessage;
    if (attachmentFileIds != null)
      result.attachmentFileIds.addAll(attachmentFileIds);
    if (useFileRag != null) result.useFileRag = useFileRag;
    if (mapContext != null) result.mapContext = mapContext;
    if (fileRagTopK != null) result.fileRagTopK = fileRagTopK;
    if (fileRagEmbedModel != null) result.fileRagEmbedModel = fileRagEmbedModel;
    if (fileRagForceVector != null)
      result.fileRagForceVector = fileRagForceVector;
    return result;
  }

  AiChatSendRequest._();

  factory AiChatSendRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatSendRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatSendRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'userMessage')
    ..p<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'attachmentFileIds', $pb.PbFieldType.K6)
    ..aOB(4, _omitFieldNames ? '' : 'useFileRag')
    ..aOM<AiChatMapContext>(5, _omitFieldNames ? '' : 'mapContext',
        subBuilder: AiChatMapContext.create)
    ..aI(6, _omitFieldNames ? '' : 'fileRagTopK')
    ..aOS(7, _omitFieldNames ? '' : 'fileRagEmbedModel')
    ..aOB(8, _omitFieldNames ? '' : 'fileRagForceVector')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatSendRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatSendRequest copyWith(void Function(AiChatSendRequest) updates) =>
      super.copyWith((message) => updates(message as AiChatSendRequest))
          as AiChatSendRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatSendRequest create() => AiChatSendRequest._();
  @$core.override
  AiChatSendRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatSendRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatSendRequest>(create);
  static AiChatSendRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get userMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set userMessage($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserMessage() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$fixnum.Int64> get attachmentFileIds => $_getList(2);

  @$pb.TagNumber(4)
  $core.bool get useFileRag => $_getBF(3);
  @$pb.TagNumber(4)
  set useFileRag($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUseFileRag() => $_has(3);
  @$pb.TagNumber(4)
  void clearUseFileRag() => $_clearField(4);

  @$pb.TagNumber(5)
  AiChatMapContext get mapContext => $_getN(4);
  @$pb.TagNumber(5)
  set mapContext(AiChatMapContext value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasMapContext() => $_has(4);
  @$pb.TagNumber(5)
  void clearMapContext() => $_clearField(5);
  @$pb.TagNumber(5)
  AiChatMapContext ensureMapContext() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get fileRagTopK => $_getIZ(5);
  @$pb.TagNumber(6)
  set fileRagTopK($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFileRagTopK() => $_has(5);
  @$pb.TagNumber(6)
  void clearFileRagTopK() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get fileRagEmbedModel => $_getSZ(6);
  @$pb.TagNumber(7)
  set fileRagEmbedModel($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFileRagEmbedModel() => $_has(6);
  @$pb.TagNumber(7)
  void clearFileRagEmbedModel() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get fileRagForceVector => $_getBF(7);
  @$pb.TagNumber(8)
  set fileRagForceVector($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFileRagForceVector() => $_has(7);
  @$pb.TagNumber(8)
  void clearFileRagForceVector() => $_clearField(8);
}

class AiChatPutSessionFileRequest extends $pb.GeneratedMessage {
  factory AiChatPutSessionFileRequest({
    $fixnum.Int64? sessionId,
    $core.String? filename,
    $core.List<$core.int>? content,
    $core.int? ttlSeconds,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (filename != null) result.filename = filename;
    if (content != null) result.content = content;
    if (ttlSeconds != null) result.ttlSeconds = ttlSeconds;
    return result;
  }

  AiChatPutSessionFileRequest._();

  factory AiChatPutSessionFileRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatPutSessionFileRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatPutSessionFileRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'filename')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..aI(4, _omitFieldNames ? '' : 'ttlSeconds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatPutSessionFileRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatPutSessionFileRequest copyWith(
          void Function(AiChatPutSessionFileRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatPutSessionFileRequest))
          as AiChatPutSessionFileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatPutSessionFileRequest create() =>
      AiChatPutSessionFileRequest._();
  @$core.override
  AiChatPutSessionFileRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatPutSessionFileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatPutSessionFileRequest>(create);
  static AiChatPutSessionFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get content => $_getN(2);
  @$pb.TagNumber(3)
  set content($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get ttlSeconds => $_getIZ(3);
  @$pb.TagNumber(4)
  set ttlSeconds($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTtlSeconds() => $_has(3);
  @$pb.TagNumber(4)
  void clearTtlSeconds() => $_clearField(4);
}

class AiChatPutSessionFileResponse extends $pb.GeneratedMessage {
  factory AiChatPutSessionFileResponse({
    $fixnum.Int64? fileId,
  }) {
    final result = create();
    if (fileId != null) result.fileId = fileId;
    return result;
  }

  AiChatPutSessionFileResponse._();

  factory AiChatPutSessionFileResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatPutSessionFileResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatPutSessionFileResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'fileId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatPutSessionFileResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatPutSessionFileResponse copyWith(
          void Function(AiChatPutSessionFileResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatPutSessionFileResponse))
          as AiChatPutSessionFileResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatPutSessionFileResponse create() =>
      AiChatPutSessionFileResponse._();
  @$core.override
  AiChatPutSessionFileResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatPutSessionFileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatPutSessionFileResponse>(create);
  static AiChatPutSessionFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get fileId => $_getI64(0);
  @$pb.TagNumber(1)
  set fileId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileId() => $_clearField(1);
}

class AiChatGetSessionFileRequest extends $pb.GeneratedMessage {
  factory AiChatGetSessionFileRequest({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? fileId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (fileId != null) result.fileId = fileId;
    return result;
  }

  AiChatGetSessionFileRequest._();

  factory AiChatGetSessionFileRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetSessionFileRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetSessionFileRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'fileId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetSessionFileRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetSessionFileRequest copyWith(
          void Function(AiChatGetSessionFileRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatGetSessionFileRequest))
          as AiChatGetSessionFileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetSessionFileRequest create() =>
      AiChatGetSessionFileRequest._();
  @$core.override
  AiChatGetSessionFileRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetSessionFileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatGetSessionFileRequest>(create);
  static AiChatGetSessionFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get fileId => $_getI64(1);
  @$pb.TagNumber(2)
  set fileId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileId() => $_clearField(2);
}

class AiChatGetSessionFileResponse extends $pb.GeneratedMessage {
  factory AiChatGetSessionFileResponse({
    $fixnum.Int64? fileId,
    $core.String? filename,
    $core.String? mimeType,
    $core.List<$core.int>? content,
  }) {
    final result = create();
    if (fileId != null) result.fileId = fileId;
    if (filename != null) result.filename = filename;
    if (mimeType != null) result.mimeType = mimeType;
    if (content != null) result.content = content;
    return result;
  }

  AiChatGetSessionFileResponse._();

  factory AiChatGetSessionFileResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetSessionFileResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetSessionFileResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'fileId')
    ..aOS(2, _omitFieldNames ? '' : 'filename')
    ..aOS(3, _omitFieldNames ? '' : 'mimeType')
    ..a<$core.List<$core.int>>(
        4, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetSessionFileResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetSessionFileResponse copyWith(
          void Function(AiChatGetSessionFileResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatGetSessionFileResponse))
          as AiChatGetSessionFileResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetSessionFileResponse create() =>
      AiChatGetSessionFileResponse._();
  @$core.override
  AiChatGetSessionFileResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetSessionFileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatGetSessionFileResponse>(create);
  static AiChatGetSessionFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get fileId => $_getI64(0);
  @$pb.TagNumber(1)
  set fileId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFileId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get filename => $_getSZ(1);
  @$pb.TagNumber(2)
  set filename($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFilename() => $_has(1);
  @$pb.TagNumber(2)
  void clearFilename() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get mimeType => $_getSZ(2);
  @$pb.TagNumber(3)
  set mimeType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMimeType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMimeType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get content => $_getN(3);
  @$pb.TagNumber(4)
  set content($core.List<$core.int> value) => $_setBytes(3, value);
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => $_clearField(4);
}

class AiChatAssistantFinal extends $pb.GeneratedMessage {
  factory AiChatAssistantFinal({
    $fixnum.Int64? assistantMessageId,
    $core.String? text,
    $core.String? reasoning,
    $core.Iterable<AiChatToolStep>? toolSteps,
  }) {
    final result = create();
    if (assistantMessageId != null)
      result.assistantMessageId = assistantMessageId;
    if (text != null) result.text = text;
    if (reasoning != null) result.reasoning = reasoning;
    if (toolSteps != null) result.toolSteps.addAll(toolSteps);
    return result;
  }

  AiChatAssistantFinal._();

  factory AiChatAssistantFinal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatAssistantFinal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatAssistantFinal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'assistantMessageId')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOS(3, _omitFieldNames ? '' : 'reasoning')
    ..pPM<AiChatToolStep>(4, _omitFieldNames ? '' : 'toolSteps',
        subBuilder: AiChatToolStep.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatAssistantFinal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatAssistantFinal copyWith(void Function(AiChatAssistantFinal) updates) =>
      super.copyWith((message) => updates(message as AiChatAssistantFinal))
          as AiChatAssistantFinal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatAssistantFinal create() => AiChatAssistantFinal._();
  @$core.override
  AiChatAssistantFinal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatAssistantFinal getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatAssistantFinal>(create);
  static AiChatAssistantFinal? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get assistantMessageId => $_getI64(0);
  @$pb.TagNumber(1)
  set assistantMessageId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAssistantMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssistantMessageId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get reasoning => $_getSZ(2);
  @$pb.TagNumber(3)
  set reasoning($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReasoning() => $_has(2);
  @$pb.TagNumber(3)
  void clearReasoning() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<AiChatToolStep> get toolSteps => $_getList(3);
}

class AiChatChunk extends $pb.GeneratedMessage {
  factory AiChatChunk({
    $core.String? content,
    $core.String? reasoning,
    $core.bool? done,
    $fixnum.Int64? sessionId,
    $core.String? sessionTitle,
    AiChatChunkKind? kind,
    AiChatAssistantFinal? assistantFinal,
    $core.String? toolName,
    $core.String? toolDisplayName,
    $core.String? toolStatus,
    $core.String? toolCategory,
  }) {
    final result = create();
    if (content != null) result.content = content;
    if (reasoning != null) result.reasoning = reasoning;
    if (done != null) result.done = done;
    if (sessionId != null) result.sessionId = sessionId;
    if (sessionTitle != null) result.sessionTitle = sessionTitle;
    if (kind != null) result.kind = kind;
    if (assistantFinal != null) result.assistantFinal = assistantFinal;
    if (toolName != null) result.toolName = toolName;
    if (toolDisplayName != null) result.toolDisplayName = toolDisplayName;
    if (toolStatus != null) result.toolStatus = toolStatus;
    if (toolCategory != null) result.toolCategory = toolCategory;
    return result;
  }

  AiChatChunk._();

  factory AiChatChunk.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatChunk.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatChunk',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'content')
    ..aOS(2, _omitFieldNames ? '' : 'reasoning')
    ..aOB(3, _omitFieldNames ? '' : 'done')
    ..aInt64(4, _omitFieldNames ? '' : 'sessionId')
    ..aOS(5, _omitFieldNames ? '' : 'sessionTitle')
    ..aE<AiChatChunkKind>(6, _omitFieldNames ? '' : 'kind',
        enumValues: AiChatChunkKind.values)
    ..aOM<AiChatAssistantFinal>(7, _omitFieldNames ? '' : 'assistantFinal',
        subBuilder: AiChatAssistantFinal.create)
    ..aOS(8, _omitFieldNames ? '' : 'toolName')
    ..aOS(9, _omitFieldNames ? '' : 'toolDisplayName')
    ..aOS(10, _omitFieldNames ? '' : 'toolStatus')
    ..aOS(11, _omitFieldNames ? '' : 'toolCategory')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatChunk clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatChunk copyWith(void Function(AiChatChunk) updates) =>
      super.copyWith((message) => updates(message as AiChatChunk))
          as AiChatChunk;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatChunk create() => AiChatChunk._();
  @$core.override
  AiChatChunk createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatChunk getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatChunk>(create);
  static AiChatChunk? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get reasoning => $_getSZ(1);
  @$pb.TagNumber(2)
  set reasoning($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReasoning() => $_has(1);
  @$pb.TagNumber(2)
  void clearReasoning() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get done => $_getBF(2);
  @$pb.TagNumber(3)
  set done($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearDone() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get sessionId => $_getI64(3);
  @$pb.TagNumber(4)
  set sessionId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSessionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get sessionTitle => $_getSZ(4);
  @$pb.TagNumber(5)
  set sessionTitle($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSessionTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearSessionTitle() => $_clearField(5);

  @$pb.TagNumber(6)
  AiChatChunkKind get kind => $_getN(5);
  @$pb.TagNumber(6)
  set kind(AiChatChunkKind value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasKind() => $_has(5);
  @$pb.TagNumber(6)
  void clearKind() => $_clearField(6);

  @$pb.TagNumber(7)
  AiChatAssistantFinal get assistantFinal => $_getN(6);
  @$pb.TagNumber(7)
  set assistantFinal(AiChatAssistantFinal value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAssistantFinal() => $_has(6);
  @$pb.TagNumber(7)
  void clearAssistantFinal() => $_clearField(7);
  @$pb.TagNumber(7)
  AiChatAssistantFinal ensureAssistantFinal() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get toolName => $_getSZ(7);
  @$pb.TagNumber(8)
  set toolName($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasToolName() => $_has(7);
  @$pb.TagNumber(8)
  void clearToolName() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get toolDisplayName => $_getSZ(8);
  @$pb.TagNumber(9)
  set toolDisplayName($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasToolDisplayName() => $_has(8);
  @$pb.TagNumber(9)
  void clearToolDisplayName() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get toolStatus => $_getSZ(9);
  @$pb.TagNumber(10)
  set toolStatus($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasToolStatus() => $_has(9);
  @$pb.TagNumber(10)
  void clearToolStatus() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get toolCategory => $_getSZ(10);
  @$pb.TagNumber(11)
  set toolCategory($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasToolCategory() => $_has(10);
  @$pb.TagNumber(11)
  void clearToolCategory() => $_clearField(11);
}

class AiChatStatusRequest extends $pb.GeneratedMessage {
  factory AiChatStatusRequest() => create();

  AiChatStatusRequest._();

  factory AiChatStatusRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatStatusRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatStatusRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatStatusRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatStatusRequest copyWith(void Function(AiChatStatusRequest) updates) =>
      super.copyWith((message) => updates(message as AiChatStatusRequest))
          as AiChatStatusRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatStatusRequest create() => AiChatStatusRequest._();
  @$core.override
  AiChatStatusRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatStatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatStatusRequest>(create);
  static AiChatStatusRequest? _defaultInstance;
}

class AiChatRuntimeDefaults extends $pb.GeneratedMessage {
  factory AiChatRuntimeDefaults({
    $core.double? temperature,
    $core.double? topP,
    $core.int? topK,
    $core.int? timeoutSeconds,
    $core.Iterable<$core.String>? stopSequences,
    $core.bool? modelReasoningEnabled,
    $core.bool? webSearchEnabled,
    $core.String? webSearchProvider,
    $core.bool? mcpEnabled,
    $core.Iterable<$fixnum.Int64>? mcpServerIds,
    $core.bool? integrationsEnabled,
    $core.bool? fileRagEnabled,
    $core.int? fileRagTopK,
    $core.String? fileRagEmbedModel,
    $core.bool? fileRagForceVector,
    $core.int? mapSelectionMaxItems,
  }) {
    final result = create();
    if (temperature != null) result.temperature = temperature;
    if (topP != null) result.topP = topP;
    if (topK != null) result.topK = topK;
    if (timeoutSeconds != null) result.timeoutSeconds = timeoutSeconds;
    if (stopSequences != null) result.stopSequences.addAll(stopSequences);
    if (modelReasoningEnabled != null)
      result.modelReasoningEnabled = modelReasoningEnabled;
    if (webSearchEnabled != null) result.webSearchEnabled = webSearchEnabled;
    if (webSearchProvider != null) result.webSearchProvider = webSearchProvider;
    if (mcpEnabled != null) result.mcpEnabled = mcpEnabled;
    if (mcpServerIds != null) result.mcpServerIds.addAll(mcpServerIds);
    if (integrationsEnabled != null)
      result.integrationsEnabled = integrationsEnabled;
    if (fileRagEnabled != null) result.fileRagEnabled = fileRagEnabled;
    if (fileRagTopK != null) result.fileRagTopK = fileRagTopK;
    if (fileRagEmbedModel != null) result.fileRagEmbedModel = fileRagEmbedModel;
    if (fileRagForceVector != null)
      result.fileRagForceVector = fileRagForceVector;
    if (mapSelectionMaxItems != null)
      result.mapSelectionMaxItems = mapSelectionMaxItems;
    return result;
  }

  AiChatRuntimeDefaults._();

  factory AiChatRuntimeDefaults.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatRuntimeDefaults.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatRuntimeDefaults',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'temperature', fieldType: $pb.PbFieldType.OF)
    ..aD(2, _omitFieldNames ? '' : 'topP', fieldType: $pb.PbFieldType.OF)
    ..aI(3, _omitFieldNames ? '' : 'topK')
    ..aI(4, _omitFieldNames ? '' : 'timeoutSeconds')
    ..pPS(5, _omitFieldNames ? '' : 'stopSequences')
    ..aOB(6, _omitFieldNames ? '' : 'modelReasoningEnabled')
    ..aOB(7, _omitFieldNames ? '' : 'webSearchEnabled')
    ..aOS(8, _omitFieldNames ? '' : 'webSearchProvider')
    ..aOB(9, _omitFieldNames ? '' : 'mcpEnabled')
    ..p<$fixnum.Int64>(
        10, _omitFieldNames ? '' : 'mcpServerIds', $pb.PbFieldType.K6)
    ..aOB(11, _omitFieldNames ? '' : 'integrationsEnabled')
    ..aOB(12, _omitFieldNames ? '' : 'fileRagEnabled')
    ..aI(13, _omitFieldNames ? '' : 'fileRagTopK')
    ..aOS(14, _omitFieldNames ? '' : 'fileRagEmbedModel')
    ..aOB(15, _omitFieldNames ? '' : 'fileRagForceVector')
    ..aI(16, _omitFieldNames ? '' : 'mapSelectionMaxItems')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatRuntimeDefaults clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatRuntimeDefaults copyWith(
          void Function(AiChatRuntimeDefaults) updates) =>
      super.copyWith((message) => updates(message as AiChatRuntimeDefaults))
          as AiChatRuntimeDefaults;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatRuntimeDefaults create() => AiChatRuntimeDefaults._();
  @$core.override
  AiChatRuntimeDefaults createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatRuntimeDefaults getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatRuntimeDefaults>(create);
  static AiChatRuntimeDefaults? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get temperature => $_getN(0);
  @$pb.TagNumber(1)
  set temperature($core.double value) => $_setFloat(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTemperature() => $_has(0);
  @$pb.TagNumber(1)
  void clearTemperature() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get topP => $_getN(1);
  @$pb.TagNumber(2)
  set topP($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTopP() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopP() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get topK => $_getIZ(2);
  @$pb.TagNumber(3)
  set topK($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTopK() => $_has(2);
  @$pb.TagNumber(3)
  void clearTopK() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get timeoutSeconds => $_getIZ(3);
  @$pb.TagNumber(4)
  set timeoutSeconds($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTimeoutSeconds() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimeoutSeconds() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get stopSequences => $_getList(4);

  @$pb.TagNumber(6)
  $core.bool get modelReasoningEnabled => $_getBF(5);
  @$pb.TagNumber(6)
  set modelReasoningEnabled($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasModelReasoningEnabled() => $_has(5);
  @$pb.TagNumber(6)
  void clearModelReasoningEnabled() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get webSearchEnabled => $_getBF(6);
  @$pb.TagNumber(7)
  set webSearchEnabled($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasWebSearchEnabled() => $_has(6);
  @$pb.TagNumber(7)
  void clearWebSearchEnabled() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get webSearchProvider => $_getSZ(7);
  @$pb.TagNumber(8)
  set webSearchProvider($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWebSearchProvider() => $_has(7);
  @$pb.TagNumber(8)
  void clearWebSearchProvider() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get mcpEnabled => $_getBF(8);
  @$pb.TagNumber(9)
  set mcpEnabled($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMcpEnabled() => $_has(8);
  @$pb.TagNumber(9)
  void clearMcpEnabled() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<$fixnum.Int64> get mcpServerIds => $_getList(9);

  @$pb.TagNumber(11)
  $core.bool get integrationsEnabled => $_getBF(10);
  @$pb.TagNumber(11)
  set integrationsEnabled($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasIntegrationsEnabled() => $_has(10);
  @$pb.TagNumber(11)
  void clearIntegrationsEnabled() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get fileRagEnabled => $_getBF(11);
  @$pb.TagNumber(12)
  set fileRagEnabled($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasFileRagEnabled() => $_has(11);
  @$pb.TagNumber(12)
  void clearFileRagEnabled() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get fileRagTopK => $_getIZ(12);
  @$pb.TagNumber(13)
  set fileRagTopK($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasFileRagTopK() => $_has(12);
  @$pb.TagNumber(13)
  void clearFileRagTopK() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get fileRagEmbedModel => $_getSZ(13);
  @$pb.TagNumber(14)
  set fileRagEmbedModel($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasFileRagEmbedModel() => $_has(13);
  @$pb.TagNumber(14)
  void clearFileRagEmbedModel() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.bool get fileRagForceVector => $_getBF(14);
  @$pb.TagNumber(15)
  set fileRagForceVector($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasFileRagForceVector() => $_has(14);
  @$pb.TagNumber(15)
  void clearFileRagForceVector() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get mapSelectionMaxItems => $_getIZ(15);
  @$pb.TagNumber(16)
  set mapSelectionMaxItems($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasMapSelectionMaxItems() => $_has(15);
  @$pb.TagNumber(16)
  void clearMapSelectionMaxItems() => $_clearField(16);
}

class AiChatProactiveChip extends $pb.GeneratedMessage {
  factory AiChatProactiveChip({
    $core.String? id,
    $core.String? label,
    $core.String? prompt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (label != null) result.label = label;
    if (prompt != null) result.prompt = prompt;
    return result;
  }

  AiChatProactiveChip._();

  factory AiChatProactiveChip.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatProactiveChip.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatProactiveChip',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'label')
    ..aOS(3, _omitFieldNames ? '' : 'prompt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatProactiveChip clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatProactiveChip copyWith(void Function(AiChatProactiveChip) updates) =>
      super.copyWith((message) => updates(message as AiChatProactiveChip))
          as AiChatProactiveChip;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatProactiveChip create() => AiChatProactiveChip._();
  @$core.override
  AiChatProactiveChip createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatProactiveChip getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatProactiveChip>(create);
  static AiChatProactiveChip? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get label => $_getSZ(1);
  @$pb.TagNumber(2)
  set label($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabel() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get prompt => $_getSZ(2);
  @$pb.TagNumber(3)
  set prompt($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPrompt() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrompt() => $_clearField(3);
}

class AiChatStatusResponse extends $pb.GeneratedMessage {
  factory AiChatStatusResponse({
    $core.bool? enabled,
    $core.bool? llmConnected,
    $core.bool? mcpAvailable,
    $core.bool? attachmentsAvailable,
    $core.bool? hideAskAiButton,
    $core.bool? webSearchAvailable,
    $core.Iterable<$core.String>? webSearchProviders,
    $core.String? defaultWebSearchProvider,
    AiChatRuntimeDefaults? defaults,
    $core.bool? integrationsAvailable,
    $core.Iterable<AiChatSessionTemplate>? sessionTemplates,
    $core.Iterable<AiChatQuickPrompt>? customQuickPrompts,
    $core.Iterable<AiChatProactiveChip>? proactiveChips,
    $core.bool? imageUploadAvailable,
  }) {
    final result = create();
    if (enabled != null) result.enabled = enabled;
    if (llmConnected != null) result.llmConnected = llmConnected;
    if (mcpAvailable != null) result.mcpAvailable = mcpAvailable;
    if (attachmentsAvailable != null)
      result.attachmentsAvailable = attachmentsAvailable;
    if (hideAskAiButton != null) result.hideAskAiButton = hideAskAiButton;
    if (webSearchAvailable != null)
      result.webSearchAvailable = webSearchAvailable;
    if (webSearchProviders != null)
      result.webSearchProviders.addAll(webSearchProviders);
    if (defaultWebSearchProvider != null)
      result.defaultWebSearchProvider = defaultWebSearchProvider;
    if (defaults != null) result.defaults = defaults;
    if (integrationsAvailable != null)
      result.integrationsAvailable = integrationsAvailable;
    if (sessionTemplates != null)
      result.sessionTemplates.addAll(sessionTemplates);
    if (customQuickPrompts != null)
      result.customQuickPrompts.addAll(customQuickPrompts);
    if (proactiveChips != null) result.proactiveChips.addAll(proactiveChips);
    if (imageUploadAvailable != null)
      result.imageUploadAvailable = imageUploadAvailable;
    return result;
  }

  AiChatStatusResponse._();

  factory AiChatStatusResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatStatusResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatStatusResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'enabled')
    ..aOB(2, _omitFieldNames ? '' : 'llmConnected')
    ..aOB(3, _omitFieldNames ? '' : 'mcpAvailable')
    ..aOB(4, _omitFieldNames ? '' : 'attachmentsAvailable')
    ..aOB(5, _omitFieldNames ? '' : 'hideAskAiButton')
    ..aOB(6, _omitFieldNames ? '' : 'webSearchAvailable')
    ..pPS(7, _omitFieldNames ? '' : 'webSearchProviders')
    ..aOS(8, _omitFieldNames ? '' : 'defaultWebSearchProvider')
    ..aOM<AiChatRuntimeDefaults>(9, _omitFieldNames ? '' : 'defaults',
        subBuilder: AiChatRuntimeDefaults.create)
    ..aOB(10, _omitFieldNames ? '' : 'integrationsAvailable')
    ..pPM<AiChatSessionTemplate>(11, _omitFieldNames ? '' : 'sessionTemplates',
        subBuilder: AiChatSessionTemplate.create)
    ..pPM<AiChatQuickPrompt>(12, _omitFieldNames ? '' : 'customQuickPrompts',
        subBuilder: AiChatQuickPrompt.create)
    ..pPM<AiChatProactiveChip>(13, _omitFieldNames ? '' : 'proactiveChips',
        subBuilder: AiChatProactiveChip.create)
    ..aOB(14, _omitFieldNames ? '' : 'imageUploadAvailable')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatStatusResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatStatusResponse copyWith(void Function(AiChatStatusResponse) updates) =>
      super.copyWith((message) => updates(message as AiChatStatusResponse))
          as AiChatStatusResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatStatusResponse create() => AiChatStatusResponse._();
  @$core.override
  AiChatStatusResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatStatusResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatStatusResponse>(create);
  static AiChatStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enabled => $_getBF(0);
  @$pb.TagNumber(1)
  set enabled($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEnabled() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnabled() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get llmConnected => $_getBF(1);
  @$pb.TagNumber(2)
  set llmConnected($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLlmConnected() => $_has(1);
  @$pb.TagNumber(2)
  void clearLlmConnected() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get mcpAvailable => $_getBF(2);
  @$pb.TagNumber(3)
  set mcpAvailable($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMcpAvailable() => $_has(2);
  @$pb.TagNumber(3)
  void clearMcpAvailable() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get attachmentsAvailable => $_getBF(3);
  @$pb.TagNumber(4)
  set attachmentsAvailable($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAttachmentsAvailable() => $_has(3);
  @$pb.TagNumber(4)
  void clearAttachmentsAvailable() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get hideAskAiButton => $_getBF(4);
  @$pb.TagNumber(5)
  set hideAskAiButton($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHideAskAiButton() => $_has(4);
  @$pb.TagNumber(5)
  void clearHideAskAiButton() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get webSearchAvailable => $_getBF(5);
  @$pb.TagNumber(6)
  set webSearchAvailable($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasWebSearchAvailable() => $_has(5);
  @$pb.TagNumber(6)
  void clearWebSearchAvailable() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get webSearchProviders => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get defaultWebSearchProvider => $_getSZ(7);
  @$pb.TagNumber(8)
  set defaultWebSearchProvider($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDefaultWebSearchProvider() => $_has(7);
  @$pb.TagNumber(8)
  void clearDefaultWebSearchProvider() => $_clearField(8);

  @$pb.TagNumber(9)
  AiChatRuntimeDefaults get defaults => $_getN(8);
  @$pb.TagNumber(9)
  set defaults(AiChatRuntimeDefaults value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasDefaults() => $_has(8);
  @$pb.TagNumber(9)
  void clearDefaults() => $_clearField(9);
  @$pb.TagNumber(9)
  AiChatRuntimeDefaults ensureDefaults() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.bool get integrationsAvailable => $_getBF(9);
  @$pb.TagNumber(10)
  set integrationsAvailable($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasIntegrationsAvailable() => $_has(9);
  @$pb.TagNumber(10)
  void clearIntegrationsAvailable() => $_clearField(10);

  @$pb.TagNumber(11)
  $pb.PbList<AiChatSessionTemplate> get sessionTemplates => $_getList(10);

  @$pb.TagNumber(12)
  $pb.PbList<AiChatQuickPrompt> get customQuickPrompts => $_getList(11);

  @$pb.TagNumber(13)
  $pb.PbList<AiChatProactiveChip> get proactiveChips => $_getList(12);

  @$pb.TagNumber(14)
  $core.bool get imageUploadAvailable => $_getBF(13);
  @$pb.TagNumber(14)
  set imageUploadAvailable($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(14)
  $core.bool hasImageUploadAvailable() => $_has(13);
  @$pb.TagNumber(14)
  void clearImageUploadAvailable() => $_clearField(14);
}

class AiChatGetSessionsRequest extends $pb.GeneratedMessage {
  factory AiChatGetSessionsRequest() => create();

  AiChatGetSessionsRequest._();

  factory AiChatGetSessionsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetSessionsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetSessionsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetSessionsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetSessionsRequest copyWith(
          void Function(AiChatGetSessionsRequest) updates) =>
      super.copyWith((message) => updates(message as AiChatGetSessionsRequest))
          as AiChatGetSessionsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetSessionsRequest create() => AiChatGetSessionsRequest._();
  @$core.override
  AiChatGetSessionsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetSessionsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatGetSessionsRequest>(create);
  static AiChatGetSessionsRequest? _defaultInstance;
}

class AiChatGetSessionsResponse extends $pb.GeneratedMessage {
  factory AiChatGetSessionsResponse({
    $core.Iterable<AiChatSession>? sessions,
  }) {
    final result = create();
    if (sessions != null) result.sessions.addAll(sessions);
    return result;
  }

  AiChatGetSessionsResponse._();

  factory AiChatGetSessionsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetSessionsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetSessionsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<AiChatSession>(1, _omitFieldNames ? '' : 'sessions',
        subBuilder: AiChatSession.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetSessionsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetSessionsResponse copyWith(
          void Function(AiChatGetSessionsResponse) updates) =>
      super.copyWith((message) => updates(message as AiChatGetSessionsResponse))
          as AiChatGetSessionsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetSessionsResponse create() => AiChatGetSessionsResponse._();
  @$core.override
  AiChatGetSessionsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetSessionsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatGetSessionsResponse>(create);
  static AiChatGetSessionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AiChatSession> get sessions => $_getList(0);
}

class AiChatCreateSessionRequest extends $pb.GeneratedMessage {
  factory AiChatCreateSessionRequest({
    $core.String? title,
    $core.String? systemPrompt,
    AiChatMapContext? mapContext,
    $core.String? templateId,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (systemPrompt != null) result.systemPrompt = systemPrompt;
    if (mapContext != null) result.mapContext = mapContext;
    if (templateId != null) result.templateId = templateId;
    return result;
  }

  AiChatCreateSessionRequest._();

  factory AiChatCreateSessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatCreateSessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatCreateSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'systemPrompt')
    ..aOM<AiChatMapContext>(3, _omitFieldNames ? '' : 'mapContext',
        subBuilder: AiChatMapContext.create)
    ..aOS(4, _omitFieldNames ? '' : 'templateId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatCreateSessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatCreateSessionRequest copyWith(
          void Function(AiChatCreateSessionRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatCreateSessionRequest))
          as AiChatCreateSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatCreateSessionRequest create() => AiChatCreateSessionRequest._();
  @$core.override
  AiChatCreateSessionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatCreateSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatCreateSessionRequest>(create);
  static AiChatCreateSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get systemPrompt => $_getSZ(1);
  @$pb.TagNumber(2)
  set systemPrompt($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSystemPrompt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystemPrompt() => $_clearField(2);

  @$pb.TagNumber(3)
  AiChatMapContext get mapContext => $_getN(2);
  @$pb.TagNumber(3)
  set mapContext(AiChatMapContext value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMapContext() => $_has(2);
  @$pb.TagNumber(3)
  void clearMapContext() => $_clearField(3);
  @$pb.TagNumber(3)
  AiChatMapContext ensureMapContext() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get templateId => $_getSZ(3);
  @$pb.TagNumber(4)
  set templateId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTemplateId() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemplateId() => $_clearField(4);
}

class AiChatDeleteSessionRequest extends $pb.GeneratedMessage {
  factory AiChatDeleteSessionRequest({
    $fixnum.Int64? sessionId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  AiChatDeleteSessionRequest._();

  factory AiChatDeleteSessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatDeleteSessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatDeleteSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatDeleteSessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatDeleteSessionRequest copyWith(
          void Function(AiChatDeleteSessionRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatDeleteSessionRequest))
          as AiChatDeleteSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatDeleteSessionRequest create() => AiChatDeleteSessionRequest._();
  @$core.override
  AiChatDeleteSessionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatDeleteSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatDeleteSessionRequest>(create);
  static AiChatDeleteSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
}

class AiChatUpdateSessionTitleRequest extends $pb.GeneratedMessage {
  factory AiChatUpdateSessionTitleRequest({
    $fixnum.Int64? sessionId,
    $core.String? title,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (title != null) result.title = title;
    return result;
  }

  AiChatUpdateSessionTitleRequest._();

  factory AiChatUpdateSessionTitleRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatUpdateSessionTitleRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatUpdateSessionTitleRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatUpdateSessionTitleRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatUpdateSessionTitleRequest copyWith(
          void Function(AiChatUpdateSessionTitleRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatUpdateSessionTitleRequest))
          as AiChatUpdateSessionTitleRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatUpdateSessionTitleRequest create() =>
      AiChatUpdateSessionTitleRequest._();
  @$core.override
  AiChatUpdateSessionTitleRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatUpdateSessionTitleRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatUpdateSessionTitleRequest>(
          create);
  static AiChatUpdateSessionTitleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);
}

class AiChatUpdateSessionSystemPromptRequest extends $pb.GeneratedMessage {
  factory AiChatUpdateSessionSystemPromptRequest({
    $fixnum.Int64? sessionId,
    $core.String? systemPrompt,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (systemPrompt != null) result.systemPrompt = systemPrompt;
    return result;
  }

  AiChatUpdateSessionSystemPromptRequest._();

  factory AiChatUpdateSessionSystemPromptRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatUpdateSessionSystemPromptRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatUpdateSessionSystemPromptRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'systemPrompt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatUpdateSessionSystemPromptRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatUpdateSessionSystemPromptRequest copyWith(
          void Function(AiChatUpdateSessionSystemPromptRequest) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatUpdateSessionSystemPromptRequest))
          as AiChatUpdateSessionSystemPromptRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatUpdateSessionSystemPromptRequest create() =>
      AiChatUpdateSessionSystemPromptRequest._();
  @$core.override
  AiChatUpdateSessionSystemPromptRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatUpdateSessionSystemPromptRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AiChatUpdateSessionSystemPromptRequest>(create);
  static AiChatUpdateSessionSystemPromptRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get systemPrompt => $_getSZ(1);
  @$pb.TagNumber(2)
  set systemPrompt($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSystemPrompt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystemPrompt() => $_clearField(2);
}

class AiChatMCPServer extends $pb.GeneratedMessage {
  factory AiChatMCPServer({
    $fixnum.Int64? id,
    $core.String? name,
    $core.bool? enabled,
    $core.String? transport,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (enabled != null) result.enabled = enabled;
    if (transport != null) result.transport = transport;
    return result;
  }

  AiChatMCPServer._();

  factory AiChatMCPServer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatMCPServer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatMCPServer',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'enabled')
    ..aOS(4, _omitFieldNames ? '' : 'transport')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatMCPServer clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatMCPServer copyWith(void Function(AiChatMCPServer) updates) =>
      super.copyWith((message) => updates(message as AiChatMCPServer))
          as AiChatMCPServer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatMCPServer create() => AiChatMCPServer._();
  @$core.override
  AiChatMCPServer createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatMCPServer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatMCPServer>(create);
  static AiChatMCPServer? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get enabled => $_getBF(2);
  @$pb.TagNumber(3)
  set enabled($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEnabled() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnabled() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get transport => $_getSZ(3);
  @$pb.TagNumber(4)
  set transport($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTransport() => $_has(3);
  @$pb.TagNumber(4)
  void clearTransport() => $_clearField(4);
}

class AiChatListMCPServersRequest extends $pb.GeneratedMessage {
  factory AiChatListMCPServersRequest() => create();

  AiChatListMCPServersRequest._();

  factory AiChatListMCPServersRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatListMCPServersRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatListMCPServersRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListMCPServersRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListMCPServersRequest copyWith(
          void Function(AiChatListMCPServersRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatListMCPServersRequest))
          as AiChatListMCPServersRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatListMCPServersRequest create() =>
      AiChatListMCPServersRequest._();
  @$core.override
  AiChatListMCPServersRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatListMCPServersRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatListMCPServersRequest>(create);
  static AiChatListMCPServersRequest? _defaultInstance;
}

class AiChatListMCPServersResponse extends $pb.GeneratedMessage {
  factory AiChatListMCPServersResponse({
    $core.Iterable<AiChatMCPServer>? servers,
  }) {
    final result = create();
    if (servers != null) result.servers.addAll(servers);
    return result;
  }

  AiChatListMCPServersResponse._();

  factory AiChatListMCPServersResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatListMCPServersResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatListMCPServersResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<AiChatMCPServer>(1, _omitFieldNames ? '' : 'servers',
        subBuilder: AiChatMCPServer.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListMCPServersResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListMCPServersResponse copyWith(
          void Function(AiChatListMCPServersResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatListMCPServersResponse))
          as AiChatListMCPServersResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatListMCPServersResponse create() =>
      AiChatListMCPServersResponse._();
  @$core.override
  AiChatListMCPServersResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatListMCPServersResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatListMCPServersResponse>(create);
  static AiChatListMCPServersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AiChatMCPServer> get servers => $_getList(0);
}

class AiChatGetMessagesRequest extends $pb.GeneratedMessage {
  factory AiChatGetMessagesRequest({
    $fixnum.Int64? sessionId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  AiChatGetMessagesRequest._();

  factory AiChatGetMessagesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetMessagesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetMessagesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetMessagesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetMessagesRequest copyWith(
          void Function(AiChatGetMessagesRequest) updates) =>
      super.copyWith((message) => updates(message as AiChatGetMessagesRequest))
          as AiChatGetMessagesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetMessagesRequest create() => AiChatGetMessagesRequest._();
  @$core.override
  AiChatGetMessagesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetMessagesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatGetMessagesRequest>(create);
  static AiChatGetMessagesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
}

class AiChatGetMessagesResponse extends $pb.GeneratedMessage {
  factory AiChatGetMessagesResponse({
    $core.Iterable<AiChatMessage>? messages,
  }) {
    final result = create();
    if (messages != null) result.messages.addAll(messages);
    return result;
  }

  AiChatGetMessagesResponse._();

  factory AiChatGetMessagesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetMessagesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetMessagesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<AiChatMessage>(1, _omitFieldNames ? '' : 'messages',
        subBuilder: AiChatMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetMessagesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetMessagesResponse copyWith(
          void Function(AiChatGetMessagesResponse) updates) =>
      super.copyWith((message) => updates(message as AiChatGetMessagesResponse))
          as AiChatGetMessagesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetMessagesResponse create() => AiChatGetMessagesResponse._();
  @$core.override
  AiChatGetMessagesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetMessagesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatGetMessagesResponse>(create);
  static AiChatGetMessagesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AiChatMessage> get messages => $_getList(0);
}

class AiChatRegenerateRequest extends $pb.GeneratedMessage {
  factory AiChatRegenerateRequest({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? assistantMessageId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (assistantMessageId != null)
      result.assistantMessageId = assistantMessageId;
    return result;
  }

  AiChatRegenerateRequest._();

  factory AiChatRegenerateRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatRegenerateRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatRegenerateRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'assistantMessageId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatRegenerateRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatRegenerateRequest copyWith(
          void Function(AiChatRegenerateRequest) updates) =>
      super.copyWith((message) => updates(message as AiChatRegenerateRequest))
          as AiChatRegenerateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatRegenerateRequest create() => AiChatRegenerateRequest._();
  @$core.override
  AiChatRegenerateRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatRegenerateRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatRegenerateRequest>(create);
  static AiChatRegenerateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get assistantMessageId => $_getI64(1);
  @$pb.TagNumber(2)
  set assistantMessageId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAssistantMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssistantMessageId() => $_clearField(2);
}

class AiChatContinueRequest extends $pb.GeneratedMessage {
  factory AiChatContinueRequest({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? assistantMessageId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (assistantMessageId != null)
      result.assistantMessageId = assistantMessageId;
    return result;
  }

  AiChatContinueRequest._();

  factory AiChatContinueRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatContinueRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatContinueRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'assistantMessageId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatContinueRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatContinueRequest copyWith(
          void Function(AiChatContinueRequest) updates) =>
      super.copyWith((message) => updates(message as AiChatContinueRequest))
          as AiChatContinueRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatContinueRequest create() => AiChatContinueRequest._();
  @$core.override
  AiChatContinueRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatContinueRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatContinueRequest>(create);
  static AiChatContinueRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get assistantMessageId => $_getI64(1);
  @$pb.TagNumber(2)
  set assistantMessageId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAssistantMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssistantMessageId() => $_clearField(2);
}

class AiChatEditUserMessageRequest extends $pb.GeneratedMessage {
  factory AiChatEditUserMessageRequest({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? userMessageId,
    $core.String? newContent,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (userMessageId != null) result.userMessageId = userMessageId;
    if (newContent != null) result.newContent = newContent;
    return result;
  }

  AiChatEditUserMessageRequest._();

  factory AiChatEditUserMessageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatEditUserMessageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatEditUserMessageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'userMessageId')
    ..aOS(3, _omitFieldNames ? '' : 'newContent')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatEditUserMessageRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatEditUserMessageRequest copyWith(
          void Function(AiChatEditUserMessageRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatEditUserMessageRequest))
          as AiChatEditUserMessageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatEditUserMessageRequest create() =>
      AiChatEditUserMessageRequest._();
  @$core.override
  AiChatEditUserMessageRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatEditUserMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatEditUserMessageRequest>(create);
  static AiChatEditUserMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userMessageId => $_getI64(1);
  @$pb.TagNumber(2)
  set userMessageId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserMessageId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get newContent => $_getSZ(2);
  @$pb.TagNumber(3)
  set newContent($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNewContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearNewContent() => $_clearField(3);
}

class AiChatAssistantRegeneration extends $pb.GeneratedMessage {
  factory AiChatAssistantRegeneration({
    $fixnum.Int64? id,
    $fixnum.Int64? messageId,
    $fixnum.Int64? createdAt,
    $core.String? oldContent,
    $core.String? newContent,
    $core.String? oldReasoning,
    $core.String? newReasoning,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (messageId != null) result.messageId = messageId;
    if (createdAt != null) result.createdAt = createdAt;
    if (oldContent != null) result.oldContent = oldContent;
    if (newContent != null) result.newContent = newContent;
    if (oldReasoning != null) result.oldReasoning = oldReasoning;
    if (newReasoning != null) result.newReasoning = newReasoning;
    return result;
  }

  AiChatAssistantRegeneration._();

  factory AiChatAssistantRegeneration.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatAssistantRegeneration.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatAssistantRegeneration',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'messageId')
    ..aInt64(3, _omitFieldNames ? '' : 'createdAt')
    ..aOS(4, _omitFieldNames ? '' : 'oldContent')
    ..aOS(5, _omitFieldNames ? '' : 'newContent')
    ..aOS(6, _omitFieldNames ? '' : 'oldReasoning')
    ..aOS(7, _omitFieldNames ? '' : 'newReasoning')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatAssistantRegeneration clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatAssistantRegeneration copyWith(
          void Function(AiChatAssistantRegeneration) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatAssistantRegeneration))
          as AiChatAssistantRegeneration;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatAssistantRegeneration create() =>
      AiChatAssistantRegeneration._();
  @$core.override
  AiChatAssistantRegeneration createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatAssistantRegeneration getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatAssistantRegeneration>(create);
  static AiChatAssistantRegeneration? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get messageId => $_getI64(1);
  @$pb.TagNumber(2)
  set messageId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get createdAt => $_getI64(2);
  @$pb.TagNumber(3)
  set createdAt($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get oldContent => $_getSZ(3);
  @$pb.TagNumber(4)
  set oldContent($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOldContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearOldContent() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get newContent => $_getSZ(4);
  @$pb.TagNumber(5)
  set newContent($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNewContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearNewContent() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get oldReasoning => $_getSZ(5);
  @$pb.TagNumber(6)
  set oldReasoning($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasOldReasoning() => $_has(5);
  @$pb.TagNumber(6)
  void clearOldReasoning() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get newReasoning => $_getSZ(6);
  @$pb.TagNumber(7)
  set newReasoning($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasNewReasoning() => $_has(6);
  @$pb.TagNumber(7)
  void clearNewReasoning() => $_clearField(7);
}

class AiChatListAssistantRegenerationsRequest extends $pb.GeneratedMessage {
  factory AiChatListAssistantRegenerationsRequest({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? assistantMessageId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (assistantMessageId != null)
      result.assistantMessageId = assistantMessageId;
    return result;
  }

  AiChatListAssistantRegenerationsRequest._();

  factory AiChatListAssistantRegenerationsRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatListAssistantRegenerationsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatListAssistantRegenerationsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'assistantMessageId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListAssistantRegenerationsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListAssistantRegenerationsRequest copyWith(
          void Function(AiChatListAssistantRegenerationsRequest) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatListAssistantRegenerationsRequest))
          as AiChatListAssistantRegenerationsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatListAssistantRegenerationsRequest create() =>
      AiChatListAssistantRegenerationsRequest._();
  @$core.override
  AiChatListAssistantRegenerationsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatListAssistantRegenerationsRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AiChatListAssistantRegenerationsRequest>(create);
  static AiChatListAssistantRegenerationsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get assistantMessageId => $_getI64(1);
  @$pb.TagNumber(2)
  set assistantMessageId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAssistantMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssistantMessageId() => $_clearField(2);
}

class AiChatListAssistantRegenerationsResponse extends $pb.GeneratedMessage {
  factory AiChatListAssistantRegenerationsResponse({
    $core.Iterable<AiChatAssistantRegeneration>? regenerations,
  }) {
    final result = create();
    if (regenerations != null) result.regenerations.addAll(regenerations);
    return result;
  }

  AiChatListAssistantRegenerationsResponse._();

  factory AiChatListAssistantRegenerationsResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatListAssistantRegenerationsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatListAssistantRegenerationsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<AiChatAssistantRegeneration>(
        1, _omitFieldNames ? '' : 'regenerations',
        subBuilder: AiChatAssistantRegeneration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListAssistantRegenerationsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListAssistantRegenerationsResponse copyWith(
          void Function(AiChatListAssistantRegenerationsResponse) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatListAssistantRegenerationsResponse))
          as AiChatListAssistantRegenerationsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatListAssistantRegenerationsResponse create() =>
      AiChatListAssistantRegenerationsResponse._();
  @$core.override
  AiChatListAssistantRegenerationsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatListAssistantRegenerationsResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AiChatListAssistantRegenerationsResponse>(create);
  static AiChatListAssistantRegenerationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AiChatAssistantRegeneration> get regenerations => $_getList(0);
}

class AiChatGetMessagesAtAssistantVersionRequest extends $pb.GeneratedMessage {
  factory AiChatGetMessagesAtAssistantVersionRequest({
    $fixnum.Int64? sessionId,
    $fixnum.Int64? assistantMessageId,
    $core.int? versionIndex,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (assistantMessageId != null)
      result.assistantMessageId = assistantMessageId;
    if (versionIndex != null) result.versionIndex = versionIndex;
    return result;
  }

  AiChatGetMessagesAtAssistantVersionRequest._();

  factory AiChatGetMessagesAtAssistantVersionRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetMessagesAtAssistantVersionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetMessagesAtAssistantVersionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'assistantMessageId')
    ..aI(3, _omitFieldNames ? '' : 'versionIndex')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetMessagesAtAssistantVersionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetMessagesAtAssistantVersionRequest copyWith(
          void Function(AiChatGetMessagesAtAssistantVersionRequest) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatGetMessagesAtAssistantVersionRequest))
          as AiChatGetMessagesAtAssistantVersionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetMessagesAtAssistantVersionRequest create() =>
      AiChatGetMessagesAtAssistantVersionRequest._();
  @$core.override
  AiChatGetMessagesAtAssistantVersionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetMessagesAtAssistantVersionRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AiChatGetMessagesAtAssistantVersionRequest>(create);
  static AiChatGetMessagesAtAssistantVersionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get assistantMessageId => $_getI64(1);
  @$pb.TagNumber(2)
  set assistantMessageId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAssistantMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssistantMessageId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get versionIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set versionIndex($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersionIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersionIndex() => $_clearField(3);
}

class AiChatMcpServerAdmin extends $pb.GeneratedMessage {
  factory AiChatMcpServerAdmin({
    $fixnum.Int64? id,
    $core.Iterable<$fixnum.Int64>? userIds,
    $core.String? name,
    $core.bool? enabled,
    $core.String? transport,
    $core.String? url,
    $core.String? headers,
    $core.int? timeoutSeconds,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (userIds != null) result.userIds.addAll(userIds);
    if (name != null) result.name = name;
    if (enabled != null) result.enabled = enabled;
    if (transport != null) result.transport = transport;
    if (url != null) result.url = url;
    if (headers != null) result.headers = headers;
    if (timeoutSeconds != null) result.timeoutSeconds = timeoutSeconds;
    return result;
  }

  AiChatMcpServerAdmin._();

  factory AiChatMcpServerAdmin.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatMcpServerAdmin.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatMcpServerAdmin',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'userIds', $pb.PbFieldType.K6)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOB(4, _omitFieldNames ? '' : 'enabled')
    ..aOS(5, _omitFieldNames ? '' : 'transport')
    ..aOS(6, _omitFieldNames ? '' : 'url')
    ..aOS(7, _omitFieldNames ? '' : 'headers')
    ..aI(8, _omitFieldNames ? '' : 'timeoutSeconds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatMcpServerAdmin clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatMcpServerAdmin copyWith(void Function(AiChatMcpServerAdmin) updates) =>
      super.copyWith((message) => updates(message as AiChatMcpServerAdmin))
          as AiChatMcpServerAdmin;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatMcpServerAdmin create() => AiChatMcpServerAdmin._();
  @$core.override
  AiChatMcpServerAdmin createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatMcpServerAdmin getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatMcpServerAdmin>(create);
  static AiChatMcpServerAdmin? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get userIds => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get enabled => $_getBF(3);
  @$pb.TagNumber(4)
  set enabled($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEnabled() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnabled() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get transport => $_getSZ(4);
  @$pb.TagNumber(5)
  set transport($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTransport() => $_has(4);
  @$pb.TagNumber(5)
  void clearTransport() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get url => $_getSZ(5);
  @$pb.TagNumber(6)
  set url($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearUrl() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get headers => $_getSZ(6);
  @$pb.TagNumber(7)
  set headers($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeaders() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeaders() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get timeoutSeconds => $_getIZ(7);
  @$pb.TagNumber(8)
  set timeoutSeconds($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTimeoutSeconds() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimeoutSeconds() => $_clearField(8);
}

class AiChatListMcpServersAdminRequest extends $pb.GeneratedMessage {
  factory AiChatListMcpServersAdminRequest() => create();

  AiChatListMcpServersAdminRequest._();

  factory AiChatListMcpServersAdminRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatListMcpServersAdminRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatListMcpServersAdminRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListMcpServersAdminRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListMcpServersAdminRequest copyWith(
          void Function(AiChatListMcpServersAdminRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatListMcpServersAdminRequest))
          as AiChatListMcpServersAdminRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatListMcpServersAdminRequest create() =>
      AiChatListMcpServersAdminRequest._();
  @$core.override
  AiChatListMcpServersAdminRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatListMcpServersAdminRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatListMcpServersAdminRequest>(
          create);
  static AiChatListMcpServersAdminRequest? _defaultInstance;
}

class AiChatListMcpServersAdminResponse extends $pb.GeneratedMessage {
  factory AiChatListMcpServersAdminResponse({
    $core.Iterable<AiChatMcpServerAdmin>? servers,
  }) {
    final result = create();
    if (servers != null) result.servers.addAll(servers);
    return result;
  }

  AiChatListMcpServersAdminResponse._();

  factory AiChatListMcpServersAdminResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatListMcpServersAdminResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatListMcpServersAdminResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<AiChatMcpServerAdmin>(1, _omitFieldNames ? '' : 'servers',
        subBuilder: AiChatMcpServerAdmin.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListMcpServersAdminResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListMcpServersAdminResponse copyWith(
          void Function(AiChatListMcpServersAdminResponse) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatListMcpServersAdminResponse))
          as AiChatListMcpServersAdminResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatListMcpServersAdminResponse create() =>
      AiChatListMcpServersAdminResponse._();
  @$core.override
  AiChatListMcpServersAdminResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatListMcpServersAdminResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatListMcpServersAdminResponse>(
          create);
  static AiChatListMcpServersAdminResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AiChatMcpServerAdmin> get servers => $_getList(0);
}

class AiChatGetMcpServerAdminRequest extends $pb.GeneratedMessage {
  factory AiChatGetMcpServerAdminRequest({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  AiChatGetMcpServerAdminRequest._();

  factory AiChatGetMcpServerAdminRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetMcpServerAdminRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetMcpServerAdminRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetMcpServerAdminRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetMcpServerAdminRequest copyWith(
          void Function(AiChatGetMcpServerAdminRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatGetMcpServerAdminRequest))
          as AiChatGetMcpServerAdminRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetMcpServerAdminRequest create() =>
      AiChatGetMcpServerAdminRequest._();
  @$core.override
  AiChatGetMcpServerAdminRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetMcpServerAdminRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatGetMcpServerAdminRequest>(create);
  static AiChatGetMcpServerAdminRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class AiChatGetMcpServerAdminResponse extends $pb.GeneratedMessage {
  factory AiChatGetMcpServerAdminResponse({
    AiChatMcpServerAdmin? server,
  }) {
    final result = create();
    if (server != null) result.server = server;
    return result;
  }

  AiChatGetMcpServerAdminResponse._();

  factory AiChatGetMcpServerAdminResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetMcpServerAdminResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetMcpServerAdminResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<AiChatMcpServerAdmin>(1, _omitFieldNames ? '' : 'server',
        subBuilder: AiChatMcpServerAdmin.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetMcpServerAdminResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetMcpServerAdminResponse copyWith(
          void Function(AiChatGetMcpServerAdminResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatGetMcpServerAdminResponse))
          as AiChatGetMcpServerAdminResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetMcpServerAdminResponse create() =>
      AiChatGetMcpServerAdminResponse._();
  @$core.override
  AiChatGetMcpServerAdminResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetMcpServerAdminResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatGetMcpServerAdminResponse>(
          create);
  static AiChatGetMcpServerAdminResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AiChatMcpServerAdmin get server => $_getN(0);
  @$pb.TagNumber(1)
  set server(AiChatMcpServerAdmin value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasServer() => $_has(0);
  @$pb.TagNumber(1)
  void clearServer() => $_clearField(1);
  @$pb.TagNumber(1)
  AiChatMcpServerAdmin ensureServer() => $_ensure(0);
}

class AiChatCreateMcpServerAdminRequest extends $pb.GeneratedMessage {
  factory AiChatCreateMcpServerAdminRequest({
    $core.Iterable<$fixnum.Int64>? userIds,
    $core.String? name,
    $core.bool? enabled,
    $core.String? transport,
    $core.String? url,
    $core.String? headers,
    $core.int? timeoutSeconds,
  }) {
    final result = create();
    if (userIds != null) result.userIds.addAll(userIds);
    if (name != null) result.name = name;
    if (enabled != null) result.enabled = enabled;
    if (transport != null) result.transport = transport;
    if (url != null) result.url = url;
    if (headers != null) result.headers = headers;
    if (timeoutSeconds != null) result.timeoutSeconds = timeoutSeconds;
    return result;
  }

  AiChatCreateMcpServerAdminRequest._();

  factory AiChatCreateMcpServerAdminRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatCreateMcpServerAdminRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatCreateMcpServerAdminRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'userIds', $pb.PbFieldType.K6)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'enabled')
    ..aOS(4, _omitFieldNames ? '' : 'transport')
    ..aOS(5, _omitFieldNames ? '' : 'url')
    ..aOS(6, _omitFieldNames ? '' : 'headers')
    ..aI(7, _omitFieldNames ? '' : 'timeoutSeconds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatCreateMcpServerAdminRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatCreateMcpServerAdminRequest copyWith(
          void Function(AiChatCreateMcpServerAdminRequest) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatCreateMcpServerAdminRequest))
          as AiChatCreateMcpServerAdminRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatCreateMcpServerAdminRequest create() =>
      AiChatCreateMcpServerAdminRequest._();
  @$core.override
  AiChatCreateMcpServerAdminRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatCreateMcpServerAdminRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatCreateMcpServerAdminRequest>(
          create);
  static AiChatCreateMcpServerAdminRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$fixnum.Int64> get userIds => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get enabled => $_getBF(2);
  @$pb.TagNumber(3)
  set enabled($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEnabled() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnabled() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get transport => $_getSZ(3);
  @$pb.TagNumber(4)
  set transport($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTransport() => $_has(3);
  @$pb.TagNumber(4)
  void clearTransport() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get url => $_getSZ(4);
  @$pb.TagNumber(5)
  set url($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearUrl() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get headers => $_getSZ(5);
  @$pb.TagNumber(6)
  set headers($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHeaders() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeaders() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get timeoutSeconds => $_getIZ(6);
  @$pb.TagNumber(7)
  set timeoutSeconds($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTimeoutSeconds() => $_has(6);
  @$pb.TagNumber(7)
  void clearTimeoutSeconds() => $_clearField(7);
}

class AiChatUpdateMcpServerAdminRequest extends $pb.GeneratedMessage {
  factory AiChatUpdateMcpServerAdminRequest({
    AiChatMcpServerAdmin? server,
  }) {
    final result = create();
    if (server != null) result.server = server;
    return result;
  }

  AiChatUpdateMcpServerAdminRequest._();

  factory AiChatUpdateMcpServerAdminRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatUpdateMcpServerAdminRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatUpdateMcpServerAdminRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<AiChatMcpServerAdmin>(1, _omitFieldNames ? '' : 'server',
        subBuilder: AiChatMcpServerAdmin.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatUpdateMcpServerAdminRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatUpdateMcpServerAdminRequest copyWith(
          void Function(AiChatUpdateMcpServerAdminRequest) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatUpdateMcpServerAdminRequest))
          as AiChatUpdateMcpServerAdminRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatUpdateMcpServerAdminRequest create() =>
      AiChatUpdateMcpServerAdminRequest._();
  @$core.override
  AiChatUpdateMcpServerAdminRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatUpdateMcpServerAdminRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatUpdateMcpServerAdminRequest>(
          create);
  static AiChatUpdateMcpServerAdminRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AiChatMcpServerAdmin get server => $_getN(0);
  @$pb.TagNumber(1)
  set server(AiChatMcpServerAdmin value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasServer() => $_has(0);
  @$pb.TagNumber(1)
  void clearServer() => $_clearField(1);
  @$pb.TagNumber(1)
  AiChatMcpServerAdmin ensureServer() => $_ensure(0);
}

class AiChatDeleteMcpServerAdminRequest extends $pb.GeneratedMessage {
  factory AiChatDeleteMcpServerAdminRequest({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  AiChatDeleteMcpServerAdminRequest._();

  factory AiChatDeleteMcpServerAdminRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatDeleteMcpServerAdminRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatDeleteMcpServerAdminRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatDeleteMcpServerAdminRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatDeleteMcpServerAdminRequest copyWith(
          void Function(AiChatDeleteMcpServerAdminRequest) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatDeleteMcpServerAdminRequest))
          as AiChatDeleteMcpServerAdminRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatDeleteMcpServerAdminRequest create() =>
      AiChatDeleteMcpServerAdminRequest._();
  @$core.override
  AiChatDeleteMcpServerAdminRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatDeleteMcpServerAdminRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatDeleteMcpServerAdminRequest>(
          create);
  static AiChatDeleteMcpServerAdminRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class AiChatLLMProviderAdmin extends $pb.GeneratedMessage {
  factory AiChatLLMProviderAdmin({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? kind,
    $core.String? category,
    $core.bool? active,
    $core.String? baseUrl,
    $core.String? apiKey,
    $core.String? authUrl,
    $core.String? scope,
    $core.String? folderId,
    $core.bool? insecureSkipVerify,
    $core.bool? probeOnConnect,
    $core.int? timeoutSeconds,
    $core.int? maxContextTokens,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (kind != null) result.kind = kind;
    if (category != null) result.category = category;
    if (active != null) result.active = active;
    if (baseUrl != null) result.baseUrl = baseUrl;
    if (apiKey != null) result.apiKey = apiKey;
    if (authUrl != null) result.authUrl = authUrl;
    if (scope != null) result.scope = scope;
    if (folderId != null) result.folderId = folderId;
    if (insecureSkipVerify != null)
      result.insecureSkipVerify = insecureSkipVerify;
    if (probeOnConnect != null) result.probeOnConnect = probeOnConnect;
    if (timeoutSeconds != null) result.timeoutSeconds = timeoutSeconds;
    if (maxContextTokens != null) result.maxContextTokens = maxContextTokens;
    return result;
  }

  AiChatLLMProviderAdmin._();

  factory AiChatLLMProviderAdmin.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatLLMProviderAdmin.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatLLMProviderAdmin',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'kind')
    ..aOS(4, _omitFieldNames ? '' : 'category')
    ..aOB(5, _omitFieldNames ? '' : 'active')
    ..aOS(6, _omitFieldNames ? '' : 'baseUrl')
    ..aOS(7, _omitFieldNames ? '' : 'apiKey')
    ..aOS(8, _omitFieldNames ? '' : 'authUrl')
    ..aOS(9, _omitFieldNames ? '' : 'scope')
    ..aOS(10, _omitFieldNames ? '' : 'folderId')
    ..aOB(11, _omitFieldNames ? '' : 'insecureSkipVerify')
    ..aOB(12, _omitFieldNames ? '' : 'probeOnConnect')
    ..aI(13, _omitFieldNames ? '' : 'timeoutSeconds')
    ..aI(14, _omitFieldNames ? '' : 'maxContextTokens')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatLLMProviderAdmin clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatLLMProviderAdmin copyWith(
          void Function(AiChatLLMProviderAdmin) updates) =>
      super.copyWith((message) => updates(message as AiChatLLMProviderAdmin))
          as AiChatLLMProviderAdmin;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatLLMProviderAdmin create() => AiChatLLMProviderAdmin._();
  @$core.override
  AiChatLLMProviderAdmin createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatLLMProviderAdmin getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatLLMProviderAdmin>(create);
  static AiChatLLMProviderAdmin? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get kind => $_getSZ(2);
  @$pb.TagNumber(3)
  set kind($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasKind() => $_has(2);
  @$pb.TagNumber(3)
  void clearKind() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get category => $_getSZ(3);
  @$pb.TagNumber(4)
  set category($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get active => $_getBF(4);
  @$pb.TagNumber(5)
  set active($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasActive() => $_has(4);
  @$pb.TagNumber(5)
  void clearActive() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get baseUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set baseUrl($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBaseUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearBaseUrl() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get apiKey => $_getSZ(6);
  @$pb.TagNumber(7)
  set apiKey($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasApiKey() => $_has(6);
  @$pb.TagNumber(7)
  void clearApiKey() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get authUrl => $_getSZ(7);
  @$pb.TagNumber(8)
  set authUrl($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasAuthUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearAuthUrl() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get scope => $_getSZ(8);
  @$pb.TagNumber(9)
  set scope($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasScope() => $_has(8);
  @$pb.TagNumber(9)
  void clearScope() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get folderId => $_getSZ(9);
  @$pb.TagNumber(10)
  set folderId($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFolderId() => $_has(9);
  @$pb.TagNumber(10)
  void clearFolderId() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get insecureSkipVerify => $_getBF(10);
  @$pb.TagNumber(11)
  set insecureSkipVerify($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasInsecureSkipVerify() => $_has(10);
  @$pb.TagNumber(11)
  void clearInsecureSkipVerify() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get probeOnConnect => $_getBF(11);
  @$pb.TagNumber(12)
  set probeOnConnect($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasProbeOnConnect() => $_has(11);
  @$pb.TagNumber(12)
  void clearProbeOnConnect() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get timeoutSeconds => $_getIZ(12);
  @$pb.TagNumber(13)
  set timeoutSeconds($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasTimeoutSeconds() => $_has(12);
  @$pb.TagNumber(13)
  void clearTimeoutSeconds() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get maxContextTokens => $_getIZ(13);
  @$pb.TagNumber(14)
  set maxContextTokens($core.int value) => $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasMaxContextTokens() => $_has(13);
  @$pb.TagNumber(14)
  void clearMaxContextTokens() => $_clearField(14);
}

class AiChatListLLMProvidersAdminRequest extends $pb.GeneratedMessage {
  factory AiChatListLLMProvidersAdminRequest() => create();

  AiChatListLLMProvidersAdminRequest._();

  factory AiChatListLLMProvidersAdminRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatListLLMProvidersAdminRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatListLLMProvidersAdminRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListLLMProvidersAdminRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListLLMProvidersAdminRequest copyWith(
          void Function(AiChatListLLMProvidersAdminRequest) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatListLLMProvidersAdminRequest))
          as AiChatListLLMProvidersAdminRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatListLLMProvidersAdminRequest create() =>
      AiChatListLLMProvidersAdminRequest._();
  @$core.override
  AiChatListLLMProvidersAdminRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatListLLMProvidersAdminRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatListLLMProvidersAdminRequest>(
          create);
  static AiChatListLLMProvidersAdminRequest? _defaultInstance;
}

class AiChatListLLMProvidersAdminResponse extends $pb.GeneratedMessage {
  factory AiChatListLLMProvidersAdminResponse({
    $core.Iterable<AiChatLLMProviderAdmin>? providers,
  }) {
    final result = create();
    if (providers != null) result.providers.addAll(providers);
    return result;
  }

  AiChatListLLMProvidersAdminResponse._();

  factory AiChatListLLMProvidersAdminResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatListLLMProvidersAdminResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatListLLMProvidersAdminResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<AiChatLLMProviderAdmin>(1, _omitFieldNames ? '' : 'providers',
        subBuilder: AiChatLLMProviderAdmin.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListLLMProvidersAdminResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListLLMProvidersAdminResponse copyWith(
          void Function(AiChatListLLMProvidersAdminResponse) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatListLLMProvidersAdminResponse))
          as AiChatListLLMProvidersAdminResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatListLLMProvidersAdminResponse create() =>
      AiChatListLLMProvidersAdminResponse._();
  @$core.override
  AiChatListLLMProvidersAdminResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatListLLMProvidersAdminResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AiChatListLLMProvidersAdminResponse>(create);
  static AiChatListLLMProvidersAdminResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AiChatLLMProviderAdmin> get providers => $_getList(0);
}

class AiChatGetLLMProviderAdminResponse extends $pb.GeneratedMessage {
  factory AiChatGetLLMProviderAdminResponse({
    AiChatLLMProviderAdmin? provider,
  }) {
    final result = create();
    if (provider != null) result.provider = provider;
    return result;
  }

  AiChatGetLLMProviderAdminResponse._();

  factory AiChatGetLLMProviderAdminResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetLLMProviderAdminResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetLLMProviderAdminResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<AiChatLLMProviderAdmin>(1, _omitFieldNames ? '' : 'provider',
        subBuilder: AiChatLLMProviderAdmin.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetLLMProviderAdminResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetLLMProviderAdminResponse copyWith(
          void Function(AiChatGetLLMProviderAdminResponse) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatGetLLMProviderAdminResponse))
          as AiChatGetLLMProviderAdminResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetLLMProviderAdminResponse create() =>
      AiChatGetLLMProviderAdminResponse._();
  @$core.override
  AiChatGetLLMProviderAdminResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetLLMProviderAdminResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatGetLLMProviderAdminResponse>(
          create);
  static AiChatGetLLMProviderAdminResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AiChatLLMProviderAdmin get provider => $_getN(0);
  @$pb.TagNumber(1)
  set provider(AiChatLLMProviderAdmin value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProvider() => $_has(0);
  @$pb.TagNumber(1)
  void clearProvider() => $_clearField(1);
  @$pb.TagNumber(1)
  AiChatLLMProviderAdmin ensureProvider() => $_ensure(0);
}

class AiChatUpdateLLMProviderAdminRequest extends $pb.GeneratedMessage {
  factory AiChatUpdateLLMProviderAdminRequest({
    AiChatLLMProviderAdmin? provider,
  }) {
    final result = create();
    if (provider != null) result.provider = provider;
    return result;
  }

  AiChatUpdateLLMProviderAdminRequest._();

  factory AiChatUpdateLLMProviderAdminRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatUpdateLLMProviderAdminRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatUpdateLLMProviderAdminRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<AiChatLLMProviderAdmin>(1, _omitFieldNames ? '' : 'provider',
        subBuilder: AiChatLLMProviderAdmin.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatUpdateLLMProviderAdminRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatUpdateLLMProviderAdminRequest copyWith(
          void Function(AiChatUpdateLLMProviderAdminRequest) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatUpdateLLMProviderAdminRequest))
          as AiChatUpdateLLMProviderAdminRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatUpdateLLMProviderAdminRequest create() =>
      AiChatUpdateLLMProviderAdminRequest._();
  @$core.override
  AiChatUpdateLLMProviderAdminRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatUpdateLLMProviderAdminRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AiChatUpdateLLMProviderAdminRequest>(create);
  static AiChatUpdateLLMProviderAdminRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AiChatLLMProviderAdmin get provider => $_getN(0);
  @$pb.TagNumber(1)
  set provider(AiChatLLMProviderAdmin value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProvider() => $_has(0);
  @$pb.TagNumber(1)
  void clearProvider() => $_clearField(1);
  @$pb.TagNumber(1)
  AiChatLLMProviderAdmin ensureProvider() => $_ensure(0);
}

class AiChatProbeLLMProviderAdminRequest extends $pb.GeneratedMessage {
  factory AiChatProbeLLMProviderAdminRequest({
    $core.String? name,
    $core.String? kind,
    $core.bool? active,
    $core.String? baseUrl,
    $core.String? apiKey,
    $core.String? authUrl,
    $core.String? scope,
    $core.String? folderId,
    $core.bool? insecureSkipVerify,
    $core.bool? probeOnConnect,
    $core.int? timeoutSeconds,
    $core.int? maxContextTokens,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (kind != null) result.kind = kind;
    if (active != null) result.active = active;
    if (baseUrl != null) result.baseUrl = baseUrl;
    if (apiKey != null) result.apiKey = apiKey;
    if (authUrl != null) result.authUrl = authUrl;
    if (scope != null) result.scope = scope;
    if (folderId != null) result.folderId = folderId;
    if (insecureSkipVerify != null)
      result.insecureSkipVerify = insecureSkipVerify;
    if (probeOnConnect != null) result.probeOnConnect = probeOnConnect;
    if (timeoutSeconds != null) result.timeoutSeconds = timeoutSeconds;
    if (maxContextTokens != null) result.maxContextTokens = maxContextTokens;
    return result;
  }

  AiChatProbeLLMProviderAdminRequest._();

  factory AiChatProbeLLMProviderAdminRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatProbeLLMProviderAdminRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatProbeLLMProviderAdminRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'kind')
    ..aOB(3, _omitFieldNames ? '' : 'active')
    ..aOS(4, _omitFieldNames ? '' : 'baseUrl')
    ..aOS(5, _omitFieldNames ? '' : 'apiKey')
    ..aOS(6, _omitFieldNames ? '' : 'authUrl')
    ..aOS(7, _omitFieldNames ? '' : 'scope')
    ..aOS(8, _omitFieldNames ? '' : 'folderId')
    ..aOB(9, _omitFieldNames ? '' : 'insecureSkipVerify')
    ..aOB(10, _omitFieldNames ? '' : 'probeOnConnect')
    ..aI(11, _omitFieldNames ? '' : 'timeoutSeconds')
    ..aI(12, _omitFieldNames ? '' : 'maxContextTokens')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatProbeLLMProviderAdminRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatProbeLLMProviderAdminRequest copyWith(
          void Function(AiChatProbeLLMProviderAdminRequest) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatProbeLLMProviderAdminRequest))
          as AiChatProbeLLMProviderAdminRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatProbeLLMProviderAdminRequest create() =>
      AiChatProbeLLMProviderAdminRequest._();
  @$core.override
  AiChatProbeLLMProviderAdminRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatProbeLLMProviderAdminRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatProbeLLMProviderAdminRequest>(
          create);
  static AiChatProbeLLMProviderAdminRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get kind => $_getSZ(1);
  @$pb.TagNumber(2)
  set kind($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get active => $_getBF(2);
  @$pb.TagNumber(3)
  set active($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasActive() => $_has(2);
  @$pb.TagNumber(3)
  void clearActive() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get baseUrl => $_getSZ(3);
  @$pb.TagNumber(4)
  set baseUrl($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBaseUrl() => $_has(3);
  @$pb.TagNumber(4)
  void clearBaseUrl() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get apiKey => $_getSZ(4);
  @$pb.TagNumber(5)
  set apiKey($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasApiKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearApiKey() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get authUrl => $_getSZ(5);
  @$pb.TagNumber(6)
  set authUrl($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAuthUrl() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthUrl() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get scope => $_getSZ(6);
  @$pb.TagNumber(7)
  set scope($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasScope() => $_has(6);
  @$pb.TagNumber(7)
  void clearScope() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get folderId => $_getSZ(7);
  @$pb.TagNumber(8)
  set folderId($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFolderId() => $_has(7);
  @$pb.TagNumber(8)
  void clearFolderId() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get insecureSkipVerify => $_getBF(8);
  @$pb.TagNumber(9)
  set insecureSkipVerify($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasInsecureSkipVerify() => $_has(8);
  @$pb.TagNumber(9)
  void clearInsecureSkipVerify() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get probeOnConnect => $_getBF(9);
  @$pb.TagNumber(10)
  set probeOnConnect($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasProbeOnConnect() => $_has(9);
  @$pb.TagNumber(10)
  void clearProbeOnConnect() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get timeoutSeconds => $_getIZ(10);
  @$pb.TagNumber(11)
  set timeoutSeconds($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTimeoutSeconds() => $_has(10);
  @$pb.TagNumber(11)
  void clearTimeoutSeconds() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get maxContextTokens => $_getIZ(11);
  @$pb.TagNumber(12)
  set maxContextTokens($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasMaxContextTokens() => $_has(11);
  @$pb.TagNumber(12)
  void clearMaxContextTokens() => $_clearField(12);
}

class AiChatProbeLLMProviderAdminResponse extends $pb.GeneratedMessage {
  factory AiChatProbeLLMProviderAdminResponse({
    $core.bool? connected,
    $core.String? message,
  }) {
    final result = create();
    if (connected != null) result.connected = connected;
    if (message != null) result.message = message;
    return result;
  }

  AiChatProbeLLMProviderAdminResponse._();

  factory AiChatProbeLLMProviderAdminResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatProbeLLMProviderAdminResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatProbeLLMProviderAdminResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'connected')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatProbeLLMProviderAdminResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatProbeLLMProviderAdminResponse copyWith(
          void Function(AiChatProbeLLMProviderAdminResponse) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatProbeLLMProviderAdminResponse))
          as AiChatProbeLLMProviderAdminResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatProbeLLMProviderAdminResponse create() =>
      AiChatProbeLLMProviderAdminResponse._();
  @$core.override
  AiChatProbeLLMProviderAdminResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatProbeLLMProviderAdminResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AiChatProbeLLMProviderAdminResponse>(create);
  static AiChatProbeLLMProviderAdminResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get connected => $_getBF(0);
  @$pb.TagNumber(1)
  set connected($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasConnected() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnected() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class AiChatForkSessionRequest extends $pb.GeneratedMessage {
  factory AiChatForkSessionRequest({
    $fixnum.Int64? sessionId,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  AiChatForkSessionRequest._();

  factory AiChatForkSessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatForkSessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatForkSessionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatForkSessionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatForkSessionRequest copyWith(
          void Function(AiChatForkSessionRequest) updates) =>
      super.copyWith((message) => updates(message as AiChatForkSessionRequest))
          as AiChatForkSessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatForkSessionRequest create() => AiChatForkSessionRequest._();
  @$core.override
  AiChatForkSessionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatForkSessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatForkSessionRequest>(create);
  static AiChatForkSessionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);
}

class AiChatObjectReportRequest extends $pb.GeneratedMessage {
  factory AiChatObjectReportRequest({
    $core.String? kind,
    $fixnum.Int64? objectId,
    $core.String? format,
    $fixnum.Int64? sessionId,
    $core.bool? includeIntegrations,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (objectId != null) result.objectId = objectId;
    if (format != null) result.format = format;
    if (sessionId != null) result.sessionId = sessionId;
    if (includeIntegrations != null)
      result.includeIntegrations = includeIntegrations;
    return result;
  }

  AiChatObjectReportRequest._();

  factory AiChatObjectReportRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatObjectReportRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatObjectReportRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kind')
    ..aInt64(2, _omitFieldNames ? '' : 'objectId')
    ..aOS(3, _omitFieldNames ? '' : 'format')
    ..aInt64(4, _omitFieldNames ? '' : 'sessionId')
    ..aOB(5, _omitFieldNames ? '' : 'includeIntegrations')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatObjectReportRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatObjectReportRequest copyWith(
          void Function(AiChatObjectReportRequest) updates) =>
      super.copyWith((message) => updates(message as AiChatObjectReportRequest))
          as AiChatObjectReportRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatObjectReportRequest create() => AiChatObjectReportRequest._();
  @$core.override
  AiChatObjectReportRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatObjectReportRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatObjectReportRequest>(create);
  static AiChatObjectReportRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kind => $_getSZ(0);
  @$pb.TagNumber(1)
  set kind($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get objectId => $_getI64(1);
  @$pb.TagNumber(2)
  set objectId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasObjectId() => $_has(1);
  @$pb.TagNumber(2)
  void clearObjectId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get format => $_getSZ(2);
  @$pb.TagNumber(3)
  set format($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFormat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFormat() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get sessionId => $_getI64(3);
  @$pb.TagNumber(4)
  set sessionId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSessionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get includeIntegrations => $_getBF(4);
  @$pb.TagNumber(5)
  set includeIntegrations($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIncludeIntegrations() => $_has(4);
  @$pb.TagNumber(5)
  void clearIncludeIntegrations() => $_clearField(5);
}

class AiChatObjectReportResponse extends $pb.GeneratedMessage {
  factory AiChatObjectReportResponse({
    $core.String? markdown,
    $core.List<$core.int>? docx,
    $core.String? filename,
    $fixnum.Int64? fileId,
  }) {
    final result = create();
    if (markdown != null) result.markdown = markdown;
    if (docx != null) result.docx = docx;
    if (filename != null) result.filename = filename;
    if (fileId != null) result.fileId = fileId;
    return result;
  }

  AiChatObjectReportResponse._();

  factory AiChatObjectReportResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatObjectReportResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatObjectReportResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'markdown')
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'docx', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'filename')
    ..aInt64(4, _omitFieldNames ? '' : 'fileId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatObjectReportResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatObjectReportResponse copyWith(
          void Function(AiChatObjectReportResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatObjectReportResponse))
          as AiChatObjectReportResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatObjectReportResponse create() => AiChatObjectReportResponse._();
  @$core.override
  AiChatObjectReportResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatObjectReportResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatObjectReportResponse>(create);
  static AiChatObjectReportResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get markdown => $_getSZ(0);
  @$pb.TagNumber(1)
  set markdown($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMarkdown() => $_has(0);
  @$pb.TagNumber(1)
  void clearMarkdown() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get docx => $_getN(1);
  @$pb.TagNumber(2)
  set docx($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDocx() => $_has(1);
  @$pb.TagNumber(2)
  void clearDocx() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get filename => $_getSZ(2);
  @$pb.TagNumber(3)
  set filename($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFilename() => $_has(2);
  @$pb.TagNumber(3)
  void clearFilename() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get fileId => $_getI64(3);
  @$pb.TagNumber(4)
  set fileId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFileId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFileId() => $_clearField(4);
}

class AiChatAskSyncRequest extends $pb.GeneratedMessage {
  factory AiChatAskSyncRequest({
    $core.String? userMessage,
    AiChatMapContext? mapContext,
    $fixnum.Int64? sessionId,
    $core.String? templateId,
    $core.String? title,
    $core.int? timeoutSeconds,
  }) {
    final result = create();
    if (userMessage != null) result.userMessage = userMessage;
    if (mapContext != null) result.mapContext = mapContext;
    if (sessionId != null) result.sessionId = sessionId;
    if (templateId != null) result.templateId = templateId;
    if (title != null) result.title = title;
    if (timeoutSeconds != null) result.timeoutSeconds = timeoutSeconds;
    return result;
  }

  AiChatAskSyncRequest._();

  factory AiChatAskSyncRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatAskSyncRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatAskSyncRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userMessage')
    ..aOM<AiChatMapContext>(2, _omitFieldNames ? '' : 'mapContext',
        subBuilder: AiChatMapContext.create)
    ..aInt64(3, _omitFieldNames ? '' : 'sessionId')
    ..aOS(4, _omitFieldNames ? '' : 'templateId')
    ..aOS(5, _omitFieldNames ? '' : 'title')
    ..aI(6, _omitFieldNames ? '' : 'timeoutSeconds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatAskSyncRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatAskSyncRequest copyWith(void Function(AiChatAskSyncRequest) updates) =>
      super.copyWith((message) => updates(message as AiChatAskSyncRequest))
          as AiChatAskSyncRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatAskSyncRequest create() => AiChatAskSyncRequest._();
  @$core.override
  AiChatAskSyncRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatAskSyncRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatAskSyncRequest>(create);
  static AiChatAskSyncRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userMessage => $_getSZ(0);
  @$pb.TagNumber(1)
  set userMessage($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserMessage() => $_clearField(1);

  @$pb.TagNumber(2)
  AiChatMapContext get mapContext => $_getN(1);
  @$pb.TagNumber(2)
  set mapContext(AiChatMapContext value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMapContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearMapContext() => $_clearField(2);
  @$pb.TagNumber(2)
  AiChatMapContext ensureMapContext() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sessionId => $_getI64(2);
  @$pb.TagNumber(3)
  set sessionId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get templateId => $_getSZ(3);
  @$pb.TagNumber(4)
  set templateId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTemplateId() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemplateId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get title => $_getSZ(4);
  @$pb.TagNumber(5)
  set title($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearTitle() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get timeoutSeconds => $_getIZ(5);
  @$pb.TagNumber(6)
  set timeoutSeconds($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTimeoutSeconds() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimeoutSeconds() => $_clearField(6);
}

class AiChatAskSyncResponse extends $pb.GeneratedMessage {
  factory AiChatAskSyncResponse({
    $fixnum.Int64? sessionId,
    $core.String? sessionTitle,
    $fixnum.Int64? assistantMessageId,
    $core.String? assistantText,
  }) {
    final result = create();
    if (sessionId != null) result.sessionId = sessionId;
    if (sessionTitle != null) result.sessionTitle = sessionTitle;
    if (assistantMessageId != null)
      result.assistantMessageId = assistantMessageId;
    if (assistantText != null) result.assistantText = assistantText;
    return result;
  }

  AiChatAskSyncResponse._();

  factory AiChatAskSyncResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatAskSyncResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatAskSyncResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'sessionId')
    ..aOS(2, _omitFieldNames ? '' : 'sessionTitle')
    ..aInt64(3, _omitFieldNames ? '' : 'assistantMessageId')
    ..aOS(4, _omitFieldNames ? '' : 'assistantText')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatAskSyncResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatAskSyncResponse copyWith(
          void Function(AiChatAskSyncResponse) updates) =>
      super.copyWith((message) => updates(message as AiChatAskSyncResponse))
          as AiChatAskSyncResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatAskSyncResponse create() => AiChatAskSyncResponse._();
  @$core.override
  AiChatAskSyncResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatAskSyncResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatAskSyncResponse>(create);
  static AiChatAskSyncResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sessionId => $_getI64(0);
  @$pb.TagNumber(1)
  set sessionId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionTitle => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionTitle($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionTitle() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get assistantMessageId => $_getI64(2);
  @$pb.TagNumber(3)
  set assistantMessageId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAssistantMessageId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssistantMessageId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get assistantText => $_getSZ(3);
  @$pb.TagNumber(4)
  set assistantText($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAssistantText() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssistantText() => $_clearField(4);
}

class AiChatEnqueueAskRequest extends $pb.GeneratedMessage {
  factory AiChatEnqueueAskRequest({
    $core.String? userMessage,
    AiChatMapContext? mapContext,
    $fixnum.Int64? sessionId,
    $core.String? templateId,
    $core.String? title,
    $core.int? timeoutSeconds,
  }) {
    final result = create();
    if (userMessage != null) result.userMessage = userMessage;
    if (mapContext != null) result.mapContext = mapContext;
    if (sessionId != null) result.sessionId = sessionId;
    if (templateId != null) result.templateId = templateId;
    if (title != null) result.title = title;
    if (timeoutSeconds != null) result.timeoutSeconds = timeoutSeconds;
    return result;
  }

  AiChatEnqueueAskRequest._();

  factory AiChatEnqueueAskRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatEnqueueAskRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatEnqueueAskRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userMessage')
    ..aOM<AiChatMapContext>(2, _omitFieldNames ? '' : 'mapContext',
        subBuilder: AiChatMapContext.create)
    ..aInt64(3, _omitFieldNames ? '' : 'sessionId')
    ..aOS(4, _omitFieldNames ? '' : 'templateId')
    ..aOS(5, _omitFieldNames ? '' : 'title')
    ..aI(6, _omitFieldNames ? '' : 'timeoutSeconds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatEnqueueAskRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatEnqueueAskRequest copyWith(
          void Function(AiChatEnqueueAskRequest) updates) =>
      super.copyWith((message) => updates(message as AiChatEnqueueAskRequest))
          as AiChatEnqueueAskRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatEnqueueAskRequest create() => AiChatEnqueueAskRequest._();
  @$core.override
  AiChatEnqueueAskRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatEnqueueAskRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatEnqueueAskRequest>(create);
  static AiChatEnqueueAskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userMessage => $_getSZ(0);
  @$pb.TagNumber(1)
  set userMessage($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserMessage() => $_clearField(1);

  @$pb.TagNumber(2)
  AiChatMapContext get mapContext => $_getN(1);
  @$pb.TagNumber(2)
  set mapContext(AiChatMapContext value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMapContext() => $_has(1);
  @$pb.TagNumber(2)
  void clearMapContext() => $_clearField(2);
  @$pb.TagNumber(2)
  AiChatMapContext ensureMapContext() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sessionId => $_getI64(2);
  @$pb.TagNumber(3)
  set sessionId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get templateId => $_getSZ(3);
  @$pb.TagNumber(4)
  set templateId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTemplateId() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemplateId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get title => $_getSZ(4);
  @$pb.TagNumber(5)
  set title($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearTitle() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get timeoutSeconds => $_getIZ(5);
  @$pb.TagNumber(6)
  set timeoutSeconds($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTimeoutSeconds() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimeoutSeconds() => $_clearField(6);
}

class AiChatEnqueueAskResponse extends $pb.GeneratedMessage {
  factory AiChatEnqueueAskResponse({
    $fixnum.Int64? jobId,
  }) {
    final result = create();
    if (jobId != null) result.jobId = jobId;
    return result;
  }

  AiChatEnqueueAskResponse._();

  factory AiChatEnqueueAskResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatEnqueueAskResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatEnqueueAskResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'jobId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatEnqueueAskResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatEnqueueAskResponse copyWith(
          void Function(AiChatEnqueueAskResponse) updates) =>
      super.copyWith((message) => updates(message as AiChatEnqueueAskResponse))
          as AiChatEnqueueAskResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatEnqueueAskResponse create() => AiChatEnqueueAskResponse._();
  @$core.override
  AiChatEnqueueAskResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatEnqueueAskResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatEnqueueAskResponse>(create);
  static AiChatEnqueueAskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get jobId => $_getI64(0);
  @$pb.TagNumber(1)
  set jobId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasJobId() => $_has(0);
  @$pb.TagNumber(1)
  void clearJobId() => $_clearField(1);
}

class AiChatGetBackgroundAskStatusRequest extends $pb.GeneratedMessage {
  factory AiChatGetBackgroundAskStatusRequest({
    $fixnum.Int64? jobId,
  }) {
    final result = create();
    if (jobId != null) result.jobId = jobId;
    return result;
  }

  AiChatGetBackgroundAskStatusRequest._();

  factory AiChatGetBackgroundAskStatusRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetBackgroundAskStatusRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetBackgroundAskStatusRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'jobId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetBackgroundAskStatusRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetBackgroundAskStatusRequest copyWith(
          void Function(AiChatGetBackgroundAskStatusRequest) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatGetBackgroundAskStatusRequest))
          as AiChatGetBackgroundAskStatusRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetBackgroundAskStatusRequest create() =>
      AiChatGetBackgroundAskStatusRequest._();
  @$core.override
  AiChatGetBackgroundAskStatusRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetBackgroundAskStatusRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AiChatGetBackgroundAskStatusRequest>(create);
  static AiChatGetBackgroundAskStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get jobId => $_getI64(0);
  @$pb.TagNumber(1)
  set jobId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasJobId() => $_has(0);
  @$pb.TagNumber(1)
  void clearJobId() => $_clearField(1);
}

class AiChatGetBackgroundAskStatusResponse extends $pb.GeneratedMessage {
  factory AiChatGetBackgroundAskStatusResponse({
    $fixnum.Int64? jobId,
    $core.String? status,
    $fixnum.Int64? sessionId,
    $fixnum.Int64? assistantMessageId,
    $core.String? assistantText,
    $core.String? error,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? finishedAt,
    $core.String? title,
  }) {
    final result = create();
    if (jobId != null) result.jobId = jobId;
    if (status != null) result.status = status;
    if (sessionId != null) result.sessionId = sessionId;
    if (assistantMessageId != null)
      result.assistantMessageId = assistantMessageId;
    if (assistantText != null) result.assistantText = assistantText;
    if (error != null) result.error = error;
    if (createdAt != null) result.createdAt = createdAt;
    if (finishedAt != null) result.finishedAt = finishedAt;
    if (title != null) result.title = title;
    return result;
  }

  AiChatGetBackgroundAskStatusResponse._();

  factory AiChatGetBackgroundAskStatusResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetBackgroundAskStatusResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetBackgroundAskStatusResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'jobId')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aInt64(3, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(4, _omitFieldNames ? '' : 'assistantMessageId')
    ..aOS(5, _omitFieldNames ? '' : 'assistantText')
    ..aOS(6, _omitFieldNames ? '' : 'error')
    ..aInt64(7, _omitFieldNames ? '' : 'createdAt')
    ..aInt64(8, _omitFieldNames ? '' : 'finishedAt')
    ..aOS(9, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetBackgroundAskStatusResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetBackgroundAskStatusResponse copyWith(
          void Function(AiChatGetBackgroundAskStatusResponse) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatGetBackgroundAskStatusResponse))
          as AiChatGetBackgroundAskStatusResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetBackgroundAskStatusResponse create() =>
      AiChatGetBackgroundAskStatusResponse._();
  @$core.override
  AiChatGetBackgroundAskStatusResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetBackgroundAskStatusResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AiChatGetBackgroundAskStatusResponse>(create);
  static AiChatGetBackgroundAskStatusResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get jobId => $_getI64(0);
  @$pb.TagNumber(1)
  set jobId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasJobId() => $_has(0);
  @$pb.TagNumber(1)
  void clearJobId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get sessionId => $_getI64(2);
  @$pb.TagNumber(3)
  set sessionId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get assistantMessageId => $_getI64(3);
  @$pb.TagNumber(4)
  set assistantMessageId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAssistantMessageId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssistantMessageId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get assistantText => $_getSZ(4);
  @$pb.TagNumber(5)
  set assistantText($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAssistantText() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssistantText() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get error => $_getSZ(5);
  @$pb.TagNumber(6)
  set error($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasError() => $_has(5);
  @$pb.TagNumber(6)
  void clearError() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get createdAt => $_getI64(6);
  @$pb.TagNumber(7)
  set createdAt($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get finishedAt => $_getI64(7);
  @$pb.TagNumber(8)
  set finishedAt($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFinishedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearFinishedAt() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get title => $_getSZ(8);
  @$pb.TagNumber(9)
  set title($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTitle() => $_has(8);
  @$pb.TagNumber(9)
  void clearTitle() => $_clearField(9);
}

class AiChatListBackgroundJobsRequest extends $pb.GeneratedMessage {
  factory AiChatListBackgroundJobsRequest({
    $core.String? status,
    $core.int? limit,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (limit != null) result.limit = limit;
    return result;
  }

  AiChatListBackgroundJobsRequest._();

  factory AiChatListBackgroundJobsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatListBackgroundJobsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatListBackgroundJobsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..aI(2, _omitFieldNames ? '' : 'limit')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListBackgroundJobsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListBackgroundJobsRequest copyWith(
          void Function(AiChatListBackgroundJobsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatListBackgroundJobsRequest))
          as AiChatListBackgroundJobsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatListBackgroundJobsRequest create() =>
      AiChatListBackgroundJobsRequest._();
  @$core.override
  AiChatListBackgroundJobsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatListBackgroundJobsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatListBackgroundJobsRequest>(
          create);
  static AiChatListBackgroundJobsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => $_clearField(2);
}

class AiChatBackgroundJobItem extends $pb.GeneratedMessage {
  factory AiChatBackgroundJobItem({
    $fixnum.Int64? jobId,
    $core.String? status,
    $core.String? title,
    $fixnum.Int64? sessionId,
    $fixnum.Int64? assistantMessageId,
    $core.String? error,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? finishedAt,
  }) {
    final result = create();
    if (jobId != null) result.jobId = jobId;
    if (status != null) result.status = status;
    if (title != null) result.title = title;
    if (sessionId != null) result.sessionId = sessionId;
    if (assistantMessageId != null)
      result.assistantMessageId = assistantMessageId;
    if (error != null) result.error = error;
    if (createdAt != null) result.createdAt = createdAt;
    if (finishedAt != null) result.finishedAt = finishedAt;
    return result;
  }

  AiChatBackgroundJobItem._();

  factory AiChatBackgroundJobItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatBackgroundJobItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatBackgroundJobItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'jobId')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aInt64(4, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(5, _omitFieldNames ? '' : 'assistantMessageId')
    ..aOS(6, _omitFieldNames ? '' : 'error')
    ..aInt64(7, _omitFieldNames ? '' : 'createdAt')
    ..aInt64(8, _omitFieldNames ? '' : 'finishedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatBackgroundJobItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatBackgroundJobItem copyWith(
          void Function(AiChatBackgroundJobItem) updates) =>
      super.copyWith((message) => updates(message as AiChatBackgroundJobItem))
          as AiChatBackgroundJobItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatBackgroundJobItem create() => AiChatBackgroundJobItem._();
  @$core.override
  AiChatBackgroundJobItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatBackgroundJobItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatBackgroundJobItem>(create);
  static AiChatBackgroundJobItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get jobId => $_getI64(0);
  @$pb.TagNumber(1)
  set jobId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasJobId() => $_has(0);
  @$pb.TagNumber(1)
  void clearJobId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get sessionId => $_getI64(3);
  @$pb.TagNumber(4)
  set sessionId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSessionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionId() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get assistantMessageId => $_getI64(4);
  @$pb.TagNumber(5)
  set assistantMessageId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAssistantMessageId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssistantMessageId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get error => $_getSZ(5);
  @$pb.TagNumber(6)
  set error($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasError() => $_has(5);
  @$pb.TagNumber(6)
  void clearError() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get createdAt => $_getI64(6);
  @$pb.TagNumber(7)
  set createdAt($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get finishedAt => $_getI64(7);
  @$pb.TagNumber(8)
  set finishedAt($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFinishedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearFinishedAt() => $_clearField(8);
}

class AiChatListBackgroundJobsResponse extends $pb.GeneratedMessage {
  factory AiChatListBackgroundJobsResponse({
    $core.Iterable<AiChatBackgroundJobItem>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  AiChatListBackgroundJobsResponse._();

  factory AiChatListBackgroundJobsResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatListBackgroundJobsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatListBackgroundJobsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<AiChatBackgroundJobItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: AiChatBackgroundJobItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListBackgroundJobsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatListBackgroundJobsResponse copyWith(
          void Function(AiChatListBackgroundJobsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as AiChatListBackgroundJobsResponse))
          as AiChatListBackgroundJobsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatListBackgroundJobsResponse create() =>
      AiChatListBackgroundJobsResponse._();
  @$core.override
  AiChatListBackgroundJobsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatListBackgroundJobsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AiChatListBackgroundJobsResponse>(
          create);
  static AiChatListBackgroundJobsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AiChatBackgroundJobItem> get items => $_getList(0);
}

class AiChatGetTaskChecklistSuggestionsRequest extends $pb.GeneratedMessage {
  factory AiChatGetTaskChecklistSuggestionsRequest({
    $core.String? taskType,
  }) {
    final result = create();
    if (taskType != null) result.taskType = taskType;
    return result;
  }

  AiChatGetTaskChecklistSuggestionsRequest._();

  factory AiChatGetTaskChecklistSuggestionsRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetTaskChecklistSuggestionsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetTaskChecklistSuggestionsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetTaskChecklistSuggestionsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetTaskChecklistSuggestionsRequest copyWith(
          void Function(AiChatGetTaskChecklistSuggestionsRequest) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatGetTaskChecklistSuggestionsRequest))
          as AiChatGetTaskChecklistSuggestionsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetTaskChecklistSuggestionsRequest create() =>
      AiChatGetTaskChecklistSuggestionsRequest._();
  @$core.override
  AiChatGetTaskChecklistSuggestionsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetTaskChecklistSuggestionsRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AiChatGetTaskChecklistSuggestionsRequest>(create);
  static AiChatGetTaskChecklistSuggestionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskType => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskType() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskType() => $_clearField(1);
}

class AiChatGetTaskChecklistSuggestionsResponse extends $pb.GeneratedMessage {
  factory AiChatGetTaskChecklistSuggestionsResponse({
    $core.String? taskType,
    $core.Iterable<$core.String>? items,
  }) {
    final result = create();
    if (taskType != null) result.taskType = taskType;
    if (items != null) result.items.addAll(items);
    return result;
  }

  AiChatGetTaskChecklistSuggestionsResponse._();

  factory AiChatGetTaskChecklistSuggestionsResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AiChatGetTaskChecklistSuggestionsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AiChatGetTaskChecklistSuggestionsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'taskType')
    ..pPS(2, _omitFieldNames ? '' : 'items')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetTaskChecklistSuggestionsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AiChatGetTaskChecklistSuggestionsResponse copyWith(
          void Function(AiChatGetTaskChecklistSuggestionsResponse) updates) =>
      super.copyWith((message) =>
              updates(message as AiChatGetTaskChecklistSuggestionsResponse))
          as AiChatGetTaskChecklistSuggestionsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AiChatGetTaskChecklistSuggestionsResponse create() =>
      AiChatGetTaskChecklistSuggestionsResponse._();
  @$core.override
  AiChatGetTaskChecklistSuggestionsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AiChatGetTaskChecklistSuggestionsResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
          AiChatGetTaskChecklistSuggestionsResponse>(create);
  static AiChatGetTaskChecklistSuggestionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get taskType => $_getSZ(0);
  @$pb.TagNumber(1)
  set taskType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskType() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskType() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get items => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
