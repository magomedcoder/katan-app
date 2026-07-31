// This is a generated file - do not edit.
//
// Generated from account.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'chat.pb.dart' as $2;
import 'common.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class AccountAddress extends $pb.GeneratedMessage {
  factory AccountAddress({
    $fixnum.Int64? id,
    $core.String? label,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (label != null) result.label = label;
    return result;
  }

  AccountAddress._();

  factory AccountAddress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountAddress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountAddress',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'label')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountAddress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountAddress copyWith(void Function(AccountAddress) updates) =>
      super.copyWith((message) => updates(message as AccountAddress))
          as AccountAddress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountAddress create() => AccountAddress._();
  @$core.override
  AccountAddress createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccountAddress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountAddress>(create);
  static AccountAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
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
}

class AccountExport extends $pb.GeneratedMessage {
  factory AccountExport({
    $core.String? id,
    $core.bool? progress,
    $core.String? fileName,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (progress != null) result.progress = progress;
    if (fileName != null) result.fileName = fileName;
    return result;
  }

  AccountExport._();

  factory AccountExport.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountExport.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountExport',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'progress')
    ..aOS(3, _omitFieldNames ? '' : 'fileName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountExport clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountExport copyWith(void Function(AccountExport) updates) =>
      super.copyWith((message) => updates(message as AccountExport))
          as AccountExport;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountExport create() => AccountExport._();
  @$core.override
  AccountExport createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccountExport getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountExport>(create);
  static AccountExport? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get progress => $_getBF(1);
  @$pb.TagNumber(2)
  set progress($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProgress() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgress() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fileName => $_getSZ(2);
  @$pb.TagNumber(3)
  set fileName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFileName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileName() => $_clearField(3);
}

class Notification extends $pb.GeneratedMessage {
  factory Notification({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? description,
    $core.String? type,
    $fixnum.Int64? taskId,
    $fixnum.Int64? createdAt,
    $core.bool? read,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    if (type != null) result.type = type;
    if (taskId != null) result.taskId = taskId;
    if (createdAt != null) result.createdAt = createdAt;
    if (read != null) result.read = read;
    return result;
  }

  Notification._();

  factory Notification.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Notification.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Notification',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'type')
    ..aInt64(5, _omitFieldNames ? '' : 'taskId')
    ..aInt64(6, _omitFieldNames ? '' : 'createdAt')
    ..aOB(7, _omitFieldNames ? '' : 'read')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Notification clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Notification copyWith(void Function(Notification) updates) =>
      super.copyWith((message) => updates(message as Notification))
          as Notification;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Notification create() => Notification._();
  @$core.override
  Notification createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Notification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Notification>(create);
  static Notification? _defaultInstance;

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
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(3);
  @$pb.TagNumber(4)
  set type($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get taskId => $_getI64(4);
  @$pb.TagNumber(5)
  set taskId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTaskId() => $_has(4);
  @$pb.TagNumber(5)
  void clearTaskId() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createdAt => $_getI64(5);
  @$pb.TagNumber(6)
  set createdAt($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get read => $_getBF(6);
  @$pb.TagNumber(7)
  set read($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRead() => $_has(6);
  @$pb.TagNumber(7)
  void clearRead() => $_clearField(7);
}

class GetAccountRequest extends $pb.GeneratedMessage {
  factory GetAccountRequest({
    $core.String? agent,
  }) {
    final result = create();
    if (agent != null) result.agent = agent;
    return result;
  }

  GetAccountRequest._();

  factory GetAccountRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAccountRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAccountRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'agent')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountRequest copyWith(void Function(GetAccountRequest) updates) =>
      super.copyWith((message) => updates(message as GetAccountRequest))
          as GetAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountRequest create() => GetAccountRequest._();
  @$core.override
  GetAccountRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAccountRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAccountRequest>(create);
  static GetAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get agent => $_getSZ(0);
  @$pb.TagNumber(1)
  set agent($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAgent() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgent() => $_clearField(1);
}

class GetAccountResponse_Active extends $pb.GeneratedMessage {
  factory GetAccountResponse_Active({
    $fixnum.Int64? address,
    $core.Iterable<$core.String>? nodes,
    $core.Iterable<$core.String>? cables,
    $core.Iterable<$core.String>? coverageArea,
    $core.Iterable<$core.String>? polygons,
    $core.Iterable<$core.String>? buildings,
    $core.Iterable<$fixnum.Int64>? tags,
    $core.int? mode,
    $core.int? objectNode,
  }) {
    final result = create();
    if (address != null) result.address = address;
    if (nodes != null) result.nodes.addAll(nodes);
    if (cables != null) result.cables.addAll(cables);
    if (coverageArea != null) result.coverageArea.addAll(coverageArea);
    if (polygons != null) result.polygons.addAll(polygons);
    if (buildings != null) result.buildings.addAll(buildings);
    if (tags != null) result.tags.addAll(tags);
    if (mode != null) result.mode = mode;
    if (objectNode != null) result.objectNode = objectNode;
    return result;
  }

  GetAccountResponse_Active._();

  factory GetAccountResponse_Active.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAccountResponse_Active.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAccountResponse.Active',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'address')
    ..pPS(2, _omitFieldNames ? '' : 'nodes')
    ..pPS(3, _omitFieldNames ? '' : 'cables')
    ..pPS(4, _omitFieldNames ? '' : 'coverageArea')
    ..pPS(5, _omitFieldNames ? '' : 'polygons')
    ..pPS(6, _omitFieldNames ? '' : 'buildings')
    ..p<$fixnum.Int64>(7, _omitFieldNames ? '' : 'tags', $pb.PbFieldType.K6)
    ..aI(8, _omitFieldNames ? '' : 'mode')
    ..aI(9, _omitFieldNames ? '' : 'objectNode', protoName: 'objectNode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountResponse_Active clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountResponse_Active copyWith(
          void Function(GetAccountResponse_Active) updates) =>
      super.copyWith((message) => updates(message as GetAccountResponse_Active))
          as GetAccountResponse_Active;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountResponse_Active create() => GetAccountResponse_Active._();
  @$core.override
  GetAccountResponse_Active createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAccountResponse_Active getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAccountResponse_Active>(create);
  static GetAccountResponse_Active? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get address => $_getI64(0);
  @$pb.TagNumber(1)
  set address($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get nodes => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get cables => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get coverageArea => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get polygons => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get buildings => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<$fixnum.Int64> get tags => $_getList(6);

  @$pb.TagNumber(8)
  $core.int get mode => $_getIZ(7);
  @$pb.TagNumber(8)
  set mode($core.int value) => $_setSignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMode() => $_has(7);
  @$pb.TagNumber(8)
  void clearMode() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get objectNode => $_getIZ(8);
  @$pb.TagNumber(9)
  set objectNode($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasObjectNode() => $_has(8);
  @$pb.TagNumber(9)
  void clearObjectNode() => $_clearField(9);
}

class GetAccountResponse_Notification extends $pb.GeneratedMessage {
  factory GetAccountResponse_Notification({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) result.message = message;
    return result;
  }

  GetAccountResponse_Notification._();

  factory GetAccountResponse_Notification.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAccountResponse_Notification.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAccountResponse.Notification',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountResponse_Notification clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountResponse_Notification copyWith(
          void Function(GetAccountResponse_Notification) updates) =>
      super.copyWith(
              (message) => updates(message as GetAccountResponse_Notification))
          as GetAccountResponse_Notification;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountResponse_Notification create() =>
      GetAccountResponse_Notification._();
  @$core.override
  GetAccountResponse_Notification createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAccountResponse_Notification getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAccountResponse_Notification>(
          create);
  static GetAccountResponse_Notification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);
}

class GetAccountResponse extends $pb.GeneratedMessage {
  factory GetAccountResponse({
    $core.String? fullName,
    $core.String? username,
    $core.Iterable<$core.String>? permissions,
    $core.Iterable<$1.Tag>? tags,
    GetAccountResponse_Active? active,
    GetAccountResponse_Notification? notification,
    $core.Iterable<$core.String>? allowedLoginIps,
  }) {
    final result = create();
    if (fullName != null) result.fullName = fullName;
    if (username != null) result.username = username;
    if (permissions != null) result.permissions.addAll(permissions);
    if (tags != null) result.tags.addAll(tags);
    if (active != null) result.active = active;
    if (notification != null) result.notification = notification;
    if (allowedLoginIps != null) result.allowedLoginIps.addAll(allowedLoginIps);
    return result;
  }

  GetAccountResponse._();

  factory GetAccountResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAccountResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAccountResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fullName')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..pPS(3, _omitFieldNames ? '' : 'permissions')
    ..pPM<$1.Tag>(4, _omitFieldNames ? '' : 'tags', subBuilder: $1.Tag.create)
    ..aOM<GetAccountResponse_Active>(5, _omitFieldNames ? '' : 'active',
        subBuilder: GetAccountResponse_Active.create)
    ..aOM<GetAccountResponse_Notification>(
        6, _omitFieldNames ? '' : 'notification',
        subBuilder: GetAccountResponse_Notification.create)
    ..pPS(7, _omitFieldNames ? '' : 'allowedLoginIps')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountResponse copyWith(void Function(GetAccountResponse) updates) =>
      super.copyWith((message) => updates(message as GetAccountResponse))
          as GetAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountResponse create() => GetAccountResponse._();
  @$core.override
  GetAccountResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAccountResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAccountResponse>(create);
  static GetAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fullName => $_getSZ(0);
  @$pb.TagNumber(1)
  set fullName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFullName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFullName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get permissions => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$1.Tag> get tags => $_getList(3);

  @$pb.TagNumber(5)
  GetAccountResponse_Active get active => $_getN(4);
  @$pb.TagNumber(5)
  set active(GetAccountResponse_Active value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasActive() => $_has(4);
  @$pb.TagNumber(5)
  void clearActive() => $_clearField(5);
  @$pb.TagNumber(5)
  GetAccountResponse_Active ensureActive() => $_ensure(4);

  @$pb.TagNumber(6)
  GetAccountResponse_Notification get notification => $_getN(5);
  @$pb.TagNumber(6)
  set notification(GetAccountResponse_Notification value) =>
      $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasNotification() => $_has(5);
  @$pb.TagNumber(6)
  void clearNotification() => $_clearField(6);
  @$pb.TagNumber(6)
  GetAccountResponse_Notification ensureNotification() => $_ensure(5);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get allowedLoginIps => $_getList(6);
}

class EditAccountRequest extends $pb.GeneratedMessage {
  factory EditAccountRequest({
    $fixnum.Int64? addressId,
    $core.int? modeId,
  }) {
    final result = create();
    if (addressId != null) result.addressId = addressId;
    if (modeId != null) result.modeId = modeId;
    return result;
  }

  EditAccountRequest._();

  factory EditAccountRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditAccountRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditAccountRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'addressId')
    ..aI(2, _omitFieldNames ? '' : 'modeId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditAccountRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditAccountRequest copyWith(void Function(EditAccountRequest) updates) =>
      super.copyWith((message) => updates(message as EditAccountRequest))
          as EditAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditAccountRequest create() => EditAccountRequest._();
  @$core.override
  EditAccountRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditAccountRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditAccountRequest>(create);
  static EditAccountRequest? _defaultInstance;

  /// *
  /// address_id:
  /// -1 - Полный доступ
  /// -2 - Объекты без адреса
  /// -3 - Все доступные объекты
  /// ...
  ///
  /// mode_id:
  /// 1 - текущий
  /// 2 - смешанный
  /// 3 - планируемый
  @$pb.TagNumber(1)
  $fixnum.Int64 get addressId => $_getI64(0);
  @$pb.TagNumber(1)
  set addressId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAddressId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddressId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get modeId => $_getIZ(1);
  @$pb.TagNumber(2)
  set modeId($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasModeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearModeId() => $_clearField(2);
}

class EditAccountResponse extends $pb.GeneratedMessage {
  factory EditAccountResponse() => create();

  EditAccountResponse._();

  factory EditAccountResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditAccountResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditAccountResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditAccountResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditAccountResponse copyWith(void Function(EditAccountResponse) updates) =>
      super.copyWith((message) => updates(message as EditAccountResponse))
          as EditAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditAccountResponse create() => EditAccountResponse._();
  @$core.override
  EditAccountResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditAccountResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditAccountResponse>(create);
  static EditAccountResponse? _defaultInstance;
}

class ChangePasswordRequest extends $pb.GeneratedMessage {
  factory ChangePasswordRequest({
    $core.String? old,
    $core.String? password,
  }) {
    final result = create();
    if (old != null) result.old = old;
    if (password != null) result.password = password;
    return result;
  }

  ChangePasswordRequest._();

  factory ChangePasswordRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChangePasswordRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChangePasswordRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'old')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangePasswordRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangePasswordRequest copyWith(
          void Function(ChangePasswordRequest) updates) =>
      super.copyWith((message) => updates(message as ChangePasswordRequest))
          as ChangePasswordRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest create() => ChangePasswordRequest._();
  @$core.override
  ChangePasswordRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangePasswordRequest>(create);
  static ChangePasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get old => $_getSZ(0);
  @$pb.TagNumber(1)
  set old($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOld() => $_has(0);
  @$pb.TagNumber(1)
  void clearOld() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);
}

class ChangePasswordResponse extends $pb.GeneratedMessage {
  factory ChangePasswordResponse() => create();

  ChangePasswordResponse._();

  factory ChangePasswordResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChangePasswordResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChangePasswordResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangePasswordResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangePasswordResponse copyWith(
          void Function(ChangePasswordResponse) updates) =>
      super.copyWith((message) => updates(message as ChangePasswordResponse))
          as ChangePasswordResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangePasswordResponse create() => ChangePasswordResponse._();
  @$core.override
  ChangePasswordResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangePasswordResponse>(create);
  static ChangePasswordResponse? _defaultInstance;
}

class GetAccountAddressRequest extends $pb.GeneratedMessage {
  factory GetAccountAddressRequest() => create();

  GetAccountAddressRequest._();

  factory GetAccountAddressRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAccountAddressRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAccountAddressRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountAddressRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountAddressRequest copyWith(
          void Function(GetAccountAddressRequest) updates) =>
      super.copyWith((message) => updates(message as GetAccountAddressRequest))
          as GetAccountAddressRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountAddressRequest create() => GetAccountAddressRequest._();
  @$core.override
  GetAccountAddressRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAccountAddressRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAccountAddressRequest>(create);
  static GetAccountAddressRequest? _defaultInstance;
}

class GetAccountAddressResponse extends $pb.GeneratedMessage {
  factory GetAccountAddressResponse({
    $core.Iterable<AccountAddress>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  GetAccountAddressResponse._();

  factory GetAccountAddressResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetAccountAddressResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetAccountAddressResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<AccountAddress>(1, _omitFieldNames ? '' : 'items',
        subBuilder: AccountAddress.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountAddressResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetAccountAddressResponse copyWith(
          void Function(GetAccountAddressResponse) updates) =>
      super.copyWith((message) => updates(message as GetAccountAddressResponse))
          as GetAccountAddressResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetAccountAddressResponse create() => GetAccountAddressResponse._();
  @$core.override
  GetAccountAddressResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetAccountAddressResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetAccountAddressResponse>(create);
  static GetAccountAddressResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AccountAddress> get items => $_getList(0);
}

class AccountExportRequest extends $pb.GeneratedMessage {
  factory AccountExportRequest() => create();

  AccountExportRequest._();

  factory AccountExportRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountExportRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountExportRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountExportRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountExportRequest copyWith(void Function(AccountExportRequest) updates) =>
      super.copyWith((message) => updates(message as AccountExportRequest))
          as AccountExportRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountExportRequest create() => AccountExportRequest._();
  @$core.override
  AccountExportRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccountExportRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountExportRequest>(create);
  static AccountExportRequest? _defaultInstance;
}

class AccountExportResponse extends $pb.GeneratedMessage {
  factory AccountExportResponse({
    $core.Iterable<AccountExport>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  AccountExportResponse._();

  factory AccountExportResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountExportResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountExportResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<AccountExport>(1, _omitFieldNames ? '' : 'items',
        subBuilder: AccountExport.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountExportResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountExportResponse copyWith(
          void Function(AccountExportResponse) updates) =>
      super.copyWith((message) => updates(message as AccountExportResponse))
          as AccountExportResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountExportResponse create() => AccountExportResponse._();
  @$core.override
  AccountExportResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccountExportResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountExportResponse>(create);
  static AccountExportResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AccountExport> get items => $_getList(0);
}

class GetNotificationsRequest extends $pb.GeneratedMessage {
  factory GetNotificationsRequest() => create();

  GetNotificationsRequest._();

  factory GetNotificationsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetNotificationsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetNotificationsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNotificationsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNotificationsRequest copyWith(
          void Function(GetNotificationsRequest) updates) =>
      super.copyWith((message) => updates(message as GetNotificationsRequest))
          as GetNotificationsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNotificationsRequest create() => GetNotificationsRequest._();
  @$core.override
  GetNotificationsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetNotificationsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetNotificationsRequest>(create);
  static GetNotificationsRequest? _defaultInstance;
}

class GetNotificationsResponse extends $pb.GeneratedMessage {
  factory GetNotificationsResponse({
    $core.Iterable<Notification>? items,
    $fixnum.Int64? unreadCount,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    if (unreadCount != null) result.unreadCount = unreadCount;
    return result;
  }

  GetNotificationsResponse._();

  factory GetNotificationsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetNotificationsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetNotificationsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<Notification>(1, _omitFieldNames ? '' : 'items',
        subBuilder: Notification.create)
    ..aInt64(2, _omitFieldNames ? '' : 'unreadCount')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNotificationsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNotificationsResponse copyWith(
          void Function(GetNotificationsResponse) updates) =>
      super.copyWith((message) => updates(message as GetNotificationsResponse))
          as GetNotificationsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNotificationsResponse create() => GetNotificationsResponse._();
  @$core.override
  GetNotificationsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetNotificationsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetNotificationsResponse>(create);
  static GetNotificationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Notification> get items => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get unreadCount => $_getI64(1);
  @$pb.TagNumber(2)
  set unreadCount($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUnreadCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnreadCount() => $_clearField(2);
}

class MarkNotificationReadRequest extends $pb.GeneratedMessage {
  factory MarkNotificationReadRequest({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  MarkNotificationReadRequest._();

  factory MarkNotificationReadRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MarkNotificationReadRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MarkNotificationReadRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarkNotificationReadRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarkNotificationReadRequest copyWith(
          void Function(MarkNotificationReadRequest) updates) =>
      super.copyWith(
              (message) => updates(message as MarkNotificationReadRequest))
          as MarkNotificationReadRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarkNotificationReadRequest create() =>
      MarkNotificationReadRequest._();
  @$core.override
  MarkNotificationReadRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MarkNotificationReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MarkNotificationReadRequest>(create);
  static MarkNotificationReadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class MarkNotificationReadResponse extends $pb.GeneratedMessage {
  factory MarkNotificationReadResponse() => create();

  MarkNotificationReadResponse._();

  factory MarkNotificationReadResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MarkNotificationReadResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MarkNotificationReadResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarkNotificationReadResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarkNotificationReadResponse copyWith(
          void Function(MarkNotificationReadResponse) updates) =>
      super.copyWith(
              (message) => updates(message as MarkNotificationReadResponse))
          as MarkNotificationReadResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarkNotificationReadResponse create() =>
      MarkNotificationReadResponse._();
  @$core.override
  MarkNotificationReadResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MarkNotificationReadResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MarkNotificationReadResponse>(create);
  static MarkNotificationReadResponse? _defaultInstance;
}

class MarkAllNotificationsReadRequest extends $pb.GeneratedMessage {
  factory MarkAllNotificationsReadRequest() => create();

  MarkAllNotificationsReadRequest._();

  factory MarkAllNotificationsReadRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MarkAllNotificationsReadRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MarkAllNotificationsReadRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarkAllNotificationsReadRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarkAllNotificationsReadRequest copyWith(
          void Function(MarkAllNotificationsReadRequest) updates) =>
      super.copyWith(
              (message) => updates(message as MarkAllNotificationsReadRequest))
          as MarkAllNotificationsReadRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarkAllNotificationsReadRequest create() =>
      MarkAllNotificationsReadRequest._();
  @$core.override
  MarkAllNotificationsReadRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MarkAllNotificationsReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MarkAllNotificationsReadRequest>(
          create);
  static MarkAllNotificationsReadRequest? _defaultInstance;
}

class MarkAllNotificationsReadResponse extends $pb.GeneratedMessage {
  factory MarkAllNotificationsReadResponse() => create();

  MarkAllNotificationsReadResponse._();

  factory MarkAllNotificationsReadResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MarkAllNotificationsReadResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MarkAllNotificationsReadResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarkAllNotificationsReadResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarkAllNotificationsReadResponse copyWith(
          void Function(MarkAllNotificationsReadResponse) updates) =>
      super.copyWith(
              (message) => updates(message as MarkAllNotificationsReadResponse))
          as MarkAllNotificationsReadResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarkAllNotificationsReadResponse create() =>
      MarkAllNotificationsReadResponse._();
  @$core.override
  MarkAllNotificationsReadResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MarkAllNotificationsReadResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MarkAllNotificationsReadResponse>(
          create);
  static MarkAllNotificationsReadResponse? _defaultInstance;
}

class SearchLocal extends $pb.GeneratedMessage {
  factory SearchLocal({
    $fixnum.Int64? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  SearchLocal._();

  factory SearchLocal.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SearchLocal.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchLocal',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchLocal clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchLocal copyWith(void Function(SearchLocal) updates) =>
      super.copyWith((message) => updates(message as SearchLocal))
          as SearchLocal;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchLocal create() => SearchLocal._();
  @$core.override
  SearchLocal createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SearchLocal getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchLocal>(create);
  static SearchLocal? _defaultInstance;

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
}

class SearchDaData extends $pb.GeneratedMessage {
  factory SearchDaData({
    $core.String? name,
    $1.Point? geom,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (geom != null) result.geom = geom;
    return result;
  }

  SearchDaData._();

  factory SearchDaData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SearchDaData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SearchDaData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$1.Point>(2, _omitFieldNames ? '' : 'geom',
        subBuilder: $1.Point.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchDaData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SearchDaData copyWith(void Function(SearchDaData) updates) =>
      super.copyWith((message) => updates(message as SearchDaData))
          as SearchDaData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SearchDaData create() => SearchDaData._();
  @$core.override
  SearchDaData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SearchDaData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SearchDaData>(create);
  static SearchDaData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.Point get geom => $_getN(1);
  @$pb.TagNumber(2)
  set geom($1.Point value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGeom() => $_has(1);
  @$pb.TagNumber(2)
  void clearGeom() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Point ensureGeom() => $_ensure(1);
}

enum AccountSearchItem_SearchItem { local, dadata, notSet }

class AccountSearchItem extends $pb.GeneratedMessage {
  factory AccountSearchItem({
    SearchLocal? local,
    SearchDaData? dadata,
  }) {
    final result = create();
    if (local != null) result.local = local;
    if (dadata != null) result.dadata = dadata;
    return result;
  }

  AccountSearchItem._();

  factory AccountSearchItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountSearchItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AccountSearchItem_SearchItem>
      _AccountSearchItem_SearchItemByTag = {
    1: AccountSearchItem_SearchItem.local,
    2: AccountSearchItem_SearchItem.dadata,
    0: AccountSearchItem_SearchItem.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountSearchItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SearchLocal>(1, _omitFieldNames ? '' : 'local',
        subBuilder: SearchLocal.create)
    ..aOM<SearchDaData>(2, _omitFieldNames ? '' : 'dadata',
        subBuilder: SearchDaData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountSearchItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountSearchItem copyWith(void Function(AccountSearchItem) updates) =>
      super.copyWith((message) => updates(message as AccountSearchItem))
          as AccountSearchItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountSearchItem create() => AccountSearchItem._();
  @$core.override
  AccountSearchItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccountSearchItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountSearchItem>(create);
  static AccountSearchItem? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  AccountSearchItem_SearchItem whichSearchItem() =>
      _AccountSearchItem_SearchItemByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearSearchItem() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SearchLocal get local => $_getN(0);
  @$pb.TagNumber(1)
  set local(SearchLocal value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLocal() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocal() => $_clearField(1);
  @$pb.TagNumber(1)
  SearchLocal ensureLocal() => $_ensure(0);

  @$pb.TagNumber(2)
  SearchDaData get dadata => $_getN(1);
  @$pb.TagNumber(2)
  set dadata(SearchDaData value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDadata() => $_has(1);
  @$pb.TagNumber(2)
  void clearDadata() => $_clearField(2);
  @$pb.TagNumber(2)
  SearchDaData ensureDadata() => $_ensure(1);
}

enum AccountSearchRequest_Search { local, dadata, notSet }

class AccountSearchRequest extends $pb.GeneratedMessage {
  factory AccountSearchRequest({
    $1.Pagination? pagination,
    $core.String? local,
    $core.String? dadata,
  }) {
    final result = create();
    if (pagination != null) result.pagination = pagination;
    if (local != null) result.local = local;
    if (dadata != null) result.dadata = dadata;
    return result;
  }

  AccountSearchRequest._();

  factory AccountSearchRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountSearchRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AccountSearchRequest_Search>
      _AccountSearchRequest_SearchByTag = {
    2: AccountSearchRequest_Search.local,
    3: AccountSearchRequest_Search.dadata,
    0: AccountSearchRequest_Search.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountSearchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<$1.Pagination>(1, _omitFieldNames ? '' : 'pagination',
        subBuilder: $1.Pagination.create)
    ..aOS(2, _omitFieldNames ? '' : 'local')
    ..aOS(3, _omitFieldNames ? '' : 'dadata')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountSearchRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountSearchRequest copyWith(void Function(AccountSearchRequest) updates) =>
      super.copyWith((message) => updates(message as AccountSearchRequest))
          as AccountSearchRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountSearchRequest create() => AccountSearchRequest._();
  @$core.override
  AccountSearchRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccountSearchRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountSearchRequest>(create);
  static AccountSearchRequest? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  AccountSearchRequest_Search whichSearch() =>
      _AccountSearchRequest_SearchByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearSearch() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.Pagination get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($1.Pagination value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Pagination ensurePagination() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get local => $_getSZ(1);
  @$pb.TagNumber(2)
  set local($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLocal() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocal() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get dadata => $_getSZ(2);
  @$pb.TagNumber(3)
  set dadata($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDadata() => $_has(2);
  @$pb.TagNumber(3)
  void clearDadata() => $_clearField(3);
}

class AccountSearchResponse extends $pb.GeneratedMessage {
  factory AccountSearchResponse({
    $fixnum.Int64? total,
    $core.Iterable<AccountSearchItem>? items,
  }) {
    final result = create();
    if (total != null) result.total = total;
    if (items != null) result.items.addAll(items);
    return result;
  }

  AccountSearchResponse._();

  factory AccountSearchResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountSearchResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountSearchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'total')
    ..pPM<AccountSearchItem>(2, _omitFieldNames ? '' : 'items',
        subBuilder: AccountSearchItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountSearchResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountSearchResponse copyWith(
          void Function(AccountSearchResponse) updates) =>
      super.copyWith((message) => updates(message as AccountSearchResponse))
          as AccountSearchResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountSearchResponse create() => AccountSearchResponse._();
  @$core.override
  AccountSearchResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccountSearchResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountSearchResponse>(create);
  static AccountSearchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get total => $_getI64(0);
  @$pb.TagNumber(1)
  set total($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotal() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<AccountSearchItem> get items => $_getList(1);
}

class AccountSubscribeRequest extends $pb.GeneratedMessage {
  factory AccountSubscribeRequest() => create();

  AccountSubscribeRequest._();

  factory AccountSubscribeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountSubscribeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountSubscribeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountSubscribeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountSubscribeRequest copyWith(
          void Function(AccountSubscribeRequest) updates) =>
      super.copyWith((message) => updates(message as AccountSubscribeRequest))
          as AccountSubscribeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountSubscribeRequest create() => AccountSubscribeRequest._();
  @$core.override
  AccountSubscribeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccountSubscribeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountSubscribeRequest>(create);
  static AccountSubscribeRequest? _defaultInstance;
}

enum AccountEvent_Payload { chat, notSet }

class AccountEvent extends $pb.GeneratedMessage {
  factory AccountEvent({
    $2.ChatEvent? chat,
  }) {
    final result = create();
    if (chat != null) result.chat = chat;
    return result;
  }

  AccountEvent._();

  factory AccountEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AccountEvent_Payload>
      _AccountEvent_PayloadByTag = {
    1: AccountEvent_Payload.chat,
    0: AccountEvent_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<$2.ChatEvent>(1, _omitFieldNames ? '' : 'chat',
        subBuilder: $2.ChatEvent.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountEvent copyWith(void Function(AccountEvent) updates) =>
      super.copyWith((message) => updates(message as AccountEvent))
          as AccountEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountEvent create() => AccountEvent._();
  @$core.override
  AccountEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccountEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountEvent>(create);
  static AccountEvent? _defaultInstance;

  @$pb.TagNumber(1)
  AccountEvent_Payload whichPayload() =>
      _AccountEvent_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $2.ChatEvent get chat => $_getN(0);
  @$pb.TagNumber(1)
  set chat($2.ChatEvent value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasChat() => $_has(0);
  @$pb.TagNumber(1)
  void clearChat() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.ChatEvent ensureChat() => $_ensure(0);
}

enum AccountClientEvent_Payload { chat, notSet }

class AccountClientEvent extends $pb.GeneratedMessage {
  factory AccountClientEvent({
    $2.ChatClientEvent? chat,
  }) {
    final result = create();
    if (chat != null) result.chat = chat;
    return result;
  }

  AccountClientEvent._();

  factory AccountClientEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountClientEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AccountClientEvent_Payload>
      _AccountClientEvent_PayloadByTag = {
    1: AccountClientEvent_Payload.chat,
    0: AccountClientEvent_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountClientEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<$2.ChatClientEvent>(1, _omitFieldNames ? '' : 'chat',
        subBuilder: $2.ChatClientEvent.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountClientEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountClientEvent copyWith(void Function(AccountClientEvent) updates) =>
      super.copyWith((message) => updates(message as AccountClientEvent))
          as AccountClientEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountClientEvent create() => AccountClientEvent._();
  @$core.override
  AccountClientEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AccountClientEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountClientEvent>(create);
  static AccountClientEvent? _defaultInstance;

  @$pb.TagNumber(1)
  AccountClientEvent_Payload whichPayload() =>
      _AccountClientEvent_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $2.ChatClientEvent get chat => $_getN(0);
  @$pb.TagNumber(1)
  set chat($2.ChatClientEvent value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasChat() => $_has(0);
  @$pb.TagNumber(1)
  void clearChat() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.ChatClientEvent ensureChat() => $_ensure(0);
}

class UpdateAllowedLoginIpsRequest extends $pb.GeneratedMessage {
  factory UpdateAllowedLoginIpsRequest({
    $core.Iterable<$core.String>? ips,
  }) {
    final result = create();
    if (ips != null) result.ips.addAll(ips);
    return result;
  }

  UpdateAllowedLoginIpsRequest._();

  factory UpdateAllowedLoginIpsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateAllowedLoginIpsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateAllowedLoginIpsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'ips')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAllowedLoginIpsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAllowedLoginIpsRequest copyWith(
          void Function(UpdateAllowedLoginIpsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as UpdateAllowedLoginIpsRequest))
          as UpdateAllowedLoginIpsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateAllowedLoginIpsRequest create() =>
      UpdateAllowedLoginIpsRequest._();
  @$core.override
  UpdateAllowedLoginIpsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateAllowedLoginIpsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateAllowedLoginIpsRequest>(create);
  static UpdateAllowedLoginIpsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get ips => $_getList(0);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
