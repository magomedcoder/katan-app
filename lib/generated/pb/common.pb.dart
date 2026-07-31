// This is a generated file - do not edit.
//
// Generated from common.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class KatanMethodConf extends $pb.GeneratedMessage {
  factory KatanMethodConf({
    $core.Iterable<$core.String>? permissions,
  }) {
    final result = create();
    if (permissions != null) result.permissions.addAll(permissions);
    return result;
  }

  KatanMethodConf._();

  factory KatanMethodConf.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory KatanMethodConf.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KatanMethodConf',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'permissions')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KatanMethodConf clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KatanMethodConf copyWith(void Function(KatanMethodConf) updates) =>
      super.copyWith((message) => updates(message as KatanMethodConf))
          as KatanMethodConf;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KatanMethodConf create() => KatanMethodConf._();
  @$core.override
  KatanMethodConf createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static KatanMethodConf getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KatanMethodConf>(create);
  static KatanMethodConf? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get permissions => $_getList(0);
}

class User extends $pb.GeneratedMessage {
  factory User({
    $fixnum.Int64? id,
    $core.String? username,
    $core.String? name,
    $core.String? surname,
    $core.String? roleTitle,
    $core.String? lastVisitAt,
    $core.int? status,
    $core.String? authType,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (username != null) result.username = username;
    if (name != null) result.name = name;
    if (surname != null) result.surname = surname;
    if (roleTitle != null) result.roleTitle = roleTitle;
    if (lastVisitAt != null) result.lastVisitAt = lastVisitAt;
    if (status != null) result.status = status;
    if (authType != null) result.authType = authType;
    return result;
  }

  User._();

  factory User.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory User.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'User',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'surname')
    ..aOS(5, _omitFieldNames ? '' : 'roleTitle')
    ..aOS(6, _omitFieldNames ? '' : 'lastVisitAt')
    ..aI(7, _omitFieldNames ? '' : 'status')
    ..aOS(8, _omitFieldNames ? '' : 'authType')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  User clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  User copyWith(void Function(User) updates) =>
      super.copyWith((message) => updates(message as User)) as User;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static User create() => User._();
  @$core.override
  User createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static User getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<User>(create);
  static User? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get surname => $_getSZ(3);
  @$pb.TagNumber(4)
  set surname($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSurname() => $_has(3);
  @$pb.TagNumber(4)
  void clearSurname() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get roleTitle => $_getSZ(4);
  @$pb.TagNumber(5)
  set roleTitle($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRoleTitle() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoleTitle() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get lastVisitAt => $_getSZ(5);
  @$pb.TagNumber(6)
  set lastVisitAt($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLastVisitAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastVisitAt() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get status => $_getIZ(6);
  @$pb.TagNumber(7)
  set status($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get authType => $_getSZ(7);
  @$pb.TagNumber(8)
  set authType($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasAuthType() => $_has(7);
  @$pb.TagNumber(8)
  void clearAuthType() => $_clearField(8);
}

class Point extends $pb.GeneratedMessage {
  factory Point({
    $core.double? lat,
    $core.double? lng,
  }) {
    final result = create();
    if (lat != null) result.lat = lat;
    if (lng != null) result.lng = lng;
    return result;
  }

  Point._();

  factory Point.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Point.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Point',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'lat')
    ..aD(2, _omitFieldNames ? '' : 'lng')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Point clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Point copyWith(void Function(Point) updates) =>
      super.copyWith((message) => updates(message as Point)) as Point;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Point create() => Point._();
  @$core.override
  Point createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Point getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Point>(create);
  static Point? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get lng => $_getN(1);
  @$pb.TagNumber(2)
  set lng($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLng() => $_has(1);
  @$pb.TagNumber(2)
  void clearLng() => $_clearField(2);
}

class PointBounds extends $pb.GeneratedMessage {
  factory PointBounds({
    Point? southWest,
    Point? northEast,
  }) {
    final result = create();
    if (southWest != null) result.southWest = southWest;
    if (northEast != null) result.northEast = northEast;
    return result;
  }

  PointBounds._();

  factory PointBounds.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PointBounds.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PointBounds',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<Point>(1, _omitFieldNames ? '' : 'southWest',
        subBuilder: Point.create)
    ..aOM<Point>(2, _omitFieldNames ? '' : 'northEast',
        subBuilder: Point.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PointBounds clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PointBounds copyWith(void Function(PointBounds) updates) =>
      super.copyWith((message) => updates(message as PointBounds))
          as PointBounds;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PointBounds create() => PointBounds._();
  @$core.override
  PointBounds createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PointBounds getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PointBounds>(create);
  static PointBounds? _defaultInstance;

  @$pb.TagNumber(1)
  Point get southWest => $_getN(0);
  @$pb.TagNumber(1)
  set southWest(Point value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSouthWest() => $_has(0);
  @$pb.TagNumber(1)
  void clearSouthWest() => $_clearField(1);
  @$pb.TagNumber(1)
  Point ensureSouthWest() => $_ensure(0);

  @$pb.TagNumber(2)
  Point get northEast => $_getN(1);
  @$pb.TagNumber(2)
  set northEast(Point value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNorthEast() => $_has(1);
  @$pb.TagNumber(2)
  void clearNorthEast() => $_clearField(2);
  @$pb.TagNumber(2)
  Point ensureNorthEast() => $_ensure(1);
}

class SettingField extends $pb.GeneratedMessage {
  factory SettingField({
    $fixnum.Int64? id,
    $core.String? name,
    $core.bool? enabled,
    $core.bool? required,
    $core.bool? showRequired,
    $core.bool? always,
    $core.bool? isAdd,
    $core.bool? isEdit,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (enabled != null) result.enabled = enabled;
    if (required != null) result.required = required;
    if (showRequired != null) result.showRequired = showRequired;
    if (always != null) result.always = always;
    if (isAdd != null) result.isAdd = isAdd;
    if (isEdit != null) result.isEdit = isEdit;
    return result;
  }

  SettingField._();

  factory SettingField.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SettingField.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SettingField',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'enabled')
    ..aOB(4, _omitFieldNames ? '' : 'required')
    ..aOB(5, _omitFieldNames ? '' : 'showRequired')
    ..aOB(6, _omitFieldNames ? '' : 'always')
    ..aOB(7, _omitFieldNames ? '' : 'isAdd')
    ..aOB(8, _omitFieldNames ? '' : 'isEdit')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SettingField clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SettingField copyWith(void Function(SettingField) updates) =>
      super.copyWith((message) => updates(message as SettingField))
          as SettingField;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SettingField create() => SettingField._();
  @$core.override
  SettingField createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SettingField getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SettingField>(create);
  static SettingField? _defaultInstance;

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
  $core.bool get required => $_getBF(3);
  @$pb.TagNumber(4)
  set required($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRequired() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequired() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get showRequired => $_getBF(4);
  @$pb.TagNumber(5)
  set showRequired($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasShowRequired() => $_has(4);
  @$pb.TagNumber(5)
  void clearShowRequired() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get always => $_getBF(5);
  @$pb.TagNumber(6)
  set always($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAlways() => $_has(5);
  @$pb.TagNumber(6)
  void clearAlways() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isAdd => $_getBF(6);
  @$pb.TagNumber(7)
  set isAdd($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsAdd() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsAdd() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get isEdit => $_getBF(7);
  @$pb.TagNumber(8)
  set isEdit($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIsEdit() => $_has(7);
  @$pb.TagNumber(8)
  void clearIsEdit() => $_clearField(8);
}

class EditSettingField extends $pb.GeneratedMessage {
  factory EditSettingField({
    $fixnum.Int64? id,
    $core.bool? enabled,
    $core.bool? required,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (enabled != null) result.enabled = enabled;
    if (required != null) result.required = required;
    return result;
  }

  EditSettingField._();

  factory EditSettingField.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditSettingField.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditSettingField',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOB(2, _omitFieldNames ? '' : 'enabled')
    ..aOB(3, _omitFieldNames ? '' : 'required')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditSettingField clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditSettingField copyWith(void Function(EditSettingField) updates) =>
      super.copyWith((message) => updates(message as EditSettingField))
          as EditSettingField;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditSettingField create() => EditSettingField._();
  @$core.override
  EditSettingField createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditSettingField getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditSettingField>(create);
  static EditSettingField? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get enabled => $_getBF(1);
  @$pb.TagNumber(2)
  set enabled($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnabled() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnabled() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get required => $_getBF(2);
  @$pb.TagNumber(3)
  set required($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRequired() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequired() => $_clearField(3);
}

class Owner extends $pb.GeneratedMessage {
  factory Owner({
    $fixnum.Int64? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  Owner._();

  factory Owner.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Owner.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Owner',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Owner clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Owner copyWith(void Function(Owner) updates) =>
      super.copyWith((message) => updates(message as Owner)) as Owner;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Owner create() => Owner._();
  @$core.override
  Owner createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Owner getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Owner>(create);
  static Owner? _defaultInstance;

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

class BaseUser extends $pb.GeneratedMessage {
  factory BaseUser({
    $fixnum.Int64? id,
    $core.String? username,
    $core.String? name,
    $core.String? surname,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (username != null) result.username = username;
    if (name != null) result.name = name;
    if (surname != null) result.surname = surname;
    return result;
  }

  BaseUser._();

  factory BaseUser.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BaseUser.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BaseUser',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'surname')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BaseUser clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BaseUser copyWith(void Function(BaseUser) updates) =>
      super.copyWith((message) => updates(message as BaseUser)) as BaseUser;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseUser create() => BaseUser._();
  @$core.override
  BaseUser createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BaseUser getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BaseUser>(create);
  static BaseUser? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get surname => $_getSZ(3);
  @$pb.TagNumber(4)
  set surname($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSurname() => $_has(3);
  @$pb.TagNumber(4)
  void clearSurname() => $_clearField(4);
}

class Pagination extends $pb.GeneratedMessage {
  factory Pagination({
    $fixnum.Int64? limit,
    $fixnum.Int64? page,
  }) {
    final result = create();
    if (limit != null) result.limit = limit;
    if (page != null) result.page = page;
    return result;
  }

  Pagination._();

  factory Pagination.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Pagination.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Pagination',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'limit')
    ..aInt64(2, _omitFieldNames ? '' : 'page')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pagination clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pagination copyWith(void Function(Pagination) updates) =>
      super.copyWith((message) => updates(message as Pagination)) as Pagination;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pagination create() => Pagination._();
  @$core.override
  Pagination createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Pagination getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Pagination>(create);
  static Pagination? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get limit => $_getI64(0);
  @$pb.TagNumber(1)
  set limit($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get page => $_getI64(1);
  @$pb.TagNumber(2)
  set page($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => $_clearField(2);
}

class BreadcrumbItem extends $pb.GeneratedMessage {
  factory BreadcrumbItem({
    $core.String? id,
    $core.String? label,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (label != null) result.label = label;
    return result;
  }

  BreadcrumbItem._();

  factory BreadcrumbItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BreadcrumbItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BreadcrumbItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'label')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BreadcrumbItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BreadcrumbItem copyWith(void Function(BreadcrumbItem) updates) =>
      super.copyWith((message) => updates(message as BreadcrumbItem))
          as BreadcrumbItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BreadcrumbItem create() => BreadcrumbItem._();
  @$core.override
  BreadcrumbItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BreadcrumbItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BreadcrumbItem>(create);
  static BreadcrumbItem? _defaultInstance;

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
}

class CoverageAreaItem extends $pb.GeneratedMessage {
  factory CoverageAreaItem({
    $core.String? id,
    $core.String? title,
    $core.String? color,
    $core.int? radius,
    $core.int? state,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    if (color != null) result.color = color;
    if (radius != null) result.radius = radius;
    if (state != null) result.state = state;
    return result;
  }

  CoverageAreaItem._();

  factory CoverageAreaItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CoverageAreaItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CoverageAreaItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'color')
    ..aI(4, _omitFieldNames ? '' : 'radius')
    ..aI(5, _omitFieldNames ? '' : 'state')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CoverageAreaItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CoverageAreaItem copyWith(void Function(CoverageAreaItem) updates) =>
      super.copyWith((message) => updates(message as CoverageAreaItem))
          as CoverageAreaItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CoverageAreaItem create() => CoverageAreaItem._();
  @$core.override
  CoverageAreaItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CoverageAreaItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CoverageAreaItem>(create);
  static CoverageAreaItem? _defaultInstance;

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
  $core.String get color => $_getSZ(2);
  @$pb.TagNumber(3)
  set color($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get radius => $_getIZ(3);
  @$pb.TagNumber(4)
  set radius($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRadius() => $_has(3);
  @$pb.TagNumber(4)
  void clearRadius() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get state => $_getIZ(4);
  @$pb.TagNumber(5)
  set state($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasState() => $_has(4);
  @$pb.TagNumber(5)
  void clearState() => $_clearField(5);
}

class SelectedAdditionalFieldItem extends $pb.GeneratedMessage {
  factory SelectedAdditionalFieldItem({
    $fixnum.Int64? id,
    $core.String? value,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (value != null) result.value = value;
    return result;
  }

  SelectedAdditionalFieldItem._();

  factory SelectedAdditionalFieldItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SelectedAdditionalFieldItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SelectedAdditionalFieldItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelectedAdditionalFieldItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SelectedAdditionalFieldItem copyWith(
          void Function(SelectedAdditionalFieldItem) updates) =>
      super.copyWith(
              (message) => updates(message as SelectedAdditionalFieldItem))
          as SelectedAdditionalFieldItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelectedAdditionalFieldItem create() =>
      SelectedAdditionalFieldItem._();
  @$core.override
  SelectedAdditionalFieldItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SelectedAdditionalFieldItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SelectedAdditionalFieldItem>(create);
  static SelectedAdditionalFieldItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

class TypesCheckNodeResult extends $pb.GeneratedMessage {
  factory TypesCheckNodeResult({
    $core.String? type,
    $core.String? typeName,
    $fixnum.Int64? id,
    $core.String? title,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (typeName != null) result.typeName = typeName;
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    return result;
  }

  TypesCheckNodeResult._();

  factory TypesCheckNodeResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TypesCheckNodeResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TypesCheckNodeResult',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'typeName')
    ..aInt64(3, _omitFieldNames ? '' : 'id')
    ..aOS(4, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TypesCheckNodeResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TypesCheckNodeResult copyWith(void Function(TypesCheckNodeResult) updates) =>
      super.copyWith((message) => updates(message as TypesCheckNodeResult))
          as TypesCheckNodeResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TypesCheckNodeResult create() => TypesCheckNodeResult._();
  @$core.override
  TypesCheckNodeResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TypesCheckNodeResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TypesCheckNodeResult>(create);
  static TypesCheckNodeResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get typeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set typeName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTypeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearTypeName() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get id => $_getI64(2);
  @$pb.TagNumber(3)
  set id($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get title => $_getSZ(3);
  @$pb.TagNumber(4)
  set title($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearTitle() => $_clearField(4);
}

class RulesAdditionalFieldItem extends $pb.GeneratedMessage {
  factory RulesAdditionalFieldItem({
    $core.int? type,
    $fixnum.Int64? size,
    $fixnum.Int64? maxSize,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (size != null) result.size = size;
    if (maxSize != null) result.maxSize = maxSize;
    return result;
  }

  RulesAdditionalFieldItem._();

  factory RulesAdditionalFieldItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RulesAdditionalFieldItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RulesAdditionalFieldItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'type')
    ..aInt64(2, _omitFieldNames ? '' : 'size')
    ..aInt64(3, _omitFieldNames ? '' : 'maxSize')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RulesAdditionalFieldItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RulesAdditionalFieldItem copyWith(
          void Function(RulesAdditionalFieldItem) updates) =>
      super.copyWith((message) => updates(message as RulesAdditionalFieldItem))
          as RulesAdditionalFieldItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RulesAdditionalFieldItem create() => RulesAdditionalFieldItem._();
  @$core.override
  RulesAdditionalFieldItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RulesAdditionalFieldItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RulesAdditionalFieldItem>(create);
  static RulesAdditionalFieldItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);
  @$pb.TagNumber(1)
  set type($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get size => $_getI64(1);
  @$pb.TagNumber(2)
  set size($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get maxSize => $_getI64(2);
  @$pb.TagNumber(3)
  set maxSize($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxSize() => $_clearField(3);
}

class AdditionalFieldItem extends $pb.GeneratedMessage {
  factory AdditionalFieldItem({
    $fixnum.Int64? id,
    $core.String? label,
    RulesAdditionalFieldItem? rules,
    $core.String? value,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (label != null) result.label = label;
    if (rules != null) result.rules = rules;
    if (value != null) result.value = value;
    return result;
  }

  AdditionalFieldItem._();

  factory AdditionalFieldItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AdditionalFieldItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AdditionalFieldItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'label')
    ..aOM<RulesAdditionalFieldItem>(3, _omitFieldNames ? '' : 'rules',
        subBuilder: RulesAdditionalFieldItem.create)
    ..aOS(4, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AdditionalFieldItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AdditionalFieldItem copyWith(void Function(AdditionalFieldItem) updates) =>
      super.copyWith((message) => updates(message as AdditionalFieldItem))
          as AdditionalFieldItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdditionalFieldItem create() => AdditionalFieldItem._();
  @$core.override
  AdditionalFieldItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AdditionalFieldItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AdditionalFieldItem>(create);
  static AdditionalFieldItem? _defaultInstance;

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

  @$pb.TagNumber(3)
  RulesAdditionalFieldItem get rules => $_getN(2);
  @$pb.TagNumber(3)
  set rules(RulesAdditionalFieldItem value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRules() => $_has(2);
  @$pb.TagNumber(3)
  void clearRules() => $_clearField(3);
  @$pb.TagNumber(3)
  RulesAdditionalFieldItem ensureRules() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get value => $_getSZ(3);
  @$pb.TagNumber(4)
  set value($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearValue() => $_clearField(4);
}

class NodeIcon extends $pb.GeneratedMessage {
  factory NodeIcon({
    $fixnum.Int64? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  NodeIcon._();

  factory NodeIcon.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeIcon.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeIcon',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeIcon clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeIcon copyWith(void Function(NodeIcon) updates) =>
      super.copyWith((message) => updates(message as NodeIcon)) as NodeIcon;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeIcon create() => NodeIcon._();
  @$core.override
  NodeIcon createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeIcon getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeIcon>(create);
  static NodeIcon? _defaultInstance;

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

enum UserStatus_UserStatus { block, fired, notSet }

class UserStatus extends $pb.GeneratedMessage {
  factory UserStatus({
    $core.bool? block,
    $core.bool? fired,
  }) {
    final result = create();
    if (block != null) result.block = block;
    if (fired != null) result.fired = fired;
    return result;
  }

  UserStatus._();

  factory UserStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, UserStatus_UserStatus>
      _UserStatus_UserStatusByTag = {
    1: UserStatus_UserStatus.block,
    2: UserStatus_UserStatus.fired,
    0: UserStatus_UserStatus.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOB(1, _omitFieldNames ? '' : 'block')
    ..aOB(2, _omitFieldNames ? '' : 'fired')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserStatus copyWith(void Function(UserStatus) updates) =>
      super.copyWith((message) => updates(message as UserStatus)) as UserStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserStatus create() => UserStatus._();
  @$core.override
  UserStatus createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UserStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserStatus>(create);
  static UserStatus? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  UserStatus_UserStatus whichUserStatus() =>
      _UserStatus_UserStatusByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearUserStatus() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get block => $_getBF(0);
  @$pb.TagNumber(1)
  set block($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlock() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get fired => $_getBF(1);
  @$pb.TagNumber(2)
  set fired($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFired() => $_has(1);
  @$pb.TagNumber(2)
  void clearFired() => $_clearField(2);
}

class Tag extends $pb.GeneratedMessage {
  factory Tag({
    $fixnum.Int64? id,
    $core.String? name,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    return result;
  }

  Tag._();

  factory Tag.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Tag.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Tag',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Tag clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Tag copyWith(void Function(Tag) updates) =>
      super.copyWith((message) => updates(message as Tag)) as Tag;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Tag create() => Tag._();
  @$core.override
  Tag createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Tag getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tag>(create);
  static Tag? _defaultInstance;

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

class Empty extends $pb.GeneratedMessage {
  factory Empty() => create();

  Empty._();

  factory Empty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Empty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Empty',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Empty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Empty copyWith(void Function(Empty) updates) =>
      super.copyWith((message) => updates(message as Empty)) as Empty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  @$core.override
  Empty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class FileData extends $pb.GeneratedMessage {
  factory FileData({
    $core.String? name,
    $core.String? mimeType,
    $core.List<$core.int>? content,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (mimeType != null) result.mimeType = mimeType;
    if (content != null) result.content = content;
    return result;
  }

  FileData._();

  factory FileData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FileData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FileData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'mimeType')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FileData copyWith(void Function(FileData) updates) =>
      super.copyWith((message) => updates(message as FileData)) as FileData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FileData create() => FileData._();
  @$core.override
  FileData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FileData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileData>(create);
  static FileData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get mimeType => $_getSZ(1);
  @$pb.TagNumber(2)
  set mimeType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMimeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMimeType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get content => $_getN(2);
  @$pb.TagNumber(3)
  set content($core.List<$core.int> value) => $_setBytes(2, value);
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(2);
  @$pb.TagNumber(3)
  void clearContent() => $_clearField(3);
}

enum Feature_Properties { scheme, node, cable, polygon, notSet }

class Feature extends $pb.GeneratedMessage {
  factory Feature({
    Geometry? geometry,
    SchemeGeomProperties? scheme,
    NodeGeomProperties? node,
    CableGeomProperties? cable,
    PolygonGeomProperties? polygon,
  }) {
    final result = create();
    if (geometry != null) result.geometry = geometry;
    if (scheme != null) result.scheme = scheme;
    if (node != null) result.node = node;
    if (cable != null) result.cable = cable;
    if (polygon != null) result.polygon = polygon;
    return result;
  }

  Feature._();

  factory Feature.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Feature.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Feature_Properties>
      _Feature_PropertiesByTag = {
    2: Feature_Properties.scheme,
    3: Feature_Properties.node,
    4: Feature_Properties.cable,
    5: Feature_Properties.polygon,
    0: Feature_Properties.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Feature',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5])
    ..aOM<Geometry>(1, _omitFieldNames ? '' : 'geometry',
        subBuilder: Geometry.create)
    ..aOM<SchemeGeomProperties>(2, _omitFieldNames ? '' : 'scheme',
        subBuilder: SchemeGeomProperties.create)
    ..aOM<NodeGeomProperties>(3, _omitFieldNames ? '' : 'node',
        subBuilder: NodeGeomProperties.create)
    ..aOM<CableGeomProperties>(4, _omitFieldNames ? '' : 'cable',
        subBuilder: CableGeomProperties.create)
    ..aOM<PolygonGeomProperties>(5, _omitFieldNames ? '' : 'polygon',
        subBuilder: PolygonGeomProperties.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Feature clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Feature copyWith(void Function(Feature) updates) =>
      super.copyWith((message) => updates(message as Feature)) as Feature;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Feature create() => Feature._();
  @$core.override
  Feature createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Feature getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Feature>(create);
  static Feature? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  Feature_Properties whichProperties() =>
      _Feature_PropertiesByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearProperties() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Geometry get geometry => $_getN(0);
  @$pb.TagNumber(1)
  set geometry(Geometry value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGeometry() => $_has(0);
  @$pb.TagNumber(1)
  void clearGeometry() => $_clearField(1);
  @$pb.TagNumber(1)
  Geometry ensureGeometry() => $_ensure(0);

  @$pb.TagNumber(2)
  SchemeGeomProperties get scheme => $_getN(1);
  @$pb.TagNumber(2)
  set scheme(SchemeGeomProperties value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScheme() => $_has(1);
  @$pb.TagNumber(2)
  void clearScheme() => $_clearField(2);
  @$pb.TagNumber(2)
  SchemeGeomProperties ensureScheme() => $_ensure(1);

  @$pb.TagNumber(3)
  NodeGeomProperties get node => $_getN(2);
  @$pb.TagNumber(3)
  set node(NodeGeomProperties value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasNode() => $_has(2);
  @$pb.TagNumber(3)
  void clearNode() => $_clearField(3);
  @$pb.TagNumber(3)
  NodeGeomProperties ensureNode() => $_ensure(2);

  @$pb.TagNumber(4)
  CableGeomProperties get cable => $_getN(3);
  @$pb.TagNumber(4)
  set cable(CableGeomProperties value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCable() => $_has(3);
  @$pb.TagNumber(4)
  void clearCable() => $_clearField(4);
  @$pb.TagNumber(4)
  CableGeomProperties ensureCable() => $_ensure(3);

  @$pb.TagNumber(5)
  PolygonGeomProperties get polygon => $_getN(4);
  @$pb.TagNumber(5)
  set polygon(PolygonGeomProperties value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPolygon() => $_has(4);
  @$pb.TagNumber(5)
  void clearPolygon() => $_clearField(5);
  @$pb.TagNumber(5)
  PolygonGeomProperties ensurePolygon() => $_ensure(4);
}

enum Geometry_Coordinates { point, lineString, polygon, notSet }

class Geometry extends $pb.GeneratedMessage {
  factory Geometry({
    $core.String? type,
    PointCoordinates? point,
    LineStringCoordinates? lineString,
    PolygonCoordinates? polygon,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (point != null) result.point = point;
    if (lineString != null) result.lineString = lineString;
    if (polygon != null) result.polygon = polygon;
    return result;
  }

  Geometry._();

  factory Geometry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Geometry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Geometry_Coordinates>
      _Geometry_CoordinatesByTag = {
    2: Geometry_Coordinates.point,
    3: Geometry_Coordinates.lineString,
    4: Geometry_Coordinates.polygon,
    0: Geometry_Coordinates.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Geometry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<PointCoordinates>(2, _omitFieldNames ? '' : 'point',
        subBuilder: PointCoordinates.create)
    ..aOM<LineStringCoordinates>(3, _omitFieldNames ? '' : 'lineString',
        subBuilder: LineStringCoordinates.create)
    ..aOM<PolygonCoordinates>(4, _omitFieldNames ? '' : 'polygon',
        subBuilder: PolygonCoordinates.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Geometry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Geometry copyWith(void Function(Geometry) updates) =>
      super.copyWith((message) => updates(message as Geometry)) as Geometry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Geometry create() => Geometry._();
  @$core.override
  Geometry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Geometry getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Geometry>(create);
  static Geometry? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  Geometry_Coordinates whichCoordinates() =>
      _Geometry_CoordinatesByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearCoordinates() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  PointCoordinates get point => $_getN(1);
  @$pb.TagNumber(2)
  set point(PointCoordinates value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearPoint() => $_clearField(2);
  @$pb.TagNumber(2)
  PointCoordinates ensurePoint() => $_ensure(1);

  @$pb.TagNumber(3)
  LineStringCoordinates get lineString => $_getN(2);
  @$pb.TagNumber(3)
  set lineString(LineStringCoordinates value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLineString() => $_has(2);
  @$pb.TagNumber(3)
  void clearLineString() => $_clearField(3);
  @$pb.TagNumber(3)
  LineStringCoordinates ensureLineString() => $_ensure(2);

  @$pb.TagNumber(4)
  PolygonCoordinates get polygon => $_getN(3);
  @$pb.TagNumber(4)
  set polygon(PolygonCoordinates value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPolygon() => $_has(3);
  @$pb.TagNumber(4)
  void clearPolygon() => $_clearField(4);
  @$pb.TagNumber(4)
  PolygonCoordinates ensurePolygon() => $_ensure(3);
}

class PointCoordinates extends $pb.GeneratedMessage {
  factory PointCoordinates({
    Point? coordinates,
  }) {
    final result = create();
    if (coordinates != null) result.coordinates = coordinates;
    return result;
  }

  PointCoordinates._();

  factory PointCoordinates.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PointCoordinates.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PointCoordinates',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<Point>(1, _omitFieldNames ? '' : 'coordinates',
        subBuilder: Point.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PointCoordinates clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PointCoordinates copyWith(void Function(PointCoordinates) updates) =>
      super.copyWith((message) => updates(message as PointCoordinates))
          as PointCoordinates;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PointCoordinates create() => PointCoordinates._();
  @$core.override
  PointCoordinates createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PointCoordinates getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PointCoordinates>(create);
  static PointCoordinates? _defaultInstance;

  @$pb.TagNumber(1)
  Point get coordinates => $_getN(0);
  @$pb.TagNumber(1)
  set coordinates(Point value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCoordinates() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoordinates() => $_clearField(1);
  @$pb.TagNumber(1)
  Point ensureCoordinates() => $_ensure(0);
}

class LineStringCoordinates extends $pb.GeneratedMessage {
  factory LineStringCoordinates({
    $core.Iterable<Point>? coordinates,
  }) {
    final result = create();
    if (coordinates != null) result.coordinates.addAll(coordinates);
    return result;
  }

  LineStringCoordinates._();

  factory LineStringCoordinates.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LineStringCoordinates.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LineStringCoordinates',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<Point>(1, _omitFieldNames ? '' : 'coordinates',
        subBuilder: Point.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LineStringCoordinates clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LineStringCoordinates copyWith(
          void Function(LineStringCoordinates) updates) =>
      super.copyWith((message) => updates(message as LineStringCoordinates))
          as LineStringCoordinates;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LineStringCoordinates create() => LineStringCoordinates._();
  @$core.override
  LineStringCoordinates createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LineStringCoordinates getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LineStringCoordinates>(create);
  static LineStringCoordinates? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Point> get coordinates => $_getList(0);
}

class PolygonCoordinates extends $pb.GeneratedMessage {
  factory PolygonCoordinates({
    $core.Iterable<LineStringCoordinates>? coordinates,
  }) {
    final result = create();
    if (coordinates != null) result.coordinates.addAll(coordinates);
    return result;
  }

  PolygonCoordinates._();

  factory PolygonCoordinates.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PolygonCoordinates.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PolygonCoordinates',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<LineStringCoordinates>(1, _omitFieldNames ? '' : 'coordinates',
        subBuilder: LineStringCoordinates.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolygonCoordinates clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolygonCoordinates copyWith(void Function(PolygonCoordinates) updates) =>
      super.copyWith((message) => updates(message as PolygonCoordinates))
          as PolygonCoordinates;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolygonCoordinates create() => PolygonCoordinates._();
  @$core.override
  PolygonCoordinates createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PolygonCoordinates getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PolygonCoordinates>(create);
  static PolygonCoordinates? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<LineStringCoordinates> get coordinates => $_getList(0);
}

class SchemeGeomProperties extends $pb.GeneratedMessage {
  factory SchemeGeomProperties({
    $core.String? color,
    $core.String? fillColor,
    $core.String? fillOpacity,
    $core.double? weight,
    $core.String? dashArray,
    $core.String? n,
    $core.String? oC,
    $core.String? tT,
    $core.String? tTl,
    $core.String? oMm,
    $core.String? oCn,
    $core.String? c,
    $core.String? type,
    $core.String? t,
    $core.double? tR,
    $core.String? tA,
    $core.String? i,
    $core.double? r,
  }) {
    final result = create();
    if (color != null) result.color = color;
    if (fillColor != null) result.fillColor = fillColor;
    if (fillOpacity != null) result.fillOpacity = fillOpacity;
    if (weight != null) result.weight = weight;
    if (dashArray != null) result.dashArray = dashArray;
    if (n != null) result.n = n;
    if (oC != null) result.oC = oC;
    if (tT != null) result.tT = tT;
    if (tTl != null) result.tTl = tTl;
    if (oMm != null) result.oMm = oMm;
    if (oCn != null) result.oCn = oCn;
    if (c != null) result.c = c;
    if (type != null) result.type = type;
    if (t != null) result.t = t;
    if (tR != null) result.tR = tR;
    if (tA != null) result.tA = tA;
    if (i != null) result.i = i;
    if (r != null) result.r = r;
    return result;
  }

  SchemeGeomProperties._();

  factory SchemeGeomProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SchemeGeomProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SchemeGeomProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'color')
    ..aOS(2, _omitFieldNames ? '' : 'fillColor')
    ..aOS(3, _omitFieldNames ? '' : 'fillOpacity')
    ..aD(4, _omitFieldNames ? '' : 'weight')
    ..aOS(5, _omitFieldNames ? '' : 'dashArray')
    ..aOS(6, _omitFieldNames ? '' : 'n')
    ..aOS(7, _omitFieldNames ? '' : 'oC')
    ..aOS(8, _omitFieldNames ? '' : 'tT')
    ..aOS(9, _omitFieldNames ? '' : 'tTl')
    ..aOS(10, _omitFieldNames ? '' : 'oMm')
    ..aOS(11, _omitFieldNames ? '' : 'oCn')
    ..aOS(12, _omitFieldNames ? '' : 'c')
    ..aOS(13, _omitFieldNames ? '' : 'type')
    ..aOS(14, _omitFieldNames ? '' : 't')
    ..aD(15, _omitFieldNames ? '' : 'tR')
    ..aOS(16, _omitFieldNames ? '' : 'tA')
    ..aOS(17, _omitFieldNames ? '' : 'i')
    ..aD(18, _omitFieldNames ? '' : 'r')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SchemeGeomProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SchemeGeomProperties copyWith(void Function(SchemeGeomProperties) updates) =>
      super.copyWith((message) => updates(message as SchemeGeomProperties))
          as SchemeGeomProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SchemeGeomProperties create() => SchemeGeomProperties._();
  @$core.override
  SchemeGeomProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SchemeGeomProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SchemeGeomProperties>(create);
  static SchemeGeomProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get color => $_getSZ(0);
  @$pb.TagNumber(1)
  set color($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get fillColor => $_getSZ(1);
  @$pb.TagNumber(2)
  set fillColor($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFillColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearFillColor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fillOpacity => $_getSZ(2);
  @$pb.TagNumber(3)
  set fillOpacity($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFillOpacity() => $_has(2);
  @$pb.TagNumber(3)
  void clearFillOpacity() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get weight => $_getN(3);
  @$pb.TagNumber(4)
  set weight($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearWeight() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get dashArray => $_getSZ(4);
  @$pb.TagNumber(5)
  set dashArray($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDashArray() => $_has(4);
  @$pb.TagNumber(5)
  void clearDashArray() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get n => $_getSZ(5);
  @$pb.TagNumber(6)
  set n($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasN() => $_has(5);
  @$pb.TagNumber(6)
  void clearN() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get oC => $_getSZ(6);
  @$pb.TagNumber(7)
  set oC($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasOC() => $_has(6);
  @$pb.TagNumber(7)
  void clearOC() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get tT => $_getSZ(7);
  @$pb.TagNumber(8)
  set tT($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTT() => $_has(7);
  @$pb.TagNumber(8)
  void clearTT() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get tTl => $_getSZ(8);
  @$pb.TagNumber(9)
  set tTl($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTTl() => $_has(8);
  @$pb.TagNumber(9)
  void clearTTl() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get oMm => $_getSZ(9);
  @$pb.TagNumber(10)
  set oMm($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasOMm() => $_has(9);
  @$pb.TagNumber(10)
  void clearOMm() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get oCn => $_getSZ(10);
  @$pb.TagNumber(11)
  set oCn($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasOCn() => $_has(10);
  @$pb.TagNumber(11)
  void clearOCn() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get c => $_getSZ(11);
  @$pb.TagNumber(12)
  set c($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasC() => $_has(11);
  @$pb.TagNumber(12)
  void clearC() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get type => $_getSZ(12);
  @$pb.TagNumber(13)
  set type($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasType() => $_has(12);
  @$pb.TagNumber(13)
  void clearType() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get t => $_getSZ(13);
  @$pb.TagNumber(14)
  set t($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasT() => $_has(13);
  @$pb.TagNumber(14)
  void clearT() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.double get tR => $_getN(14);
  @$pb.TagNumber(15)
  set tR($core.double value) => $_setDouble(14, value);
  @$pb.TagNumber(15)
  $core.bool hasTR() => $_has(14);
  @$pb.TagNumber(15)
  void clearTR() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get tA => $_getSZ(15);
  @$pb.TagNumber(16)
  set tA($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasTA() => $_has(15);
  @$pb.TagNumber(16)
  void clearTA() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get i => $_getSZ(16);
  @$pb.TagNumber(17)
  set i($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasI() => $_has(16);
  @$pb.TagNumber(17)
  void clearI() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.double get r => $_getN(17);
  @$pb.TagNumber(18)
  set r($core.double value) => $_setDouble(17, value);
  @$pb.TagNumber(18)
  $core.bool hasR() => $_has(17);
  @$pb.TagNumber(18)
  void clearR() => $_clearField(18);
}

class NodeGeomProperties extends $pb.GeneratedMessage {
  factory NodeGeomProperties({
    $core.String? type,
    $fixnum.Int64? id,
    $core.String? typeId,
    $core.int? mZ,
    $core.String? icon,
    $core.int? styleOpacity,
    $core.bool? isCommutation,
    $core.String? caption,
    $core.String? styleColor,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (id != null) result.id = id;
    if (typeId != null) result.typeId = typeId;
    if (mZ != null) result.mZ = mZ;
    if (icon != null) result.icon = icon;
    if (styleOpacity != null) result.styleOpacity = styleOpacity;
    if (isCommutation != null) result.isCommutation = isCommutation;
    if (caption != null) result.caption = caption;
    if (styleColor != null) result.styleColor = styleColor;
    return result;
  }

  NodeGeomProperties._();

  factory NodeGeomProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeGeomProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeGeomProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'typeId')
    ..aI(4, _omitFieldNames ? '' : 'mZ')
    ..aOS(5, _omitFieldNames ? '' : 'icon')
    ..aI(6, _omitFieldNames ? '' : 'styleOpacity')
    ..aOB(7, _omitFieldNames ? '' : 'isCommutation')
    ..aOS(8, _omitFieldNames ? '' : 'caption')
    ..aOS(9, _omitFieldNames ? '' : 'styleColor')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGeomProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGeomProperties copyWith(void Function(NodeGeomProperties) updates) =>
      super.copyWith((message) => updates(message as NodeGeomProperties))
          as NodeGeomProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeGeomProperties create() => NodeGeomProperties._();
  @$core.override
  NodeGeomProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeGeomProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeGeomProperties>(create);
  static NodeGeomProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get typeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set typeId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTypeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTypeId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get mZ => $_getIZ(3);
  @$pb.TagNumber(4)
  set mZ($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMZ() => $_has(3);
  @$pb.TagNumber(4)
  void clearMZ() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get icon => $_getSZ(4);
  @$pb.TagNumber(5)
  set icon($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIcon() => $_has(4);
  @$pb.TagNumber(5)
  void clearIcon() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get styleOpacity => $_getIZ(5);
  @$pb.TagNumber(6)
  set styleOpacity($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStyleOpacity() => $_has(5);
  @$pb.TagNumber(6)
  void clearStyleOpacity() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isCommutation => $_getBF(6);
  @$pb.TagNumber(7)
  set isCommutation($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsCommutation() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsCommutation() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get caption => $_getSZ(7);
  @$pb.TagNumber(8)
  set caption($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCaption() => $_has(7);
  @$pb.TagNumber(8)
  void clearCaption() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get styleColor => $_getSZ(8);
  @$pb.TagNumber(9)
  set styleColor($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasStyleColor() => $_has(8);
  @$pb.TagNumber(9)
  void clearStyleColor() => $_clearField(9);
}

enum PeerCable_PeerCable { nodeId, buildingId, notSet }

class PeerCable extends $pb.GeneratedMessage {
  factory PeerCable({
    $fixnum.Int64? nodeId,
    $fixnum.Int64? buildingId,
    $core.String? name,
    $core.String? marking,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    if (buildingId != null) result.buildingId = buildingId;
    if (name != null) result.name = name;
    if (marking != null) result.marking = marking;
    return result;
  }

  PeerCable._();

  factory PeerCable.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PeerCable.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PeerCable_PeerCable>
      _PeerCable_PeerCableByTag = {
    1: PeerCable_PeerCable.nodeId,
    2: PeerCable_PeerCable.buildingId,
    0: PeerCable_PeerCable.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PeerCable',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aInt64(1, _omitFieldNames ? '' : 'nodeId')
    ..aInt64(2, _omitFieldNames ? '' : 'buildingId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'marking')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PeerCable clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PeerCable copyWith(void Function(PeerCable) updates) =>
      super.copyWith((message) => updates(message as PeerCable)) as PeerCable;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PeerCable create() => PeerCable._();
  @$core.override
  PeerCable createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PeerCable getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PeerCable>(create);
  static PeerCable? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  PeerCable_PeerCable whichPeerCable() =>
      _PeerCable_PeerCableByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearPeerCable() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get buildingId => $_getI64(1);
  @$pb.TagNumber(2)
  set buildingId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBuildingId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuildingId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get marking => $_getSZ(3);
  @$pb.TagNumber(4)
  set marking($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMarking() => $_has(3);
  @$pb.TagNumber(4)
  void clearMarking() => $_clearField(4);
}

class CableGeomProperties extends $pb.GeneratedMessage {
  factory CableGeomProperties({
    $core.String? type,
    $fixnum.Int64? id,
    $core.String? typeId,
    PeerCable? peerStart,
    PeerCable? peerEnd,
    $core.int? mZ,
    $core.String? style,
    $core.String? color,
    $core.int? sLw,
    $core.String? sLd,
    $core.String? sLo,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (id != null) result.id = id;
    if (typeId != null) result.typeId = typeId;
    if (peerStart != null) result.peerStart = peerStart;
    if (peerEnd != null) result.peerEnd = peerEnd;
    if (mZ != null) result.mZ = mZ;
    if (style != null) result.style = style;
    if (color != null) result.color = color;
    if (sLw != null) result.sLw = sLw;
    if (sLd != null) result.sLd = sLd;
    if (sLo != null) result.sLo = sLo;
    return result;
  }

  CableGeomProperties._();

  factory CableGeomProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CableGeomProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CableGeomProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'typeId')
    ..aOM<PeerCable>(4, _omitFieldNames ? '' : 'peerStart',
        subBuilder: PeerCable.create)
    ..aOM<PeerCable>(5, _omitFieldNames ? '' : 'peerEnd',
        subBuilder: PeerCable.create)
    ..aI(6, _omitFieldNames ? '' : 'mZ')
    ..aOS(7, _omitFieldNames ? '' : 'style')
    ..aOS(8, _omitFieldNames ? '' : 'color')
    ..aI(9, _omitFieldNames ? '' : 'sLw')
    ..aOS(10, _omitFieldNames ? '' : 'sLd')
    ..aOS(11, _omitFieldNames ? '' : 'sLo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CableGeomProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CableGeomProperties copyWith(void Function(CableGeomProperties) updates) =>
      super.copyWith((message) => updates(message as CableGeomProperties))
          as CableGeomProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CableGeomProperties create() => CableGeomProperties._();
  @$core.override
  CableGeomProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CableGeomProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CableGeomProperties>(create);
  static CableGeomProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get typeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set typeId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTypeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTypeId() => $_clearField(3);

  @$pb.TagNumber(4)
  PeerCable get peerStart => $_getN(3);
  @$pb.TagNumber(4)
  set peerStart(PeerCable value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPeerStart() => $_has(3);
  @$pb.TagNumber(4)
  void clearPeerStart() => $_clearField(4);
  @$pb.TagNumber(4)
  PeerCable ensurePeerStart() => $_ensure(3);

  @$pb.TagNumber(5)
  PeerCable get peerEnd => $_getN(4);
  @$pb.TagNumber(5)
  set peerEnd(PeerCable value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPeerEnd() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeerEnd() => $_clearField(5);
  @$pb.TagNumber(5)
  PeerCable ensurePeerEnd() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get mZ => $_getIZ(5);
  @$pb.TagNumber(6)
  set mZ($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMZ() => $_has(5);
  @$pb.TagNumber(6)
  void clearMZ() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get style => $_getSZ(6);
  @$pb.TagNumber(7)
  set style($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasStyle() => $_has(6);
  @$pb.TagNumber(7)
  void clearStyle() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get color => $_getSZ(7);
  @$pb.TagNumber(8)
  set color($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasColor() => $_has(7);
  @$pb.TagNumber(8)
  void clearColor() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get sLw => $_getIZ(8);
  @$pb.TagNumber(9)
  set sLw($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasSLw() => $_has(8);
  @$pb.TagNumber(9)
  void clearSLw() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get sLd => $_getSZ(9);
  @$pb.TagNumber(10)
  set sLd($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasSLd() => $_has(9);
  @$pb.TagNumber(10)
  void clearSLd() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get sLo => $_getSZ(10);
  @$pb.TagNumber(11)
  set sLo($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasSLo() => $_has(10);
  @$pb.TagNumber(11)
  void clearSLo() => $_clearField(11);
}

class PolygonGeomProperties extends $pb.GeneratedMessage {
  factory PolygonGeomProperties({
    $core.String? type,
    $fixnum.Int64? id,
    $core.String? typeId,
    $core.String? style,
    $core.int? mZ,
    $core.String? color,
    $core.String? caption,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (id != null) result.id = id;
    if (typeId != null) result.typeId = typeId;
    if (style != null) result.style = style;
    if (mZ != null) result.mZ = mZ;
    if (color != null) result.color = color;
    if (caption != null) result.caption = caption;
    return result;
  }

  PolygonGeomProperties._();

  factory PolygonGeomProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PolygonGeomProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PolygonGeomProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'typeId')
    ..aOS(4, _omitFieldNames ? '' : 'style')
    ..aI(5, _omitFieldNames ? '' : 'mZ')
    ..aOS(6, _omitFieldNames ? '' : 'color')
    ..aOS(7, _omitFieldNames ? '' : 'caption')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolygonGeomProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PolygonGeomProperties copyWith(
          void Function(PolygonGeomProperties) updates) =>
      super.copyWith((message) => updates(message as PolygonGeomProperties))
          as PolygonGeomProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolygonGeomProperties create() => PolygonGeomProperties._();
  @$core.override
  PolygonGeomProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PolygonGeomProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PolygonGeomProperties>(create);
  static PolygonGeomProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get typeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set typeId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTypeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTypeId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get style => $_getSZ(3);
  @$pb.TagNumber(4)
  set style($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStyle() => $_has(3);
  @$pb.TagNumber(4)
  void clearStyle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get mZ => $_getIZ(4);
  @$pb.TagNumber(5)
  set mZ($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMZ() => $_has(4);
  @$pb.TagNumber(5)
  void clearMZ() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get color => $_getSZ(5);
  @$pb.TagNumber(6)
  set color($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasColor() => $_has(5);
  @$pb.TagNumber(6)
  void clearColor() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get caption => $_getSZ(6);
  @$pb.TagNumber(7)
  set caption($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCaption() => $_has(6);
  @$pb.TagNumber(7)
  void clearCaption() => $_clearField(7);
}

enum PeerScheme_PeerScheme { nodeId, buildingId, notSet }

class PeerScheme extends $pb.GeneratedMessage {
  factory PeerScheme({
    $fixnum.Int64? nodeId,
    $fixnum.Int64? buildingId,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    if (buildingId != null) result.buildingId = buildingId;
    return result;
  }

  PeerScheme._();

  factory PeerScheme.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PeerScheme.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PeerScheme_PeerScheme>
      _PeerScheme_PeerSchemeByTag = {
    1: PeerScheme_PeerScheme.nodeId,
    2: PeerScheme_PeerScheme.buildingId,
    0: PeerScheme_PeerScheme.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PeerScheme',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aInt64(1, _omitFieldNames ? '' : 'nodeId')
    ..aInt64(2, _omitFieldNames ? '' : 'buildingId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PeerScheme clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PeerScheme copyWith(void Function(PeerScheme) updates) =>
      super.copyWith((message) => updates(message as PeerScheme)) as PeerScheme;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PeerScheme create() => PeerScheme._();
  @$core.override
  PeerScheme createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PeerScheme getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PeerScheme>(create);
  static PeerScheme? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  PeerScheme_PeerScheme whichPeerScheme() =>
      _PeerScheme_PeerSchemeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearPeerScheme() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get buildingId => $_getI64(1);
  @$pb.TagNumber(2)
  set buildingId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBuildingId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBuildingId() => $_clearField(2);
}

class Common {
  static final katanMethodConf = $pb.Extension<KatanMethodConf>(
      _omitMessageNames ? '' : 'google.protobuf.MethodOptions',
      _omitFieldNames ? '' : 'katanMethodConf',
      51001,
      $pb.PbFieldType.OM,
      defaultOrMaker: KatanMethodConf.getDefault,
      subBuilder: KatanMethodConf.create);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(katanMethodConf);
  }
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
