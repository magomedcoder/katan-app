// This is a generated file - do not edit.
//
// Generated from map.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class TileLayerItem extends $pb.GeneratedMessage {
  factory TileLayerItem({
    $core.String? url,
    $core.String? subdomains,
  }) {
    final result = create();
    if (url != null) result.url = url;
    if (subdomains != null) result.subdomains = subdomains;
    return result;
  }

  TileLayerItem._();

  factory TileLayerItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TileLayerItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TileLayerItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..aOS(2, _omitFieldNames ? '' : 'subdomains')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TileLayerItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TileLayerItem copyWith(void Function(TileLayerItem) updates) =>
      super.copyWith((message) => updates(message as TileLayerItem))
          as TileLayerItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TileLayerItem create() => TileLayerItem._();
  @$core.override
  TileLayerItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TileLayerItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TileLayerItem>(create);
  static TileLayerItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get subdomains => $_getSZ(1);
  @$pb.TagNumber(2)
  set subdomains($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSubdomains() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubdomains() => $_clearField(2);
}

class TileItem extends $pb.GeneratedMessage {
  factory TileItem({
    $fixnum.Int64? id,
    $core.String? label,
    $core.String? crs,
    $core.Iterable<TileLayerItem>? layers,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (label != null) result.label = label;
    if (crs != null) result.crs = crs;
    if (layers != null) result.layers.addAll(layers);
    return result;
  }

  TileItem._();

  factory TileItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TileItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TileItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'label')
    ..aOS(3, _omitFieldNames ? '' : 'crs')
    ..pPM<TileLayerItem>(4, _omitFieldNames ? '' : 'layers',
        subBuilder: TileLayerItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TileItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TileItem copyWith(void Function(TileItem) updates) =>
      super.copyWith((message) => updates(message as TileItem)) as TileItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TileItem create() => TileItem._();
  @$core.override
  TileItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TileItem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TileItem>(create);
  static TileItem? _defaultInstance;

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
  $core.String get crs => $_getSZ(2);
  @$pb.TagNumber(3)
  set crs($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCrs() => $_has(2);
  @$pb.TagNumber(3)
  void clearCrs() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<TileLayerItem> get layers => $_getList(3);
}

class MapCoating extends $pb.GeneratedMessage {
  factory MapCoating({
    $fixnum.Int64? id,
    $core.String? name,
    $core.double? lat,
    $core.double? lng,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (lat != null) result.lat = lat;
    if (lng != null) result.lng = lng;
    return result;
  }

  MapCoating._();

  factory MapCoating.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapCoating.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapCoating',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aD(3, _omitFieldNames ? '' : 'lat')
    ..aD(4, _omitFieldNames ? '' : 'lng')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapCoating clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapCoating copyWith(void Function(MapCoating) updates) =>
      super.copyWith((message) => updates(message as MapCoating)) as MapCoating;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapCoating create() => MapCoating._();
  @$core.override
  MapCoating createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapCoating getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MapCoating>(create);
  static MapCoating? _defaultInstance;

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
  $core.double get lat => $_getN(2);
  @$pb.TagNumber(3)
  set lat($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLat() => $_has(2);
  @$pb.TagNumber(3)
  void clearLat() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get lng => $_getN(3);
  @$pb.TagNumber(4)
  set lng($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLng() => $_has(3);
  @$pb.TagNumber(4)
  void clearLng() => $_clearField(4);
}

class NoteMap extends $pb.GeneratedMessage {
  factory NoteMap({
    $fixnum.Int64? id,
    $core.String? name,
    $1.Point? geom,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (geom != null) result.geom = geom;
    return result;
  }

  NoteMap._();

  factory NoteMap.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NoteMap.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NoteMap',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<$1.Point>(3, _omitFieldNames ? '' : 'geom',
        subBuilder: $1.Point.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NoteMap clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NoteMap copyWith(void Function(NoteMap) updates) =>
      super.copyWith((message) => updates(message as NoteMap)) as NoteMap;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NoteMap create() => NoteMap._();
  @$core.override
  NoteMap createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NoteMap getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NoteMap>(create);
  static NoteMap? _defaultInstance;

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
  $1.Point get geom => $_getN(2);
  @$pb.TagNumber(3)
  set geom($1.Point value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGeom() => $_has(2);
  @$pb.TagNumber(3)
  void clearGeom() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Point ensureGeom() => $_ensure(2);
}

class GetTilesRequest extends $pb.GeneratedMessage {
  factory GetTilesRequest() => create();

  GetTilesRequest._();

  factory GetTilesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTilesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTilesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTilesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTilesRequest copyWith(void Function(GetTilesRequest) updates) =>
      super.copyWith((message) => updates(message as GetTilesRequest))
          as GetTilesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTilesRequest create() => GetTilesRequest._();
  @$core.override
  GetTilesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTilesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTilesRequest>(create);
  static GetTilesRequest? _defaultInstance;
}

class GetTilesResponse extends $pb.GeneratedMessage {
  factory GetTilesResponse({
    $core.String? lat,
    $core.String? lng,
    $core.String? rulerColor,
    $core.Iterable<TileItem>? items,
  }) {
    final result = create();
    if (lat != null) result.lat = lat;
    if (lng != null) result.lng = lng;
    if (rulerColor != null) result.rulerColor = rulerColor;
    if (items != null) result.items.addAll(items);
    return result;
  }

  GetTilesResponse._();

  factory GetTilesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTilesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTilesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'lat')
    ..aOS(2, _omitFieldNames ? '' : 'lng')
    ..aOS(3, _omitFieldNames ? '' : 'rulerColor')
    ..pPM<TileItem>(4, _omitFieldNames ? '' : 'items',
        subBuilder: TileItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTilesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTilesResponse copyWith(void Function(GetTilesResponse) updates) =>
      super.copyWith((message) => updates(message as GetTilesResponse))
          as GetTilesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTilesResponse create() => GetTilesResponse._();
  @$core.override
  GetTilesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTilesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTilesResponse>(create);
  static GetTilesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get lat => $_getSZ(0);
  @$pb.TagNumber(1)
  set lat($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get lng => $_getSZ(1);
  @$pb.TagNumber(2)
  set lng($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLng() => $_has(1);
  @$pb.TagNumber(2)
  void clearLng() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get rulerColor => $_getSZ(2);
  @$pb.TagNumber(3)
  set rulerColor($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRulerColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearRulerColor() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<TileItem> get items => $_getList(3);
}

class GetMapCoatingsRequest extends $pb.GeneratedMessage {
  factory GetMapCoatingsRequest() => create();

  GetMapCoatingsRequest._();

  factory GetMapCoatingsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapCoatingsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapCoatingsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCoatingsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCoatingsRequest copyWith(
          void Function(GetMapCoatingsRequest) updates) =>
      super.copyWith((message) => updates(message as GetMapCoatingsRequest))
          as GetMapCoatingsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapCoatingsRequest create() => GetMapCoatingsRequest._();
  @$core.override
  GetMapCoatingsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapCoatingsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapCoatingsRequest>(create);
  static GetMapCoatingsRequest? _defaultInstance;
}

class GetMapCoatingsResponse extends $pb.GeneratedMessage {
  factory GetMapCoatingsResponse({
    $core.Iterable<MapCoating>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  GetMapCoatingsResponse._();

  factory GetMapCoatingsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapCoatingsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapCoatingsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<MapCoating>(1, _omitFieldNames ? '' : 'items',
        subBuilder: MapCoating.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCoatingsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCoatingsResponse copyWith(
          void Function(GetMapCoatingsResponse) updates) =>
      super.copyWith((message) => updates(message as GetMapCoatingsResponse))
          as GetMapCoatingsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapCoatingsResponse create() => GetMapCoatingsResponse._();
  @$core.override
  GetMapCoatingsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapCoatingsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapCoatingsResponse>(create);
  static GetMapCoatingsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<MapCoating> get items => $_getList(0);
}

class GetTooltipRequest extends $pb.GeneratedMessage {
  factory GetTooltipRequest({
    $fixnum.Int64? id,
    $core.String? object,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (object != null) result.object = object;
    return result;
  }

  GetTooltipRequest._();

  factory GetTooltipRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTooltipRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTooltipRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'object')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTooltipRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTooltipRequest copyWith(void Function(GetTooltipRequest) updates) =>
      super.copyWith((message) => updates(message as GetTooltipRequest))
          as GetTooltipRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTooltipRequest create() => GetTooltipRequest._();
  @$core.override
  GetTooltipRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTooltipRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTooltipRequest>(create);
  static GetTooltipRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get object => $_getSZ(1);
  @$pb.TagNumber(2)
  set object($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasObject() => $_has(1);
  @$pb.TagNumber(2)
  void clearObject() => $_clearField(2);
}

class GetTooltipResponse extends $pb.GeneratedMessage {
  factory GetTooltipResponse({
    $core.String? name,
  }) {
    final result = create();
    if (name != null) result.name = name;
    return result;
  }

  GetTooltipResponse._();

  factory GetTooltipResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTooltipResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTooltipResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTooltipResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTooltipResponse copyWith(void Function(GetTooltipResponse) updates) =>
      super.copyWith((message) => updates(message as GetTooltipResponse))
          as GetTooltipResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTooltipResponse create() => GetTooltipResponse._();
  @$core.override
  GetTooltipResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTooltipResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTooltipResponse>(create);
  static GetTooltipResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);
}

class GetMapNodesRequest extends $pb.GeneratedMessage {
  factory GetMapNodesRequest({
    $1.PointBounds? bounds,
    $core.int? zoom,
    $core.int? limit,
    $core.int? offset,
  }) {
    final result = create();
    if (bounds != null) result.bounds = bounds;
    if (zoom != null) result.zoom = zoom;
    if (limit != null) result.limit = limit;
    if (offset != null) result.offset = offset;
    return result;
  }

  GetMapNodesRequest._();

  factory GetMapNodesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapNodesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapNodesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.PointBounds>(1, _omitFieldNames ? '' : 'bounds',
        subBuilder: $1.PointBounds.create)
    ..aI(2, _omitFieldNames ? '' : 'zoom')
    ..aI(3, _omitFieldNames ? '' : 'limit')
    ..aI(4, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapNodesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapNodesRequest copyWith(void Function(GetMapNodesRequest) updates) =>
      super.copyWith((message) => updates(message as GetMapNodesRequest))
          as GetMapNodesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapNodesRequest create() => GetMapNodesRequest._();
  @$core.override
  GetMapNodesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapNodesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapNodesRequest>(create);
  static GetMapNodesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PointBounds get bounds => $_getN(0);
  @$pb.TagNumber(1)
  set bounds($1.PointBounds value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBounds() => $_has(0);
  @$pb.TagNumber(1)
  void clearBounds() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.PointBounds ensureBounds() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get zoom => $_getIZ(1);
  @$pb.TagNumber(2)
  set zoom($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasZoom() => $_has(1);
  @$pb.TagNumber(2)
  void clearZoom() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get offset => $_getIZ(3);
  @$pb.TagNumber(4)
  set offset($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearOffset() => $_clearField(4);
}

class GetMapNodesResponse extends $pb.GeneratedMessage {
  factory GetMapNodesResponse({
    $core.Iterable<$1.Feature>? features,
    $core.String? data,
    $fixnum.Int64? count,
  }) {
    final result = create();
    if (features != null) result.features.addAll(features);
    if (data != null) result.data = data;
    if (count != null) result.count = count;
    return result;
  }

  GetMapNodesResponse._();

  factory GetMapNodesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapNodesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapNodesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<$1.Feature>(1, _omitFieldNames ? '' : 'features',
        subBuilder: $1.Feature.create)
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapNodesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapNodesResponse copyWith(void Function(GetMapNodesResponse) updates) =>
      super.copyWith((message) => updates(message as GetMapNodesResponse))
          as GetMapNodesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapNodesResponse create() => GetMapNodesResponse._();
  @$core.override
  GetMapNodesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapNodesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapNodesResponse>(create);
  static GetMapNodesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Feature> get features => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => $_clearField(3);
}

class GetMapCustomersRequest extends $pb.GeneratedMessage {
  factory GetMapCustomersRequest({
    $1.PointBounds? bounds,
    $core.Iterable<$fixnum.Int64>? customerTypeIds,
    $core.int? zoom,
    $core.int? limit,
    $core.int? offset,
  }) {
    final result = create();
    if (bounds != null) result.bounds = bounds;
    if (customerTypeIds != null) result.customerTypeIds.addAll(customerTypeIds);
    if (zoom != null) result.zoom = zoom;
    if (limit != null) result.limit = limit;
    if (offset != null) result.offset = offset;
    return result;
  }

  GetMapCustomersRequest._();

  factory GetMapCustomersRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapCustomersRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapCustomersRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.PointBounds>(1, _omitFieldNames ? '' : 'bounds',
        subBuilder: $1.PointBounds.create)
    ..p<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'customerTypeIds', $pb.PbFieldType.K6)
    ..aI(3, _omitFieldNames ? '' : 'zoom')
    ..aI(4, _omitFieldNames ? '' : 'limit')
    ..aI(5, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCustomersRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCustomersRequest copyWith(
          void Function(GetMapCustomersRequest) updates) =>
      super.copyWith((message) => updates(message as GetMapCustomersRequest))
          as GetMapCustomersRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapCustomersRequest create() => GetMapCustomersRequest._();
  @$core.override
  GetMapCustomersRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapCustomersRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapCustomersRequest>(create);
  static GetMapCustomersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PointBounds get bounds => $_getN(0);
  @$pb.TagNumber(1)
  set bounds($1.PointBounds value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBounds() => $_has(0);
  @$pb.TagNumber(1)
  void clearBounds() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.PointBounds ensureBounds() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get customerTypeIds => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get zoom => $_getIZ(2);
  @$pb.TagNumber(3)
  set zoom($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasZoom() => $_has(2);
  @$pb.TagNumber(3)
  void clearZoom() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get limit => $_getIZ(3);
  @$pb.TagNumber(4)
  set limit($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get offset => $_getIZ(4);
  @$pb.TagNumber(5)
  set offset($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOffset() => $_has(4);
  @$pb.TagNumber(5)
  void clearOffset() => $_clearField(5);
}

class GetMapCustomersResponse extends $pb.GeneratedMessage {
  factory GetMapCustomersResponse({
    $core.Iterable<$1.Feature>? features,
    $core.String? data,
    $fixnum.Int64? count,
  }) {
    final result = create();
    if (features != null) result.features.addAll(features);
    if (data != null) result.data = data;
    if (count != null) result.count = count;
    return result;
  }

  GetMapCustomersResponse._();

  factory GetMapCustomersResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapCustomersResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapCustomersResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<$1.Feature>(1, _omitFieldNames ? '' : 'features',
        subBuilder: $1.Feature.create)
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCustomersResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCustomersResponse copyWith(
          void Function(GetMapCustomersResponse) updates) =>
      super.copyWith((message) => updates(message as GetMapCustomersResponse))
          as GetMapCustomersResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapCustomersResponse create() => GetMapCustomersResponse._();
  @$core.override
  GetMapCustomersResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapCustomersResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapCustomersResponse>(create);
  static GetMapCustomersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Feature> get features => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => $_clearField(3);
}

class GetMapCablesRequest extends $pb.GeneratedMessage {
  factory GetMapCablesRequest({
    $1.PointBounds? bounds,
    $core.Iterable<$fixnum.Int64>? ids,
    $core.int? zoom,
    $core.int? limit,
    $core.int? offset,
  }) {
    final result = create();
    if (bounds != null) result.bounds = bounds;
    if (ids != null) result.ids.addAll(ids);
    if (zoom != null) result.zoom = zoom;
    if (limit != null) result.limit = limit;
    if (offset != null) result.offset = offset;
    return result;
  }

  GetMapCablesRequest._();

  factory GetMapCablesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapCablesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapCablesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.PointBounds>(1, _omitFieldNames ? '' : 'bounds',
        subBuilder: $1.PointBounds.create)
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'ids', $pb.PbFieldType.K6)
    ..aI(3, _omitFieldNames ? '' : 'zoom')
    ..aI(4, _omitFieldNames ? '' : 'limit')
    ..aI(5, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCablesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCablesRequest copyWith(void Function(GetMapCablesRequest) updates) =>
      super.copyWith((message) => updates(message as GetMapCablesRequest))
          as GetMapCablesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapCablesRequest create() => GetMapCablesRequest._();
  @$core.override
  GetMapCablesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapCablesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapCablesRequest>(create);
  static GetMapCablesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PointBounds get bounds => $_getN(0);
  @$pb.TagNumber(1)
  set bounds($1.PointBounds value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBounds() => $_has(0);
  @$pb.TagNumber(1)
  void clearBounds() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.PointBounds ensureBounds() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get ids => $_getList(1);

  @$pb.TagNumber(3)
  $core.int get zoom => $_getIZ(2);
  @$pb.TagNumber(3)
  set zoom($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasZoom() => $_has(2);
  @$pb.TagNumber(3)
  void clearZoom() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get limit => $_getIZ(3);
  @$pb.TagNumber(4)
  set limit($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearLimit() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get offset => $_getIZ(4);
  @$pb.TagNumber(5)
  set offset($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOffset() => $_has(4);
  @$pb.TagNumber(5)
  void clearOffset() => $_clearField(5);
}

class GetMapCablesResponse extends $pb.GeneratedMessage {
  factory GetMapCablesResponse({
    $core.Iterable<$1.Feature>? features,
    $core.String? data,
    $fixnum.Int64? count,
  }) {
    final result = create();
    if (features != null) result.features.addAll(features);
    if (data != null) result.data = data;
    if (count != null) result.count = count;
    return result;
  }

  GetMapCablesResponse._();

  factory GetMapCablesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapCablesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapCablesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<$1.Feature>(1, _omitFieldNames ? '' : 'features',
        subBuilder: $1.Feature.create)
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCablesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCablesResponse copyWith(void Function(GetMapCablesResponse) updates) =>
      super.copyWith((message) => updates(message as GetMapCablesResponse))
          as GetMapCablesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapCablesResponse create() => GetMapCablesResponse._();
  @$core.override
  GetMapCablesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapCablesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapCablesResponse>(create);
  static GetMapCablesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Feature> get features => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => $_clearField(3);
}

class GetMapPolygonsRequest extends $pb.GeneratedMessage {
  factory GetMapPolygonsRequest({
    $1.PointBounds? bounds,
    $core.int? zoom,
    $core.int? limit,
    $core.int? offset,
  }) {
    final result = create();
    if (bounds != null) result.bounds = bounds;
    if (zoom != null) result.zoom = zoom;
    if (limit != null) result.limit = limit;
    if (offset != null) result.offset = offset;
    return result;
  }

  GetMapPolygonsRequest._();

  factory GetMapPolygonsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapPolygonsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapPolygonsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.PointBounds>(1, _omitFieldNames ? '' : 'bounds',
        subBuilder: $1.PointBounds.create)
    ..aI(2, _omitFieldNames ? '' : 'zoom')
    ..aI(3, _omitFieldNames ? '' : 'limit')
    ..aI(4, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapPolygonsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapPolygonsRequest copyWith(
          void Function(GetMapPolygonsRequest) updates) =>
      super.copyWith((message) => updates(message as GetMapPolygonsRequest))
          as GetMapPolygonsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapPolygonsRequest create() => GetMapPolygonsRequest._();
  @$core.override
  GetMapPolygonsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapPolygonsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapPolygonsRequest>(create);
  static GetMapPolygonsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PointBounds get bounds => $_getN(0);
  @$pb.TagNumber(1)
  set bounds($1.PointBounds value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBounds() => $_has(0);
  @$pb.TagNumber(1)
  void clearBounds() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.PointBounds ensureBounds() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get zoom => $_getIZ(1);
  @$pb.TagNumber(2)
  set zoom($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasZoom() => $_has(1);
  @$pb.TagNumber(2)
  void clearZoom() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get offset => $_getIZ(3);
  @$pb.TagNumber(4)
  set offset($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearOffset() => $_clearField(4);
}

class GetMapPolygonsResponse extends $pb.GeneratedMessage {
  factory GetMapPolygonsResponse({
    $core.Iterable<$1.Feature>? features,
    $core.String? data,
    $fixnum.Int64? count,
  }) {
    final result = create();
    if (features != null) result.features.addAll(features);
    if (data != null) result.data = data;
    if (count != null) result.count = count;
    return result;
  }

  GetMapPolygonsResponse._();

  factory GetMapPolygonsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapPolygonsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapPolygonsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<$1.Feature>(1, _omitFieldNames ? '' : 'features',
        subBuilder: $1.Feature.create)
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapPolygonsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapPolygonsResponse copyWith(
          void Function(GetMapPolygonsResponse) updates) =>
      super.copyWith((message) => updates(message as GetMapPolygonsResponse))
          as GetMapPolygonsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapPolygonsResponse create() => GetMapPolygonsResponse._();
  @$core.override
  GetMapPolygonsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapPolygonsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapPolygonsResponse>(create);
  static GetMapPolygonsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Feature> get features => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => $_clearField(3);
}

class GetMapBuildingsRequest extends $pb.GeneratedMessage {
  factory GetMapBuildingsRequest({
    $1.PointBounds? bounds,
    $core.int? zoom,
    $core.int? limit,
    $core.int? offset,
  }) {
    final result = create();
    if (bounds != null) result.bounds = bounds;
    if (zoom != null) result.zoom = zoom;
    if (limit != null) result.limit = limit;
    if (offset != null) result.offset = offset;
    return result;
  }

  GetMapBuildingsRequest._();

  factory GetMapBuildingsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapBuildingsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapBuildingsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.PointBounds>(1, _omitFieldNames ? '' : 'bounds',
        subBuilder: $1.PointBounds.create)
    ..aI(2, _omitFieldNames ? '' : 'zoom')
    ..aI(3, _omitFieldNames ? '' : 'limit')
    ..aI(4, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapBuildingsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapBuildingsRequest copyWith(
          void Function(GetMapBuildingsRequest) updates) =>
      super.copyWith((message) => updates(message as GetMapBuildingsRequest))
          as GetMapBuildingsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapBuildingsRequest create() => GetMapBuildingsRequest._();
  @$core.override
  GetMapBuildingsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapBuildingsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapBuildingsRequest>(create);
  static GetMapBuildingsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PointBounds get bounds => $_getN(0);
  @$pb.TagNumber(1)
  set bounds($1.PointBounds value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBounds() => $_has(0);
  @$pb.TagNumber(1)
  void clearBounds() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.PointBounds ensureBounds() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get zoom => $_getIZ(1);
  @$pb.TagNumber(2)
  set zoom($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasZoom() => $_has(1);
  @$pb.TagNumber(2)
  void clearZoom() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get offset => $_getIZ(3);
  @$pb.TagNumber(4)
  set offset($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearOffset() => $_clearField(4);
}

class GetMapBuildingsResponse extends $pb.GeneratedMessage {
  factory GetMapBuildingsResponse({
    $core.Iterable<$1.Feature>? features,
    $core.String? data,
    $fixnum.Int64? count,
  }) {
    final result = create();
    if (features != null) result.features.addAll(features);
    if (data != null) result.data = data;
    if (count != null) result.count = count;
    return result;
  }

  GetMapBuildingsResponse._();

  factory GetMapBuildingsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapBuildingsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapBuildingsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<$1.Feature>(1, _omitFieldNames ? '' : 'features',
        subBuilder: $1.Feature.create)
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapBuildingsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapBuildingsResponse copyWith(
          void Function(GetMapBuildingsResponse) updates) =>
      super.copyWith((message) => updates(message as GetMapBuildingsResponse))
          as GetMapBuildingsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapBuildingsResponse create() => GetMapBuildingsResponse._();
  @$core.override
  GetMapBuildingsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapBuildingsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapBuildingsResponse>(create);
  static GetMapBuildingsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Feature> get features => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => $_clearField(3);
}

class GetMapDuctsRequest extends $pb.GeneratedMessage {
  factory GetMapDuctsRequest({
    $1.PointBounds? bounds,
    $core.int? zoom,
    $core.int? limit,
    $core.int? offset,
  }) {
    final result = create();
    if (bounds != null) result.bounds = bounds;
    if (zoom != null) result.zoom = zoom;
    if (limit != null) result.limit = limit;
    if (offset != null) result.offset = offset;
    return result;
  }

  GetMapDuctsRequest._();

  factory GetMapDuctsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapDuctsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapDuctsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.PointBounds>(1, _omitFieldNames ? '' : 'bounds',
        subBuilder: $1.PointBounds.create)
    ..aI(2, _omitFieldNames ? '' : 'zoom')
    ..aI(3, _omitFieldNames ? '' : 'limit')
    ..aI(4, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapDuctsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapDuctsRequest copyWith(void Function(GetMapDuctsRequest) updates) =>
      super.copyWith((message) => updates(message as GetMapDuctsRequest))
          as GetMapDuctsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapDuctsRequest create() => GetMapDuctsRequest._();
  @$core.override
  GetMapDuctsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapDuctsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapDuctsRequest>(create);
  static GetMapDuctsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PointBounds get bounds => $_getN(0);
  @$pb.TagNumber(1)
  set bounds($1.PointBounds value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBounds() => $_has(0);
  @$pb.TagNumber(1)
  void clearBounds() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.PointBounds ensureBounds() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get zoom => $_getIZ(1);
  @$pb.TagNumber(2)
  set zoom($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasZoom() => $_has(1);
  @$pb.TagNumber(2)
  void clearZoom() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get offset => $_getIZ(3);
  @$pb.TagNumber(4)
  set offset($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearOffset() => $_clearField(4);
}

class GetMapDuctsResponse extends $pb.GeneratedMessage {
  factory GetMapDuctsResponse({
    $core.Iterable<$1.Feature>? features,
    $core.String? data,
    $fixnum.Int64? count,
  }) {
    final result = create();
    if (features != null) result.features.addAll(features);
    if (data != null) result.data = data;
    if (count != null) result.count = count;
    return result;
  }

  GetMapDuctsResponse._();

  factory GetMapDuctsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapDuctsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapDuctsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<$1.Feature>(1, _omitFieldNames ? '' : 'features',
        subBuilder: $1.Feature.create)
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapDuctsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapDuctsResponse copyWith(void Function(GetMapDuctsResponse) updates) =>
      super.copyWith((message) => updates(message as GetMapDuctsResponse))
          as GetMapDuctsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapDuctsResponse create() => GetMapDuctsResponse._();
  @$core.override
  GetMapDuctsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapDuctsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapDuctsResponse>(create);
  static GetMapDuctsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Feature> get features => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => $_clearField(3);
}

class GetMapCoveragesRequest extends $pb.GeneratedMessage {
  factory GetMapCoveragesRequest({
    $1.PointBounds? bounds,
    $core.int? zoom,
    $core.int? limit,
    $core.int? offset,
  }) {
    final result = create();
    if (bounds != null) result.bounds = bounds;
    if (zoom != null) result.zoom = zoom;
    if (limit != null) result.limit = limit;
    if (offset != null) result.offset = offset;
    return result;
  }

  GetMapCoveragesRequest._();

  factory GetMapCoveragesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapCoveragesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapCoveragesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.PointBounds>(1, _omitFieldNames ? '' : 'bounds',
        subBuilder: $1.PointBounds.create)
    ..aI(2, _omitFieldNames ? '' : 'zoom')
    ..aI(3, _omitFieldNames ? '' : 'limit')
    ..aI(4, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCoveragesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCoveragesRequest copyWith(
          void Function(GetMapCoveragesRequest) updates) =>
      super.copyWith((message) => updates(message as GetMapCoveragesRequest))
          as GetMapCoveragesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapCoveragesRequest create() => GetMapCoveragesRequest._();
  @$core.override
  GetMapCoveragesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapCoveragesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapCoveragesRequest>(create);
  static GetMapCoveragesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PointBounds get bounds => $_getN(0);
  @$pb.TagNumber(1)
  set bounds($1.PointBounds value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBounds() => $_has(0);
  @$pb.TagNumber(1)
  void clearBounds() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.PointBounds ensureBounds() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get zoom => $_getIZ(1);
  @$pb.TagNumber(2)
  set zoom($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasZoom() => $_has(1);
  @$pb.TagNumber(2)
  void clearZoom() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get offset => $_getIZ(3);
  @$pb.TagNumber(4)
  set offset($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearOffset() => $_clearField(4);
}

class GetMapCoveragesResponse extends $pb.GeneratedMessage {
  factory GetMapCoveragesResponse({
    $core.Iterable<$1.Feature>? features,
    $core.String? data,
    $fixnum.Int64? count,
  }) {
    final result = create();
    if (features != null) result.features.addAll(features);
    if (data != null) result.data = data;
    if (count != null) result.count = count;
    return result;
  }

  GetMapCoveragesResponse._();

  factory GetMapCoveragesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapCoveragesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapCoveragesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<$1.Feature>(1, _omitFieldNames ? '' : 'features',
        subBuilder: $1.Feature.create)
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..aInt64(3, _omitFieldNames ? '' : 'count')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCoveragesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapCoveragesResponse copyWith(
          void Function(GetMapCoveragesResponse) updates) =>
      super.copyWith((message) => updates(message as GetMapCoveragesResponse))
          as GetMapCoveragesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapCoveragesResponse create() => GetMapCoveragesResponse._();
  @$core.override
  GetMapCoveragesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapCoveragesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapCoveragesResponse>(create);
  static GetMapCoveragesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.Feature> get features => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get count => $_getI64(2);
  @$pb.TagNumber(3)
  set count($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearCount() => $_clearField(3);
}

class ChangeMapDisplayRequest extends $pb.GeneratedMessage {
  factory ChangeMapDisplayRequest({
    $core.Iterable<$core.String>? nodes,
    $core.Iterable<$core.String>? cables,
    $core.Iterable<$core.String>? coverageArea,
    $core.Iterable<$core.String>? polygons,
    $core.Iterable<$core.String>? buildings,
    $core.Iterable<$fixnum.Int64>? tags,
  }) {
    final result = create();
    if (nodes != null) result.nodes.addAll(nodes);
    if (cables != null) result.cables.addAll(cables);
    if (coverageArea != null) result.coverageArea.addAll(coverageArea);
    if (polygons != null) result.polygons.addAll(polygons);
    if (buildings != null) result.buildings.addAll(buildings);
    if (tags != null) result.tags.addAll(tags);
    return result;
  }

  ChangeMapDisplayRequest._();

  factory ChangeMapDisplayRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChangeMapDisplayRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChangeMapDisplayRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'nodes')
    ..pPS(2, _omitFieldNames ? '' : 'cables')
    ..pPS(3, _omitFieldNames ? '' : 'coverageArea')
    ..pPS(4, _omitFieldNames ? '' : 'polygons')
    ..pPS(5, _omitFieldNames ? '' : 'buildings')
    ..p<$fixnum.Int64>(6, _omitFieldNames ? '' : 'tags', $pb.PbFieldType.K6)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangeMapDisplayRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangeMapDisplayRequest copyWith(
          void Function(ChangeMapDisplayRequest) updates) =>
      super.copyWith((message) => updates(message as ChangeMapDisplayRequest))
          as ChangeMapDisplayRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangeMapDisplayRequest create() => ChangeMapDisplayRequest._();
  @$core.override
  ChangeMapDisplayRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChangeMapDisplayRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangeMapDisplayRequest>(create);
  static ChangeMapDisplayRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get nodes => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get cables => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get coverageArea => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get polygons => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get buildings => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<$fixnum.Int64> get tags => $_getList(5);
}

class ChangeMapDisplayResponse extends $pb.GeneratedMessage {
  factory ChangeMapDisplayResponse() => create();

  ChangeMapDisplayResponse._();

  factory ChangeMapDisplayResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChangeMapDisplayResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChangeMapDisplayResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangeMapDisplayResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangeMapDisplayResponse copyWith(
          void Function(ChangeMapDisplayResponse) updates) =>
      super.copyWith((message) => updates(message as ChangeMapDisplayResponse))
          as ChangeMapDisplayResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangeMapDisplayResponse create() => ChangeMapDisplayResponse._();
  @$core.override
  ChangeMapDisplayResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChangeMapDisplayResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChangeMapDisplayResponse>(create);
  static ChangeMapDisplayResponse? _defaultInstance;
}

class CreateNoteMapRequest extends $pb.GeneratedMessage {
  factory CreateNoteMapRequest({
    $core.String? name,
    $1.Point? geom,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (geom != null) result.geom = geom;
    return result;
  }

  CreateNoteMapRequest._();

  factory CreateNoteMapRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateNoteMapRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateNoteMapRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$1.Point>(2, _omitFieldNames ? '' : 'geom',
        subBuilder: $1.Point.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateNoteMapRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateNoteMapRequest copyWith(void Function(CreateNoteMapRequest) updates) =>
      super.copyWith((message) => updates(message as CreateNoteMapRequest))
          as CreateNoteMapRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateNoteMapRequest create() => CreateNoteMapRequest._();
  @$core.override
  CreateNoteMapRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateNoteMapRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateNoteMapRequest>(create);
  static CreateNoteMapRequest? _defaultInstance;

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

class CreateNoteMapResponse extends $pb.GeneratedMessage {
  factory CreateNoteMapResponse({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  CreateNoteMapResponse._();

  factory CreateNoteMapResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateNoteMapResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateNoteMapResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateNoteMapResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateNoteMapResponse copyWith(
          void Function(CreateNoteMapResponse) updates) =>
      super.copyWith((message) => updates(message as CreateNoteMapResponse))
          as CreateNoteMapResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateNoteMapResponse create() => CreateNoteMapResponse._();
  @$core.override
  CreateNoteMapResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateNoteMapResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateNoteMapResponse>(create);
  static CreateNoteMapResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class GetNotesMapRequest extends $pb.GeneratedMessage {
  factory GetNotesMapRequest({
    $1.Pagination? pagination,
  }) {
    final result = create();
    if (pagination != null) result.pagination = pagination;
    return result;
  }

  GetNotesMapRequest._();

  factory GetNotesMapRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetNotesMapRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetNotesMapRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.Pagination>(1, _omitFieldNames ? '' : 'pagination',
        subBuilder: $1.Pagination.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNotesMapRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNotesMapRequest copyWith(void Function(GetNotesMapRequest) updates) =>
      super.copyWith((message) => updates(message as GetNotesMapRequest))
          as GetNotesMapRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNotesMapRequest create() => GetNotesMapRequest._();
  @$core.override
  GetNotesMapRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetNotesMapRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetNotesMapRequest>(create);
  static GetNotesMapRequest? _defaultInstance;

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
}

class GetNotesMapResponse extends $pb.GeneratedMessage {
  factory GetNotesMapResponse({
    $fixnum.Int64? total,
    $core.Iterable<NoteMap>? items,
  }) {
    final result = create();
    if (total != null) result.total = total;
    if (items != null) result.items.addAll(items);
    return result;
  }

  GetNotesMapResponse._();

  factory GetNotesMapResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetNotesMapResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetNotesMapResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'total')
    ..pPM<NoteMap>(2, _omitFieldNames ? '' : 'items',
        subBuilder: NoteMap.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNotesMapResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNotesMapResponse copyWith(void Function(GetNotesMapResponse) updates) =>
      super.copyWith((message) => updates(message as GetNotesMapResponse))
          as GetNotesMapResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNotesMapResponse create() => GetNotesMapResponse._();
  @$core.override
  GetNotesMapResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetNotesMapResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetNotesMapResponse>(create);
  static GetNotesMapResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get total => $_getI64(0);
  @$pb.TagNumber(1)
  set total($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotal() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<NoteMap> get items => $_getList(1);
}

class EditNoteMapRequest extends $pb.GeneratedMessage {
  factory EditNoteMapRequest({
    $fixnum.Int64? id,
    $core.String? name,
    $1.Point? geom,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (geom != null) result.geom = geom;
    return result;
  }

  EditNoteMapRequest._();

  factory EditNoteMapRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditNoteMapRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditNoteMapRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<$1.Point>(3, _omitFieldNames ? '' : 'geom',
        subBuilder: $1.Point.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditNoteMapRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditNoteMapRequest copyWith(void Function(EditNoteMapRequest) updates) =>
      super.copyWith((message) => updates(message as EditNoteMapRequest))
          as EditNoteMapRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditNoteMapRequest create() => EditNoteMapRequest._();
  @$core.override
  EditNoteMapRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditNoteMapRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditNoteMapRequest>(create);
  static EditNoteMapRequest? _defaultInstance;

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
  $1.Point get geom => $_getN(2);
  @$pb.TagNumber(3)
  set geom($1.Point value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGeom() => $_has(2);
  @$pb.TagNumber(3)
  void clearGeom() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Point ensureGeom() => $_ensure(2);
}

class EditNoteMapResponse extends $pb.GeneratedMessage {
  factory EditNoteMapResponse() => create();

  EditNoteMapResponse._();

  factory EditNoteMapResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EditNoteMapResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EditNoteMapResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditNoteMapResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EditNoteMapResponse copyWith(void Function(EditNoteMapResponse) updates) =>
      super.copyWith((message) => updates(message as EditNoteMapResponse))
          as EditNoteMapResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EditNoteMapResponse create() => EditNoteMapResponse._();
  @$core.override
  EditNoteMapResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EditNoteMapResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EditNoteMapResponse>(create);
  static EditNoteMapResponse? _defaultInstance;
}

class DeleteNoteMapRequest extends $pb.GeneratedMessage {
  factory DeleteNoteMapRequest({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DeleteNoteMapRequest._();

  factory DeleteNoteMapRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteNoteMapRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteNoteMapRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteNoteMapRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteNoteMapRequest copyWith(void Function(DeleteNoteMapRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteNoteMapRequest))
          as DeleteNoteMapRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteNoteMapRequest create() => DeleteNoteMapRequest._();
  @$core.override
  DeleteNoteMapRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteNoteMapRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteNoteMapRequest>(create);
  static DeleteNoteMapRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class DeleteNoteMapResponse extends $pb.GeneratedMessage {
  factory DeleteNoteMapResponse() => create();

  DeleteNoteMapResponse._();

  factory DeleteNoteMapResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteNoteMapResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteNoteMapResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteNoteMapResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteNoteMapResponse copyWith(
          void Function(DeleteNoteMapResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteNoteMapResponse))
          as DeleteNoteMapResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteNoteMapResponse create() => DeleteNoteMapResponse._();
  @$core.override
  DeleteNoteMapResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteNoteMapResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteNoteMapResponse>(create);
  static DeleteNoteMapResponse? _defaultInstance;
}

class GetMapDeviceStatusRequest extends $pb.GeneratedMessage {
  factory GetMapDeviceStatusRequest({
    $1.PointBounds? bounds,
    $core.int? zoom,
    $core.int? limit,
    $core.int? offset,
  }) {
    final result = create();
    if (bounds != null) result.bounds = bounds;
    if (zoom != null) result.zoom = zoom;
    if (limit != null) result.limit = limit;
    if (offset != null) result.offset = offset;
    return result;
  }

  GetMapDeviceStatusRequest._();

  factory GetMapDeviceStatusRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapDeviceStatusRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapDeviceStatusRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.PointBounds>(1, _omitFieldNames ? '' : 'bounds',
        subBuilder: $1.PointBounds.create)
    ..aI(2, _omitFieldNames ? '' : 'zoom')
    ..aI(3, _omitFieldNames ? '' : 'limit')
    ..aI(4, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapDeviceStatusRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapDeviceStatusRequest copyWith(
          void Function(GetMapDeviceStatusRequest) updates) =>
      super.copyWith((message) => updates(message as GetMapDeviceStatusRequest))
          as GetMapDeviceStatusRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapDeviceStatusRequest create() => GetMapDeviceStatusRequest._();
  @$core.override
  GetMapDeviceStatusRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapDeviceStatusRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapDeviceStatusRequest>(create);
  static GetMapDeviceStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PointBounds get bounds => $_getN(0);
  @$pb.TagNumber(1)
  set bounds($1.PointBounds value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBounds() => $_has(0);
  @$pb.TagNumber(1)
  void clearBounds() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.PointBounds ensureBounds() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get zoom => $_getIZ(1);
  @$pb.TagNumber(2)
  set zoom($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasZoom() => $_has(1);
  @$pb.TagNumber(2)
  void clearZoom() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get offset => $_getIZ(3);
  @$pb.TagNumber(4)
  set offset($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearOffset() => $_clearField(4);
}

class GetMapDeviceLldpRequest extends $pb.GeneratedMessage {
  factory GetMapDeviceLldpRequest({
    $1.PointBounds? bounds,
    $core.int? zoom,
    $core.int? limit,
    $core.int? offset,
  }) {
    final result = create();
    if (bounds != null) result.bounds = bounds;
    if (zoom != null) result.zoom = zoom;
    if (limit != null) result.limit = limit;
    if (offset != null) result.offset = offset;
    return result;
  }

  GetMapDeviceLldpRequest._();

  factory GetMapDeviceLldpRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetMapDeviceLldpRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetMapDeviceLldpRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.PointBounds>(1, _omitFieldNames ? '' : 'bounds',
        subBuilder: $1.PointBounds.create)
    ..aI(2, _omitFieldNames ? '' : 'zoom')
    ..aI(3, _omitFieldNames ? '' : 'limit')
    ..aI(4, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapDeviceLldpRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetMapDeviceLldpRequest copyWith(
          void Function(GetMapDeviceLldpRequest) updates) =>
      super.copyWith((message) => updates(message as GetMapDeviceLldpRequest))
          as GetMapDeviceLldpRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetMapDeviceLldpRequest create() => GetMapDeviceLldpRequest._();
  @$core.override
  GetMapDeviceLldpRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetMapDeviceLldpRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetMapDeviceLldpRequest>(create);
  static GetMapDeviceLldpRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.PointBounds get bounds => $_getN(0);
  @$pb.TagNumber(1)
  set bounds($1.PointBounds value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBounds() => $_has(0);
  @$pb.TagNumber(1)
  void clearBounds() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.PointBounds ensureBounds() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get zoom => $_getIZ(1);
  @$pb.TagNumber(2)
  set zoom($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasZoom() => $_has(1);
  @$pb.TagNumber(2)
  void clearZoom() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get offset => $_getIZ(3);
  @$pb.TagNumber(4)
  set offset($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearOffset() => $_clearField(4);
}

class MapDeviceFeature extends $pb.GeneratedMessage {
  factory MapDeviceFeature({
    $1.Feature? feature,
  }) {
    final result = create();
    if (feature != null) result.feature = feature;
    return result;
  }

  MapDeviceFeature._();

  factory MapDeviceFeature.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MapDeviceFeature.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MapDeviceFeature',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.Feature>(1, _omitFieldNames ? '' : 'feature',
        subBuilder: $1.Feature.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapDeviceFeature clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MapDeviceFeature copyWith(void Function(MapDeviceFeature) updates) =>
      super.copyWith((message) => updates(message as MapDeviceFeature))
          as MapDeviceFeature;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MapDeviceFeature create() => MapDeviceFeature._();
  @$core.override
  MapDeviceFeature createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MapDeviceFeature getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MapDeviceFeature>(create);
  static MapDeviceFeature? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Feature get feature => $_getN(0);
  @$pb.TagNumber(1)
  set feature($1.Feature value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFeature() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeature() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Feature ensureFeature() => $_ensure(0);
}

class GetArObjectsRequest extends $pb.GeneratedMessage {
  factory GetArObjectsRequest({
    $core.double? lat,
    $core.double? lng,
    $core.double? radiusMeters,
    $core.Iterable<$core.String>? kinds,
    $core.int? limitPerKind,
    $core.int? indoorPeerType,
    $fixnum.Int64? indoorPeerId,
    $core.bool? includeCovered,
  }) {
    final result = create();
    if (lat != null) result.lat = lat;
    if (lng != null) result.lng = lng;
    if (radiusMeters != null) result.radiusMeters = radiusMeters;
    if (kinds != null) result.kinds.addAll(kinds);
    if (limitPerKind != null) result.limitPerKind = limitPerKind;
    if (indoorPeerType != null) result.indoorPeerType = indoorPeerType;
    if (indoorPeerId != null) result.indoorPeerId = indoorPeerId;
    if (includeCovered != null) result.includeCovered = includeCovered;
    return result;
  }

  GetArObjectsRequest._();

  factory GetArObjectsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetArObjectsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetArObjectsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'lat')
    ..aD(2, _omitFieldNames ? '' : 'lng')
    ..aD(3, _omitFieldNames ? '' : 'radiusMeters')
    ..pPS(4, _omitFieldNames ? '' : 'kinds')
    ..aI(5, _omitFieldNames ? '' : 'limitPerKind')
    ..aI(6, _omitFieldNames ? '' : 'indoorPeerType')
    ..aInt64(7, _omitFieldNames ? '' : 'indoorPeerId')
    ..aOB(8, _omitFieldNames ? '' : 'includeCovered')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetArObjectsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetArObjectsRequest copyWith(void Function(GetArObjectsRequest) updates) =>
      super.copyWith((message) => updates(message as GetArObjectsRequest))
          as GetArObjectsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArObjectsRequest create() => GetArObjectsRequest._();
  @$core.override
  GetArObjectsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetArObjectsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetArObjectsRequest>(create);
  static GetArObjectsRequest? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.double get radiusMeters => $_getN(2);
  @$pb.TagNumber(3)
  set radiusMeters($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRadiusMeters() => $_has(2);
  @$pb.TagNumber(3)
  void clearRadiusMeters() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get kinds => $_getList(3);

  @$pb.TagNumber(5)
  $core.int get limitPerKind => $_getIZ(4);
  @$pb.TagNumber(5)
  set limitPerKind($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLimitPerKind() => $_has(4);
  @$pb.TagNumber(5)
  void clearLimitPerKind() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get indoorPeerType => $_getIZ(5);
  @$pb.TagNumber(6)
  set indoorPeerType($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIndoorPeerType() => $_has(5);
  @$pb.TagNumber(6)
  void clearIndoorPeerType() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get indoorPeerId => $_getI64(6);
  @$pb.TagNumber(7)
  set indoorPeerId($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIndoorPeerId() => $_has(6);
  @$pb.TagNumber(7)
  void clearIndoorPeerId() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get includeCovered => $_getBF(7);
  @$pb.TagNumber(8)
  set includeCovered($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasIncludeCovered() => $_has(7);
  @$pb.TagNumber(8)
  void clearIncludeCovered() => $_clearField(8);
}

class ArObjectItem extends $pb.GeneratedMessage {
  factory ArObjectItem({
    $core.String? kind,
    $fixnum.Int64? id,
    $core.String? title,
    $core.String? subtitle,
    $core.String? color,
    $core.String? icon,
    $core.bool? isPlan,
    $1.Point? point,
    $core.Iterable<$1.Point>? line,
    $core.double? headingDeg,
    $core.bool? coveredInside,
    $core.int? peerType,
    $fixnum.Int64? peerId,
    $core.String? peerName,
    $core.int? coveredCount,
    $core.double? localX,
    $core.double? localY,
    $core.double? localZ,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    if (subtitle != null) result.subtitle = subtitle;
    if (color != null) result.color = color;
    if (icon != null) result.icon = icon;
    if (isPlan != null) result.isPlan = isPlan;
    if (point != null) result.point = point;
    if (line != null) result.line.addAll(line);
    if (headingDeg != null) result.headingDeg = headingDeg;
    if (coveredInside != null) result.coveredInside = coveredInside;
    if (peerType != null) result.peerType = peerType;
    if (peerId != null) result.peerId = peerId;
    if (peerName != null) result.peerName = peerName;
    if (coveredCount != null) result.coveredCount = coveredCount;
    if (localX != null) result.localX = localX;
    if (localY != null) result.localY = localY;
    if (localZ != null) result.localZ = localZ;
    return result;
  }

  ArObjectItem._();

  factory ArObjectItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ArObjectItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ArObjectItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kind')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aOS(4, _omitFieldNames ? '' : 'subtitle')
    ..aOS(5, _omitFieldNames ? '' : 'color')
    ..aOS(6, _omitFieldNames ? '' : 'icon')
    ..aOB(7, _omitFieldNames ? '' : 'isPlan')
    ..aOM<$1.Point>(8, _omitFieldNames ? '' : 'point',
        subBuilder: $1.Point.create)
    ..pPM<$1.Point>(9, _omitFieldNames ? '' : 'line',
        subBuilder: $1.Point.create)
    ..aD(10, _omitFieldNames ? '' : 'headingDeg')
    ..aOB(11, _omitFieldNames ? '' : 'coveredInside')
    ..aI(12, _omitFieldNames ? '' : 'peerType')
    ..aInt64(13, _omitFieldNames ? '' : 'peerId')
    ..aOS(14, _omitFieldNames ? '' : 'peerName')
    ..aI(15, _omitFieldNames ? '' : 'coveredCount')
    ..aD(16, _omitFieldNames ? '' : 'localX')
    ..aD(17, _omitFieldNames ? '' : 'localY')
    ..aD(18, _omitFieldNames ? '' : 'localZ')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArObjectItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArObjectItem copyWith(void Function(ArObjectItem) updates) =>
      super.copyWith((message) => updates(message as ArObjectItem))
          as ArObjectItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArObjectItem create() => ArObjectItem._();
  @$core.override
  ArObjectItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ArObjectItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ArObjectItem>(create);
  static ArObjectItem? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kind => $_getSZ(0);
  @$pb.TagNumber(1)
  set kind($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get subtitle => $_getSZ(3);
  @$pb.TagNumber(4)
  set subtitle($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSubtitle() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubtitle() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get color => $_getSZ(4);
  @$pb.TagNumber(5)
  set color($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearColor() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get icon => $_getSZ(5);
  @$pb.TagNumber(6)
  set icon($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIcon() => $_has(5);
  @$pb.TagNumber(6)
  void clearIcon() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get isPlan => $_getBF(6);
  @$pb.TagNumber(7)
  set isPlan($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsPlan() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsPlan() => $_clearField(7);

  @$pb.TagNumber(8)
  $1.Point get point => $_getN(7);
  @$pb.TagNumber(8)
  set point($1.Point value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasPoint() => $_has(7);
  @$pb.TagNumber(8)
  void clearPoint() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.Point ensurePoint() => $_ensure(7);

  @$pb.TagNumber(9)
  $pb.PbList<$1.Point> get line => $_getList(8);

  @$pb.TagNumber(10)
  $core.double get headingDeg => $_getN(9);
  @$pb.TagNumber(10)
  set headingDeg($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(10)
  $core.bool hasHeadingDeg() => $_has(9);
  @$pb.TagNumber(10)
  void clearHeadingDeg() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get coveredInside => $_getBF(10);
  @$pb.TagNumber(11)
  set coveredInside($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasCoveredInside() => $_has(10);
  @$pb.TagNumber(11)
  void clearCoveredInside() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get peerType => $_getIZ(11);
  @$pb.TagNumber(12)
  set peerType($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasPeerType() => $_has(11);
  @$pb.TagNumber(12)
  void clearPeerType() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get peerId => $_getI64(12);
  @$pb.TagNumber(13)
  set peerId($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasPeerId() => $_has(12);
  @$pb.TagNumber(13)
  void clearPeerId() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get peerName => $_getSZ(13);
  @$pb.TagNumber(14)
  set peerName($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasPeerName() => $_has(13);
  @$pb.TagNumber(14)
  void clearPeerName() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.int get coveredCount => $_getIZ(14);
  @$pb.TagNumber(15)
  set coveredCount($core.int value) => $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasCoveredCount() => $_has(14);
  @$pb.TagNumber(15)
  void clearCoveredCount() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.double get localX => $_getN(15);
  @$pb.TagNumber(16)
  set localX($core.double value) => $_setDouble(15, value);
  @$pb.TagNumber(16)
  $core.bool hasLocalX() => $_has(15);
  @$pb.TagNumber(16)
  void clearLocalX() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.double get localY => $_getN(16);
  @$pb.TagNumber(17)
  set localY($core.double value) => $_setDouble(16, value);
  @$pb.TagNumber(17)
  $core.bool hasLocalY() => $_has(16);
  @$pb.TagNumber(17)
  void clearLocalY() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.double get localZ => $_getN(17);
  @$pb.TagNumber(18)
  set localZ($core.double value) => $_setDouble(17, value);
  @$pb.TagNumber(18)
  $core.bool hasLocalZ() => $_has(17);
  @$pb.TagNumber(18)
  void clearLocalZ() => $_clearField(18);
}

class GetArObjectsResponse extends $pb.GeneratedMessage {
  factory GetArObjectsResponse({
    $core.Iterable<ArObjectItem>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  GetArObjectsResponse._();

  factory GetArObjectsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetArObjectsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetArObjectsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<ArObjectItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: ArObjectItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetArObjectsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetArObjectsResponse copyWith(void Function(GetArObjectsResponse) updates) =>
      super.copyWith((message) => updates(message as GetArObjectsResponse))
          as GetArObjectsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArObjectsResponse create() => GetArObjectsResponse._();
  @$core.override
  GetArObjectsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetArObjectsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetArObjectsResponse>(create);
  static GetArObjectsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ArObjectItem> get items => $_getList(0);
}

class GetArObjectRequest extends $pb.GeneratedMessage {
  factory GetArObjectRequest({
    $core.String? kind,
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (id != null) result.id = id;
    return result;
  }

  GetArObjectRequest._();

  factory GetArObjectRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetArObjectRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetArObjectRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kind')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetArObjectRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetArObjectRequest copyWith(void Function(GetArObjectRequest) updates) =>
      super.copyWith((message) => updates(message as GetArObjectRequest))
          as GetArObjectRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArObjectRequest create() => GetArObjectRequest._();
  @$core.override
  GetArObjectRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetArObjectRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetArObjectRequest>(create);
  static GetArObjectRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kind => $_getSZ(0);
  @$pb.TagNumber(1)
  set kind($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);
}

class GetArObjectResponse extends $pb.GeneratedMessage {
  factory GetArObjectResponse({
    ArObjectItem? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  GetArObjectResponse._();

  factory GetArObjectResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetArObjectResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetArObjectResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<ArObjectItem>(1, _omitFieldNames ? '' : 'item',
        subBuilder: ArObjectItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetArObjectResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetArObjectResponse copyWith(void Function(GetArObjectResponse) updates) =>
      super.copyWith((message) => updates(message as GetArObjectResponse))
          as GetArObjectResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArObjectResponse create() => GetArObjectResponse._();
  @$core.override
  GetArObjectResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetArObjectResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetArObjectResponse>(create);
  static GetArObjectResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ArObjectItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(ArObjectItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  ArObjectItem ensureItem() => $_ensure(0);
}

class SetArDeviceCoverRequest extends $pb.GeneratedMessage {
  factory SetArDeviceCoverRequest({
    $fixnum.Int64? deviceId,
    $core.double? lat,
    $core.double? lng,
    $core.double? headingDeg,
    $core.int? peerType,
    $fixnum.Int64? peerId,
    $core.bool? hasLocal,
    $core.double? localX,
    $core.double? localY,
    $core.double? localZ,
    $core.double? altitudeM,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (lat != null) result.lat = lat;
    if (lng != null) result.lng = lng;
    if (headingDeg != null) result.headingDeg = headingDeg;
    if (peerType != null) result.peerType = peerType;
    if (peerId != null) result.peerId = peerId;
    if (hasLocal != null) result.hasLocal = hasLocal;
    if (localX != null) result.localX = localX;
    if (localY != null) result.localY = localY;
    if (localZ != null) result.localZ = localZ;
    if (altitudeM != null) result.altitudeM = altitudeM;
    return result;
  }

  SetArDeviceCoverRequest._();

  factory SetArDeviceCoverRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetArDeviceCoverRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetArDeviceCoverRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'deviceId')
    ..aD(2, _omitFieldNames ? '' : 'lat')
    ..aD(3, _omitFieldNames ? '' : 'lng')
    ..aD(4, _omitFieldNames ? '' : 'headingDeg')
    ..aI(5, _omitFieldNames ? '' : 'peerType')
    ..aInt64(6, _omitFieldNames ? '' : 'peerId')
    ..aOB(7, _omitFieldNames ? '' : 'hasLocal')
    ..aD(8, _omitFieldNames ? '' : 'localX')
    ..aD(9, _omitFieldNames ? '' : 'localY')
    ..aD(10, _omitFieldNames ? '' : 'localZ')
    ..aD(11, _omitFieldNames ? '' : 'altitudeM')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetArDeviceCoverRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetArDeviceCoverRequest copyWith(
          void Function(SetArDeviceCoverRequest) updates) =>
      super.copyWith((message) => updates(message as SetArDeviceCoverRequest))
          as SetArDeviceCoverRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetArDeviceCoverRequest create() => SetArDeviceCoverRequest._();
  @$core.override
  SetArDeviceCoverRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetArDeviceCoverRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetArDeviceCoverRequest>(create);
  static SetArDeviceCoverRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get deviceId => $_getI64(0);
  @$pb.TagNumber(1)
  set deviceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get lat => $_getN(1);
  @$pb.TagNumber(2)
  set lat($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLat() => $_has(1);
  @$pb.TagNumber(2)
  void clearLat() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get lng => $_getN(2);
  @$pb.TagNumber(3)
  set lng($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLng() => $_has(2);
  @$pb.TagNumber(3)
  void clearLng() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get headingDeg => $_getN(3);
  @$pb.TagNumber(4)
  set headingDeg($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHeadingDeg() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeadingDeg() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get peerType => $_getIZ(4);
  @$pb.TagNumber(5)
  set peerType($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPeerType() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeerType() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get peerId => $_getI64(5);
  @$pb.TagNumber(6)
  set peerId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPeerId() => $_has(5);
  @$pb.TagNumber(6)
  void clearPeerId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get hasLocal => $_getBF(6);
  @$pb.TagNumber(7)
  set hasLocal($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHasLocal() => $_has(6);
  @$pb.TagNumber(7)
  void clearHasLocal() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get localX => $_getN(7);
  @$pb.TagNumber(8)
  set localX($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasLocalX() => $_has(7);
  @$pb.TagNumber(8)
  void clearLocalX() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get localY => $_getN(8);
  @$pb.TagNumber(9)
  set localY($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasLocalY() => $_has(8);
  @$pb.TagNumber(9)
  void clearLocalY() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.double get localZ => $_getN(9);
  @$pb.TagNumber(10)
  set localZ($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(10)
  $core.bool hasLocalZ() => $_has(9);
  @$pb.TagNumber(10)
  void clearLocalZ() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.double get altitudeM => $_getN(10);
  @$pb.TagNumber(11)
  set altitudeM($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasAltitudeM() => $_has(10);
  @$pb.TagNumber(11)
  void clearAltitudeM() => $_clearField(11);
}

class SetArDeviceCoverResponse extends $pb.GeneratedMessage {
  factory SetArDeviceCoverResponse({
    ArObjectItem? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  SetArDeviceCoverResponse._();

  factory SetArDeviceCoverResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetArDeviceCoverResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetArDeviceCoverResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<ArObjectItem>(1, _omitFieldNames ? '' : 'item',
        subBuilder: ArObjectItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetArDeviceCoverResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetArDeviceCoverResponse copyWith(
          void Function(SetArDeviceCoverResponse) updates) =>
      super.copyWith((message) => updates(message as SetArDeviceCoverResponse))
          as SetArDeviceCoverResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetArDeviceCoverResponse create() => SetArDeviceCoverResponse._();
  @$core.override
  SetArDeviceCoverResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetArDeviceCoverResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetArDeviceCoverResponse>(create);
  static SetArDeviceCoverResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ArObjectItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(ArObjectItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  ArObjectItem ensureItem() => $_ensure(0);
}

class ClearArDeviceCoverRequest extends $pb.GeneratedMessage {
  factory ClearArDeviceCoverRequest({
    $fixnum.Int64? deviceId,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    return result;
  }

  ClearArDeviceCoverRequest._();

  factory ClearArDeviceCoverRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClearArDeviceCoverRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClearArDeviceCoverRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'deviceId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClearArDeviceCoverRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClearArDeviceCoverRequest copyWith(
          void Function(ClearArDeviceCoverRequest) updates) =>
      super.copyWith((message) => updates(message as ClearArDeviceCoverRequest))
          as ClearArDeviceCoverRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClearArDeviceCoverRequest create() => ClearArDeviceCoverRequest._();
  @$core.override
  ClearArDeviceCoverRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClearArDeviceCoverRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClearArDeviceCoverRequest>(create);
  static ClearArDeviceCoverRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get deviceId => $_getI64(0);
  @$pb.TagNumber(1)
  set deviceId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
}

class ClearArDeviceCoverResponse extends $pb.GeneratedMessage {
  factory ClearArDeviceCoverResponse({
    ArObjectItem? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  ClearArDeviceCoverResponse._();

  factory ClearArDeviceCoverResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClearArDeviceCoverResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClearArDeviceCoverResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<ArObjectItem>(1, _omitFieldNames ? '' : 'item',
        subBuilder: ArObjectItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClearArDeviceCoverResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClearArDeviceCoverResponse copyWith(
          void Function(ClearArDeviceCoverResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ClearArDeviceCoverResponse))
          as ClearArDeviceCoverResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClearArDeviceCoverResponse create() => ClearArDeviceCoverResponse._();
  @$core.override
  ClearArDeviceCoverResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ClearArDeviceCoverResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClearArDeviceCoverResponse>(create);
  static ClearArDeviceCoverResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ArObjectItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(ArObjectItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  ArObjectItem ensureItem() => $_ensure(0);
}

class SetArNodeHereRequest extends $pb.GeneratedMessage {
  factory SetArNodeHereRequest({
    $fixnum.Int64? nodeId,
    $core.double? lat,
    $core.double? lng,
  }) {
    final result = create();
    if (nodeId != null) result.nodeId = nodeId;
    if (lat != null) result.lat = lat;
    if (lng != null) result.lng = lng;
    return result;
  }

  SetArNodeHereRequest._();

  factory SetArNodeHereRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetArNodeHereRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetArNodeHereRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'nodeId')
    ..aD(2, _omitFieldNames ? '' : 'lat')
    ..aD(3, _omitFieldNames ? '' : 'lng')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetArNodeHereRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetArNodeHereRequest copyWith(void Function(SetArNodeHereRequest) updates) =>
      super.copyWith((message) => updates(message as SetArNodeHereRequest))
          as SetArNodeHereRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetArNodeHereRequest create() => SetArNodeHereRequest._();
  @$core.override
  SetArNodeHereRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetArNodeHereRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetArNodeHereRequest>(create);
  static SetArNodeHereRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nodeId => $_getI64(0);
  @$pb.TagNumber(1)
  set nodeId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get lat => $_getN(1);
  @$pb.TagNumber(2)
  set lat($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLat() => $_has(1);
  @$pb.TagNumber(2)
  void clearLat() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get lng => $_getN(2);
  @$pb.TagNumber(3)
  set lng($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLng() => $_has(2);
  @$pb.TagNumber(3)
  void clearLng() => $_clearField(3);
}

class SetArNodeHereResponse extends $pb.GeneratedMessage {
  factory SetArNodeHereResponse({
    ArObjectItem? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  SetArNodeHereResponse._();

  factory SetArNodeHereResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetArNodeHereResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetArNodeHereResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<ArObjectItem>(1, _omitFieldNames ? '' : 'item',
        subBuilder: ArObjectItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetArNodeHereResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetArNodeHereResponse copyWith(
          void Function(SetArNodeHereResponse) updates) =>
      super.copyWith((message) => updates(message as SetArNodeHereResponse))
          as SetArNodeHereResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetArNodeHereResponse create() => SetArNodeHereResponse._();
  @$core.override
  SetArNodeHereResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetArNodeHereResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetArNodeHereResponse>(create);
  static SetArNodeHereResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ArObjectItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(ArObjectItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  ArObjectItem ensureItem() => $_ensure(0);
}

class AddArCableReserveRequest extends $pb.GeneratedMessage {
  factory AddArCableReserveRequest({
    $fixnum.Int64? cableId,
    $core.double? lat,
    $core.double? lng,
    $fixnum.Int64? meter,
    $core.String? note,
  }) {
    final result = create();
    if (cableId != null) result.cableId = cableId;
    if (lat != null) result.lat = lat;
    if (lng != null) result.lng = lng;
    if (meter != null) result.meter = meter;
    if (note != null) result.note = note;
    return result;
  }

  AddArCableReserveRequest._();

  factory AddArCableReserveRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AddArCableReserveRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddArCableReserveRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'cableId')
    ..aD(2, _omitFieldNames ? '' : 'lat')
    ..aD(3, _omitFieldNames ? '' : 'lng')
    ..aInt64(4, _omitFieldNames ? '' : 'meter')
    ..aOS(5, _omitFieldNames ? '' : 'note')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddArCableReserveRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddArCableReserveRequest copyWith(
          void Function(AddArCableReserveRequest) updates) =>
      super.copyWith((message) => updates(message as AddArCableReserveRequest))
          as AddArCableReserveRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddArCableReserveRequest create() => AddArCableReserveRequest._();
  @$core.override
  AddArCableReserveRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AddArCableReserveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddArCableReserveRequest>(create);
  static AddArCableReserveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cableId => $_getI64(0);
  @$pb.TagNumber(1)
  set cableId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCableId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCableId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get lat => $_getN(1);
  @$pb.TagNumber(2)
  set lat($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLat() => $_has(1);
  @$pb.TagNumber(2)
  void clearLat() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get lng => $_getN(2);
  @$pb.TagNumber(3)
  set lng($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLng() => $_has(2);
  @$pb.TagNumber(3)
  void clearLng() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get meter => $_getI64(3);
  @$pb.TagNumber(4)
  set meter($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMeter() => $_has(3);
  @$pb.TagNumber(4)
  void clearMeter() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get note => $_getSZ(4);
  @$pb.TagNumber(5)
  set note($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNote() => $_has(4);
  @$pb.TagNumber(5)
  void clearNote() => $_clearField(5);
}

class AddArCableReserveResponse extends $pb.GeneratedMessage {
  factory AddArCableReserveResponse({
    ArObjectItem? item,
  }) {
    final result = create();
    if (item != null) result.item = item;
    return result;
  }

  AddArCableReserveResponse._();

  factory AddArCableReserveResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AddArCableReserveResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddArCableReserveResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<ArObjectItem>(1, _omitFieldNames ? '' : 'item',
        subBuilder: ArObjectItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddArCableReserveResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddArCableReserveResponse copyWith(
          void Function(AddArCableReserveResponse) updates) =>
      super.copyWith((message) => updates(message as AddArCableReserveResponse))
          as AddArCableReserveResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddArCableReserveResponse create() => AddArCableReserveResponse._();
  @$core.override
  AddArCableReserveResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AddArCableReserveResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddArCableReserveResponse>(create);
  static AddArCableReserveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ArObjectItem get item => $_getN(0);
  @$pb.TagNumber(1)
  set item(ArObjectItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasItem() => $_has(0);
  @$pb.TagNumber(1)
  void clearItem() => $_clearField(1);
  @$pb.TagNumber(1)
  ArObjectItem ensureItem() => $_ensure(0);
}

class GetArSchemeHintRequest extends $pb.GeneratedMessage {
  factory GetArSchemeHintRequest({
    $core.String? kind,
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (id != null) result.id = id;
    return result;
  }

  GetArSchemeHintRequest._();

  factory GetArSchemeHintRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetArSchemeHintRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetArSchemeHintRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kind')
    ..aInt64(2, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetArSchemeHintRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetArSchemeHintRequest copyWith(
          void Function(GetArSchemeHintRequest) updates) =>
      super.copyWith((message) => updates(message as GetArSchemeHintRequest))
          as GetArSchemeHintRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArSchemeHintRequest create() => GetArSchemeHintRequest._();
  @$core.override
  GetArSchemeHintRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetArSchemeHintRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetArSchemeHintRequest>(create);
  static GetArSchemeHintRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kind => $_getSZ(0);
  @$pb.TagNumber(1)
  set kind($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get id => $_getI64(1);
  @$pb.TagNumber(2)
  set id($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);
}

class GetArSchemeHintResponse extends $pb.GeneratedMessage {
  factory GetArSchemeHintResponse({
    $core.String? text,
    $core.String? impact,
  }) {
    final result = create();
    if (text != null) result.text = text;
    if (impact != null) result.impact = impact;
    return result;
  }

  GetArSchemeHintResponse._();

  factory GetArSchemeHintResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetArSchemeHintResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetArSchemeHintResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aOS(2, _omitFieldNames ? '' : 'impact')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetArSchemeHintResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetArSchemeHintResponse copyWith(
          void Function(GetArSchemeHintResponse) updates) =>
      super.copyWith((message) => updates(message as GetArSchemeHintResponse))
          as GetArSchemeHintResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetArSchemeHintResponse create() => GetArSchemeHintResponse._();
  @$core.override
  GetArSchemeHintResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetArSchemeHintResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetArSchemeHintResponse>(create);
  static GetArSchemeHintResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get impact => $_getSZ(1);
  @$pb.TagNumber(2)
  set impact($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImpact() => $_has(1);
  @$pb.TagNumber(2)
  void clearImpact() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
