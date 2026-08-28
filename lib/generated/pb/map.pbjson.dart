// This is a generated file - do not edit.
//
// Generated from map.proto.

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

@$core.Deprecated('Use tileLayerItemDescriptor instead')
const TileLayerItem$json = {
  '1': 'TileLayerItem',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'url'},
    {'1': 'subdomains', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'subdomains'},
  ],
};

/// Descriptor for `TileLayerItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tileLayerItemDescriptor = $convert.base64Decode(
    'Cg1UaWxlTGF5ZXJJdGVtEjIKA3VybBgBIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0L'
    'DQvdC40LVSA3VybBJACgpzdWJkb21haW5zGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C4'
    '0YHQsNC90LjQtVIKc3ViZG9tYWlucw==');

@$core.Deprecated('Use tileItemDescriptor instead')
const TileItem$json = {
  '1': 'TileItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'label'},
    {'1': 'crs', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'crs'},
    {
      '1': 'layers',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.katan.TileLayerItem',
      '8': {},
      '10': 'layers'
    },
  ],
};

/// Descriptor for `TileItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tileItemDescriptor = $convert.base64Decode(
    'CghUaWxlSXRlbRIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40L'
    'VSAmlkEjYKBWxhYmVsGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIF'
    'bGFiZWwSMgoDY3JzGAMgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIDY3'
    'JzEk4KBmxheWVycxgEIAMoCzIULmthdGFuLlRpbGVMYXllckl0ZW1CIJJBHTIb0YHQutC+0YDQ'
    'viDQvtC/0LjRgdCw0L3QuNC1UgZsYXllcnM=');

@$core.Deprecated('Use mapCoatingDescriptor instead')
const MapCoating$json = {
  '1': 'MapCoating',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'lat', '3': 3, '4': 1, '5': 1, '8': {}, '10': 'lat'},
    {'1': 'lng', '3': 4, '4': 1, '5': 1, '8': {}, '10': 'lng'},
  ],
};

/// Descriptor for `MapCoating`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapCoatingDescriptor = $convert.base64Decode(
    'CgpNYXBDb2F0aW5nEjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90L'
    'jQtVICaWQSNAoEbmFtZRgCIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVS'
    'BG5hbWUSMgoDbGF0GAMgASgBQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIDbG'
    'F0EjIKA2xuZxgEIAEoAUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSA2xuZw==');

@$core.Deprecated('Use noteMapDescriptor instead')
const NoteMap$json = {
  '1': 'NoteMap',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'geom',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.Point',
      '8': {},
      '10': 'geom'
    },
  ],
};

/// Descriptor for `NoteMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noteMapDescriptor = $convert.base64Decode(
    'CgdOb3RlTWFwEjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtV'
    'ICaWQSNAoEbmFtZRgCIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBG5h'
    'bWUSQgoEZ2VvbRgDIAEoCzIMLmthdGFuLlBvaW50QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40Y'
    'HQsNC90LjQtVIEZ2VvbQ==');

@$core.Deprecated('Use getTilesRequestDescriptor instead')
const GetTilesRequest$json = {
  '1': 'GetTilesRequest',
};

/// Descriptor for `GetTilesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTilesRequestDescriptor =
    $convert.base64Decode('Cg9HZXRUaWxlc1JlcXVlc3Q=');

@$core.Deprecated('Use getTilesResponseDescriptor instead')
const GetTilesResponse$json = {
  '1': 'GetTilesResponse',
  '2': [
    {'1': 'lat', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'lat'},
    {'1': 'lng', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'lng'},
    {'1': 'ruler_color', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'rulerColor'},
    {
      '1': 'items',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.katan.TileItem',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetTilesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTilesResponseDescriptor = $convert.base64Decode(
    'ChBHZXRUaWxlc1Jlc3BvbnNlEjIKA2xhdBgBIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSA2xhdBIyCgNsbmcYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw'
    '0L3QuNC1UgNsbmcSQQoLcnVsZXJfY29sb3IYAyABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0L'
    'jRgdCw0L3QuNC1UgpydWxlckNvbG9yEkcKBWl0ZW1zGAQgAygLMg8ua2F0YW4uVGlsZUl0ZW1C'
    'IJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgVpdGVtcw==');

@$core.Deprecated('Use getMapCoatingsRequestDescriptor instead')
const GetMapCoatingsRequest$json = {
  '1': 'GetMapCoatingsRequest',
};

/// Descriptor for `GetMapCoatingsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapCoatingsRequestDescriptor =
    $convert.base64Decode('ChVHZXRNYXBDb2F0aW5nc1JlcXVlc3Q=');

@$core.Deprecated('Use getMapCoatingsResponseDescriptor instead')
const GetMapCoatingsResponse$json = {
  '1': 'GetMapCoatingsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.MapCoating',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetMapCoatingsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapCoatingsResponseDescriptor =
    $convert.base64Decode(
        'ChZHZXRNYXBDb2F0aW5nc1Jlc3BvbnNlEkkKBWl0ZW1zGAEgAygLMhEua2F0YW4uTWFwQ29hdG'
        'luZ0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBWl0ZW1z');

@$core.Deprecated('Use getTooltipRequestDescriptor instead')
const GetTooltipRequest$json = {
  '1': 'GetTooltipRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'object', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'object'},
  ],
};

/// Descriptor for `GetTooltipRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTooltipRequestDescriptor = $convert.base64Decode(
    'ChFHZXRUb29sdGlwUmVxdWVzdBIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSAmlkEjgKBm9iamVjdBgCIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB'
    '0LDQvdC40LVSBm9iamVjdA==');

@$core.Deprecated('Use getTooltipResponseDescriptor instead')
const GetTooltipResponse$json = {
  '1': 'GetTooltipResponse',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'name'},
  ],
};

/// Descriptor for `GetTooltipResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTooltipResponseDescriptor = $convert.base64Decode(
    'ChJHZXRUb29sdGlwUmVzcG9uc2USNAoEbmFtZRgBIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L'
    '/QuNGB0LDQvdC40LVSBG5hbWU=');

@$core.Deprecated('Use getMapNodesRequestDescriptor instead')
const GetMapNodesRequest$json = {
  '1': 'GetMapNodesRequest',
  '2': [
    {
      '1': 'bounds',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.PointBounds',
      '8': {},
      '10': 'bounds'
    },
    {'1': 'zoom', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'zoom'},
    {'1': 'limit', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'limit'},
    {'1': 'offset', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'offset'},
  ],
};

/// Descriptor for `GetMapNodesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapNodesRequestDescriptor = $convert.base64Decode(
    'ChJHZXRNYXBOb2Rlc1JlcXVlc3QSTAoGYm91bmRzGAEgASgLMhIua2F0YW4uUG9pbnRCb3VuZH'
    'NCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZib3VuZHMSNAoEem9vbRgCIAEo'
    'BUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBHpvb20SNgoFbGltaXQYAyABKA'
    'VCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgVsaW1pdBI4CgZvZmZzZXQYBCAB'
    'KAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZvZmZzZXQ=');

@$core.Deprecated('Use getMapNodesResponseDescriptor instead')
const GetMapNodesResponse$json = {
  '1': 'GetMapNodesResponse',
  '2': [
    {
      '1': 'features',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.Feature',
      '8': {},
      '10': 'features'
    },
    {'1': 'data', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'data'},
    {'1': 'count', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'count'},
  ],
};

/// Descriptor for `GetMapNodesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapNodesResponseDescriptor = $convert.base64Decode(
    'ChNHZXRNYXBOb2Rlc1Jlc3BvbnNlEkwKCGZlYXR1cmVzGAEgAygLMg4ua2F0YW4uRmVhdHVyZU'
    'IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCGZlYXR1cmVzEjQKBGRhdGEYAiAB'
    'KAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgRkYXRhEjYKBWNvdW50GAMgAS'
    'gDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFY291bnQ=');

@$core.Deprecated('Use getMapCablesRequestDescriptor instead')
const GetMapCablesRequest$json = {
  '1': 'GetMapCablesRequest',
  '2': [
    {
      '1': 'bounds',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.PointBounds',
      '8': {},
      '10': 'bounds'
    },
    {'1': 'ids', '3': 2, '4': 3, '5': 3, '8': {}, '10': 'ids'},
    {'1': 'zoom', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'zoom'},
    {'1': 'limit', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'limit'},
    {'1': 'offset', '3': 5, '4': 1, '5': 5, '8': {}, '10': 'offset'},
  ],
};

/// Descriptor for `GetMapCablesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapCablesRequestDescriptor = $convert.base64Decode(
    'ChNHZXRNYXBDYWJsZXNSZXF1ZXN0EkwKBmJvdW5kcxgBIAEoCzISLmthdGFuLlBvaW50Qm91bm'
    'RzQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGYm91bmRzEjIKA2lkcxgCIAMo'
    'A0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSA2lkcxI0CgR6b29tGAMgASgFQi'
    'CSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIEem9vbRI2CgVsaW1pdBgEIAEoBUIg'
    'kkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBWxpbWl0EjgKBm9mZnNldBgFIAEoBU'
    'IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBm9mZnNldA==');

@$core.Deprecated('Use getMapCablesResponseDescriptor instead')
const GetMapCablesResponse$json = {
  '1': 'GetMapCablesResponse',
  '2': [
    {
      '1': 'features',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.Feature',
      '8': {},
      '10': 'features'
    },
    {'1': 'data', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'data'},
    {'1': 'count', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'count'},
  ],
};

/// Descriptor for `GetMapCablesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapCablesResponseDescriptor = $convert.base64Decode(
    'ChRHZXRNYXBDYWJsZXNSZXNwb25zZRJMCghmZWF0dXJlcxgBIAMoCzIOLmthdGFuLkZlYXR1cm'
    'VCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghmZWF0dXJlcxI0CgRkYXRhGAIg'
    'ASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIEZGF0YRI2CgVjb3VudBgDIA'
    'EoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBWNvdW50');

@$core.Deprecated('Use getMapPolygonsRequestDescriptor instead')
const GetMapPolygonsRequest$json = {
  '1': 'GetMapPolygonsRequest',
  '2': [
    {
      '1': 'bounds',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.PointBounds',
      '8': {},
      '10': 'bounds'
    },
    {'1': 'zoom', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'zoom'},
    {'1': 'limit', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'limit'},
    {'1': 'offset', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'offset'},
  ],
};

/// Descriptor for `GetMapPolygonsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapPolygonsRequestDescriptor = $convert.base64Decode(
    'ChVHZXRNYXBQb2x5Z29uc1JlcXVlc3QSTAoGYm91bmRzGAEgASgLMhIua2F0YW4uUG9pbnRCb3'
    'VuZHNCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZib3VuZHMSNAoEem9vbRgC'
    'IAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBHpvb20SNgoFbGltaXQYAy'
    'ABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgVsaW1pdBI4CgZvZmZzZXQY'
    'BCABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZvZmZzZXQ=');

@$core.Deprecated('Use getMapPolygonsResponseDescriptor instead')
const GetMapPolygonsResponse$json = {
  '1': 'GetMapPolygonsResponse',
  '2': [
    {
      '1': 'features',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.Feature',
      '8': {},
      '10': 'features'
    },
    {'1': 'data', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'data'},
    {'1': 'count', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'count'},
  ],
};

/// Descriptor for `GetMapPolygonsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapPolygonsResponseDescriptor = $convert.base64Decode(
    'ChZHZXRNYXBQb2x5Z29uc1Jlc3BvbnNlEkwKCGZlYXR1cmVzGAEgAygLMg4ua2F0YW4uRmVhdH'
    'VyZUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCGZlYXR1cmVzEjQKBGRhdGEY'
    'AiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgRkYXRhEjYKBWNvdW50GA'
    'MgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFY291bnQ=');

@$core.Deprecated('Use getMapBuildingsRequestDescriptor instead')
const GetMapBuildingsRequest$json = {
  '1': 'GetMapBuildingsRequest',
  '2': [
    {
      '1': 'bounds',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.PointBounds',
      '8': {},
      '10': 'bounds'
    },
    {'1': 'zoom', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'zoom'},
    {'1': 'limit', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'limit'},
    {'1': 'offset', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'offset'},
  ],
};

/// Descriptor for `GetMapBuildingsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapBuildingsRequestDescriptor = $convert.base64Decode(
    'ChZHZXRNYXBCdWlsZGluZ3NSZXF1ZXN0EkwKBmJvdW5kcxgBIAEoCzISLmthdGFuLlBvaW50Qm'
    '91bmRzQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGYm91bmRzEjQKBHpvb20Y'
    'AiABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgR6b29tEjYKBWxpbWl0GA'
    'MgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFbGltaXQSOAoGb2Zmc2V0'
    'GAQgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGb2Zmc2V0');

@$core.Deprecated('Use getMapBuildingsResponseDescriptor instead')
const GetMapBuildingsResponse$json = {
  '1': 'GetMapBuildingsResponse',
  '2': [
    {
      '1': 'features',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.Feature',
      '8': {},
      '10': 'features'
    },
    {'1': 'data', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'data'},
    {'1': 'count', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'count'},
  ],
};

/// Descriptor for `GetMapBuildingsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapBuildingsResponseDescriptor = $convert.base64Decode(
    'ChdHZXRNYXBCdWlsZGluZ3NSZXNwb25zZRJMCghmZWF0dXJlcxgBIAMoCzIOLmthdGFuLkZlYX'
    'R1cmVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghmZWF0dXJlcxI0CgRkYXRh'
    'GAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIEZGF0YRI2CgVjb3VudB'
    'gDIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBWNvdW50');

@$core.Deprecated('Use getMapDuctsRequestDescriptor instead')
const GetMapDuctsRequest$json = {
  '1': 'GetMapDuctsRequest',
  '2': [
    {
      '1': 'bounds',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.PointBounds',
      '8': {},
      '10': 'bounds'
    },
    {'1': 'zoom', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'zoom'},
    {'1': 'limit', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'limit'},
    {'1': 'offset', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'offset'},
  ],
};

/// Descriptor for `GetMapDuctsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapDuctsRequestDescriptor = $convert.base64Decode(
    'ChJHZXRNYXBEdWN0c1JlcXVlc3QSTAoGYm91bmRzGAEgASgLMhIua2F0YW4uUG9pbnRCb3VuZH'
    'NCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZib3VuZHMSNAoEem9vbRgCIAEo'
    'BUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBHpvb20SNgoFbGltaXQYAyABKA'
    'VCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgVsaW1pdBI4CgZvZmZzZXQYBCAB'
    'KAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZvZmZzZXQ=');

@$core.Deprecated('Use getMapDuctsResponseDescriptor instead')
const GetMapDuctsResponse$json = {
  '1': 'GetMapDuctsResponse',
  '2': [
    {
      '1': 'features',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.Feature',
      '8': {},
      '10': 'features'
    },
    {'1': 'data', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'data'},
    {'1': 'count', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'count'},
  ],
};

/// Descriptor for `GetMapDuctsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapDuctsResponseDescriptor = $convert.base64Decode(
    'ChNHZXRNYXBEdWN0c1Jlc3BvbnNlEkwKCGZlYXR1cmVzGAEgAygLMg4ua2F0YW4uRmVhdHVyZU'
    'IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCGZlYXR1cmVzEjQKBGRhdGEYAiAB'
    'KAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgRkYXRhEjYKBWNvdW50GAMgAS'
    'gDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFY291bnQ=');

@$core.Deprecated('Use getMapCoveragesRequestDescriptor instead')
const GetMapCoveragesRequest$json = {
  '1': 'GetMapCoveragesRequest',
  '2': [
    {
      '1': 'bounds',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.PointBounds',
      '8': {},
      '10': 'bounds'
    },
    {'1': 'zoom', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'zoom'},
    {'1': 'limit', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'limit'},
    {'1': 'offset', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'offset'},
  ],
};

/// Descriptor for `GetMapCoveragesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapCoveragesRequestDescriptor = $convert.base64Decode(
    'ChZHZXRNYXBDb3ZlcmFnZXNSZXF1ZXN0EkwKBmJvdW5kcxgBIAEoCzISLmthdGFuLlBvaW50Qm'
    '91bmRzQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGYm91bmRzEjQKBHpvb20Y'
    'AiABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgR6b29tEjYKBWxpbWl0GA'
    'MgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFbGltaXQSOAoGb2Zmc2V0'
    'GAQgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGb2Zmc2V0');

@$core.Deprecated('Use getMapCoveragesResponseDescriptor instead')
const GetMapCoveragesResponse$json = {
  '1': 'GetMapCoveragesResponse',
  '2': [
    {
      '1': 'features',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.Feature',
      '8': {},
      '10': 'features'
    },
    {'1': 'data', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'data'},
    {'1': 'count', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'count'},
  ],
};

/// Descriptor for `GetMapCoveragesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapCoveragesResponseDescriptor = $convert.base64Decode(
    'ChdHZXRNYXBDb3ZlcmFnZXNSZXNwb25zZRJMCghmZWF0dXJlcxgBIAMoCzIOLmthdGFuLkZlYX'
    'R1cmVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghmZWF0dXJlcxI0CgRkYXRh'
    'GAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIEZGF0YRI2CgVjb3VudB'
    'gDIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBWNvdW50');

@$core.Deprecated('Use changeMapDisplayRequestDescriptor instead')
const ChangeMapDisplayRequest$json = {
  '1': 'ChangeMapDisplayRequest',
  '2': [
    {'1': 'nodes', '3': 1, '4': 3, '5': 9, '8': {}, '10': 'nodes'},
    {'1': 'cables', '3': 2, '4': 3, '5': 9, '8': {}, '10': 'cables'},
    {
      '1': 'coverage_area',
      '3': 3,
      '4': 3,
      '5': 9,
      '8': {},
      '10': 'coverageArea'
    },
    {'1': 'polygons', '3': 4, '4': 3, '5': 9, '8': {}, '10': 'polygons'},
    {'1': 'buildings', '3': 5, '4': 3, '5': 9, '8': {}, '10': 'buildings'},
    {'1': 'tags', '3': 6, '4': 3, '5': 3, '8': {}, '10': 'tags'},
  ],
};

/// Descriptor for `ChangeMapDisplayRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeMapDisplayRequestDescriptor = $convert.base64Decode(
    'ChdDaGFuZ2VNYXBEaXNwbGF5UmVxdWVzdBI2CgVub2RlcxgBIAMoCUIgkkEdMhvRgdC60L7RgN'
    'C+INC+0L/QuNGB0LDQvdC40LVSBW5vZGVzEjgKBmNhYmxlcxgCIAMoCUIgkkEdMhvRgdC60L7R'
    'gNC+INC+0L/QuNGB0LDQvdC40LVSBmNhYmxlcxJFCg1jb3ZlcmFnZV9hcmVhGAMgAygJQiCSQR'
    '0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIMY292ZXJhZ2VBcmVhEjwKCHBvbHlnb25z'
    'GAQgAygJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIIcG9seWdvbnMSPgoJYn'
    'VpbGRpbmdzGAUgAygJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJYnVpbGRp'
    'bmdzEjQKBHRhZ3MYBiADKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgR0YW'
    'dz');

@$core.Deprecated('Use changeMapDisplayResponseDescriptor instead')
const ChangeMapDisplayResponse$json = {
  '1': 'ChangeMapDisplayResponse',
};

/// Descriptor for `ChangeMapDisplayResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeMapDisplayResponseDescriptor =
    $convert.base64Decode('ChhDaGFuZ2VNYXBEaXNwbGF5UmVzcG9uc2U=');

@$core.Deprecated('Use createNoteMapRequestDescriptor instead')
const CreateNoteMapRequest$json = {
  '1': 'CreateNoteMapRequest',
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

/// Descriptor for `CreateNoteMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createNoteMapRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVOb3RlTWFwUmVxdWVzdBI0CgRuYW1lGAEgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L'
    '7Qv9C40YHQsNC90LjQtVIEbmFtZRJCCgRnZW9tGAIgASgLMgwua2F0YW4uUG9pbnRCIJJBHTIb'
    '0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgRnZW9t');

@$core.Deprecated('Use createNoteMapResponseDescriptor instead')
const CreateNoteMapResponse$json = {
  '1': 'CreateNoteMapResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `CreateNoteMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createNoteMapResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVOb3RlTWFwUmVzcG9uc2USMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvt'
    'C/0LjRgdCw0L3QuNC1UgJpZA==');

@$core.Deprecated('Use getNotesMapRequestDescriptor instead')
const GetNotesMapRequest$json = {
  '1': 'GetNotesMapRequest',
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
  ],
};

/// Descriptor for `GetNotesMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNotesMapRequestDescriptor = $convert.base64Decode(
    'ChJHZXROb3Rlc01hcFJlcXVlc3QSUwoKcGFnaW5hdGlvbhgBIAEoCzIRLmthdGFuLlBhZ2luYX'
    'Rpb25CIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgpwYWdpbmF0aW9u');

@$core.Deprecated('Use getNotesMapResponseDescriptor instead')
const GetNotesMapResponse$json = {
  '1': 'GetNotesMapResponse',
  '2': [
    {'1': 'total', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'total'},
    {
      '1': 'items',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.katan.NoteMap',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetNotesMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNotesMapResponseDescriptor = $convert.base64Decode(
    'ChNHZXROb3Rlc01hcFJlc3BvbnNlEjYKBXRvdGFsGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L'
    '7Qv9C40YHQsNC90LjQtVIFdG90YWwSRgoFaXRlbXMYAiADKAsyDi5rYXRhbi5Ob3RlTWFwQiCS'
    'QR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFaXRlbXM=');

@$core.Deprecated('Use editNoteMapRequestDescriptor instead')
const EditNoteMapRequest$json = {
  '1': 'EditNoteMapRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'geom',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.Point',
      '8': {},
      '10': 'geom'
    },
  ],
};

/// Descriptor for `EditNoteMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editNoteMapRequestDescriptor = $convert.base64Decode(
    'ChJFZGl0Tm90ZU1hcFJlcXVlc3QSMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0L'
    'jRgdCw0L3QuNC1UgJpZBI0CgRuYW1lGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQ'
    'sNC90LjQtVIEbmFtZRJCCgRnZW9tGAMgASgLMgwua2F0YW4uUG9pbnRCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgRnZW9t');

@$core.Deprecated('Use editNoteMapResponseDescriptor instead')
const EditNoteMapResponse$json = {
  '1': 'EditNoteMapResponse',
};

/// Descriptor for `EditNoteMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editNoteMapResponseDescriptor =
    $convert.base64Decode('ChNFZGl0Tm90ZU1hcFJlc3BvbnNl');

@$core.Deprecated('Use deleteNoteMapRequestDescriptor instead')
const DeleteNoteMapRequest$json = {
  '1': 'DeleteNoteMapRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `DeleteNoteMapRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteNoteMapRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVOb3RlTWFwUmVxdWVzdBIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L'
    '/QuNGB0LDQvdC40LVSAmlk');

@$core.Deprecated('Use deleteNoteMapResponseDescriptor instead')
const DeleteNoteMapResponse$json = {
  '1': 'DeleteNoteMapResponse',
};

/// Descriptor for `DeleteNoteMapResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteNoteMapResponseDescriptor =
    $convert.base64Decode('ChVEZWxldGVOb3RlTWFwUmVzcG9uc2U=');

@$core.Deprecated('Use getMapDeviceStatusRequestDescriptor instead')
const GetMapDeviceStatusRequest$json = {
  '1': 'GetMapDeviceStatusRequest',
  '2': [
    {
      '1': 'bounds',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.PointBounds',
      '8': {},
      '10': 'bounds'
    },
    {'1': 'zoom', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'zoom'},
    {'1': 'limit', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'limit'},
    {'1': 'offset', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'offset'},
  ],
};

/// Descriptor for `GetMapDeviceStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapDeviceStatusRequestDescriptor = $convert.base64Decode(
    'ChlHZXRNYXBEZXZpY2VTdGF0dXNSZXF1ZXN0EkwKBmJvdW5kcxgBIAEoCzISLmthdGFuLlBvaW'
    '50Qm91bmRzQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGYm91bmRzEjQKBHpv'
    'b20YAiABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgR6b29tEjYKBWxpbW'
    'l0GAMgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFbGltaXQSOAoGb2Zm'
    'c2V0GAQgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGb2Zmc2V0');

@$core.Deprecated('Use getMapDeviceLldpRequestDescriptor instead')
const GetMapDeviceLldpRequest$json = {
  '1': 'GetMapDeviceLldpRequest',
  '2': [
    {
      '1': 'bounds',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.PointBounds',
      '8': {},
      '10': 'bounds'
    },
    {'1': 'zoom', '3': 2, '4': 1, '5': 5, '8': {}, '10': 'zoom'},
    {'1': 'limit', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'limit'},
    {'1': 'offset', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'offset'},
  ],
};

/// Descriptor for `GetMapDeviceLldpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMapDeviceLldpRequestDescriptor = $convert.base64Decode(
    'ChdHZXRNYXBEZXZpY2VMbGRwUmVxdWVzdBJMCgZib3VuZHMYASABKAsyEi5rYXRhbi5Qb2ludE'
    'JvdW5kc0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBmJvdW5kcxI0CgR6b29t'
    'GAIgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIEem9vbRI2CgVsaW1pdB'
    'gDIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBWxpbWl0EjgKBm9mZnNl'
    'dBgEIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBm9mZnNldA==');

@$core.Deprecated('Use mapDeviceFeatureDescriptor instead')
const MapDeviceFeature$json = {
  '1': 'MapDeviceFeature',
  '2': [
    {
      '1': 'feature',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.Feature',
      '8': {},
      '10': 'feature'
    },
  ],
};

/// Descriptor for `MapDeviceFeature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapDeviceFeatureDescriptor = $convert.base64Decode(
    'ChBNYXBEZXZpY2VGZWF0dXJlEkoKB2ZlYXR1cmUYASABKAsyDi5rYXRhbi5GZWF0dXJlQiCSQR'
    '0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIHZmVhdHVyZQ==');

@$core.Deprecated('Use getArObjectsRequestDescriptor instead')
const GetArObjectsRequest$json = {
  '1': 'GetArObjectsRequest',
  '2': [
    {'1': 'lat', '3': 1, '4': 1, '5': 1, '8': {}, '10': 'lat'},
    {'1': 'lng', '3': 2, '4': 1, '5': 1, '8': {}, '10': 'lng'},
    {
      '1': 'radius_meters',
      '3': 3,
      '4': 1,
      '5': 1,
      '8': {},
      '10': 'radiusMeters'
    },
    {'1': 'kinds', '3': 4, '4': 3, '5': 9, '8': {}, '10': 'kinds'},
    {
      '1': 'limit_per_kind',
      '3': 5,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'limitPerKind'
    },
    {'1': 'indoor_peer_type', '3': 6, '4': 1, '5': 5, '10': 'indoorPeerType'},
    {'1': 'indoor_peer_id', '3': 7, '4': 1, '5': 3, '10': 'indoorPeerId'},
    {'1': 'include_covered', '3': 9, '4': 1, '5': 8, '10': 'includeCovered'},
  ],
  '9': [
    {'1': 8, '2': 9},
  ],
  '10': ['floor_filter'],
};

/// Descriptor for `GetArObjectsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getArObjectsRequestDescriptor = $convert.base64Decode(
    'ChNHZXRBck9iamVjdHNSZXF1ZXN0EjwKA2xhdBgBIAEoAUIqkkEnMiXRiNC40YDQvtGC0LAg0L'
    '/QvtC70YzQt9C+0LLQsNGC0LXQu9GPUgNsYXQSPgoDbG5nGAIgASgBQiySQSkyJ9C00L7Qu9Cz'
    '0L7RgtCwINC/0L7Qu9GM0LfQvtCy0LDRgtC10LvRj1IDbG5nEkcKDXJhZGl1c19tZXRlcnMYAy'
    'ABKAFCIpJBHzId0YDQsNC00LjRg9GBINC/0L7QuNGB0LrQsCwg0LxSDHJhZGl1c01ldGVycxIm'
    'CgVraW5kcxgEIAMoCUIQkkENMgvRgdC70L7QuCBBUlIFa2luZHMScQoObGltaXRfcGVyX2tpbm'
    'QYBSABKAVCS5JBSDJG0LvQuNC80LjRgiDQvtCx0YrQtdC60YLQvtCyINC90LAg0YHQu9C+0Lkg'
    'KNC/0L4g0YPQvNC+0LvRh9Cw0L3QuNGOIDgwKVIMbGltaXRQZXJLaW5kEigKEGluZG9vcl9wZW'
    'VyX3R5cGUYBiABKAVSDmluZG9vclBlZXJUeXBlEiQKDmluZG9vcl9wZWVyX2lkGAcgASgDUgxp'
    'bmRvb3JQZWVySWQSJwoPaW5jbHVkZV9jb3ZlcmVkGAkgASgIUg5pbmNsdWRlQ292ZXJlZEoECA'
    'gQCVIMZmxvb3JfZmlsdGVy');

@$core.Deprecated('Use arObjectItemDescriptor instead')
const ArObjectItem$json = {
  '1': 'ArObjectItem',
  '2': [
    {'1': 'kind', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'kind'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
    {'1': 'title', '3': 3, '4': 1, '5': 9, '10': 'title'},
    {'1': 'subtitle', '3': 4, '4': 1, '5': 9, '10': 'subtitle'},
    {'1': 'color', '3': 5, '4': 1, '5': 9, '10': 'color'},
    {'1': 'icon', '3': 6, '4': 1, '5': 9, '10': 'icon'},
    {'1': 'is_plan', '3': 7, '4': 1, '5': 8, '10': 'isPlan'},
    {'1': 'point', '3': 8, '4': 1, '5': 11, '6': '.katan.Point', '10': 'point'},
    {'1': 'line', '3': 9, '4': 3, '5': 11, '6': '.katan.Point', '10': 'line'},
    {'1': 'heading_deg', '3': 11, '4': 1, '5': 1, '10': 'headingDeg'},
    {'1': 'covered_inside', '3': 12, '4': 1, '5': 8, '10': 'coveredInside'},
    {'1': 'peer_type', '3': 13, '4': 1, '5': 5, '10': 'peerType'},
    {'1': 'peer_id', '3': 14, '4': 1, '5': 3, '10': 'peerId'},
    {'1': 'peer_name', '3': 15, '4': 1, '5': 9, '10': 'peerName'},
    {'1': 'covered_count', '3': 17, '4': 1, '5': 5, '10': 'coveredCount'},
    {'1': 'local_x', '3': 18, '4': 1, '5': 1, '10': 'localX'},
    {'1': 'local_y', '3': 19, '4': 1, '5': 1, '10': 'localY'},
    {'1': 'local_z', '3': 20, '4': 1, '5': 1, '10': 'localZ'},
  ],
  '9': [
    {'1': 10, '2': 11},
    {'1': 16, '2': 17},
  ],
  '10': ['floor', 'floor_count'],
};

/// Descriptor for `ArObjectItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arObjectItemDescriptor = $convert.base64Decode(
    'CgxBck9iamVjdEl0ZW0SMwoEa2luZBgBIAEoCUIfkkEcMhpub2RlfGRldmljZXxjYWJsZXxjdX'
    'N0b21lclIEa2luZBIOCgJpZBgCIAEoA1ICaWQSFAoFdGl0bGUYAyABKAlSBXRpdGxlEhoKCHN1'
    'YnRpdGxlGAQgASgJUghzdWJ0aXRsZRIUCgVjb2xvchgFIAEoCVIFY29sb3ISEgoEaWNvbhgGIA'
    'EoCVIEaWNvbhIXCgdpc19wbGFuGAcgASgIUgZpc1BsYW4SIgoFcG9pbnQYCCABKAsyDC5rYXRh'
    'bi5Qb2ludFIFcG9pbnQSIAoEbGluZRgJIAMoCzIMLmthdGFuLlBvaW50UgRsaW5lEh8KC2hlYW'
    'RpbmdfZGVnGAsgASgBUgpoZWFkaW5nRGVnEiUKDmNvdmVyZWRfaW5zaWRlGAwgASgIUg1jb3Zl'
    'cmVkSW5zaWRlEhsKCXBlZXJfdHlwZRgNIAEoBVIIcGVlclR5cGUSFwoHcGVlcl9pZBgOIAEoA1'
    'IGcGVlcklkEhsKCXBlZXJfbmFtZRgPIAEoCVIIcGVlck5hbWUSIwoNY292ZXJlZF9jb3VudBgR'
    'IAEoBVIMY292ZXJlZENvdW50EhcKB2xvY2FsX3gYEiABKAFSBmxvY2FsWBIXCgdsb2NhbF95GB'
    'MgASgBUgZsb2NhbFkSFwoHbG9jYWxfehgUIAEoAVIGbG9jYWxaSgQIChALSgQIEBARUgVmbG9v'
    'clILZmxvb3JfY291bnQ=');

@$core.Deprecated('Use getArObjectsResponseDescriptor instead')
const GetArObjectsResponse$json = {
  '1': 'GetArObjectsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.ArObjectItem',
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetArObjectsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getArObjectsResponseDescriptor = $convert.base64Decode(
    'ChRHZXRBck9iamVjdHNSZXNwb25zZRIpCgVpdGVtcxgBIAMoCzITLmthdGFuLkFyT2JqZWN0SX'
    'RlbVIFaXRlbXM=');

@$core.Deprecated('Use getArObjectRequestDescriptor instead')
const GetArObjectRequest$json = {
  '1': 'GetArObjectRequest',
  '2': [
    {'1': 'kind', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'kind'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `GetArObjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getArObjectRequestDescriptor = $convert.base64Decode(
    'ChJHZXRBck9iamVjdFJlcXVlc3QSMwoEa2luZBgBIAEoCUIfkkEcMhpub2RlfGRldmljZXxjYW'
    'JsZXxjdXN0b21lclIEa2luZBIOCgJpZBgCIAEoA1ICaWQ=');

@$core.Deprecated('Use getArObjectResponseDescriptor instead')
const GetArObjectResponse$json = {
  '1': 'GetArObjectResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.ArObjectItem',
      '10': 'item'
    },
  ],
};

/// Descriptor for `GetArObjectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getArObjectResponseDescriptor = $convert.base64Decode(
    'ChNHZXRBck9iamVjdFJlc3BvbnNlEicKBGl0ZW0YASABKAsyEy5rYXRhbi5Bck9iamVjdEl0ZW'
    '1SBGl0ZW0=');

@$core.Deprecated('Use setArDeviceCoverRequestDescriptor instead')
const SetArDeviceCoverRequest$json = {
  '1': 'SetArDeviceCoverRequest',
  '2': [
    {'1': 'device_id', '3': 1, '4': 1, '5': 3, '10': 'deviceId'},
    {'1': 'lat', '3': 2, '4': 1, '5': 1, '10': 'lat'},
    {'1': 'lng', '3': 3, '4': 1, '5': 1, '10': 'lng'},
    {'1': 'heading_deg', '3': 4, '4': 1, '5': 1, '10': 'headingDeg'},
    {'1': 'peer_type', '3': 6, '4': 1, '5': 5, '10': 'peerType'},
    {'1': 'peer_id', '3': 7, '4': 1, '5': 3, '10': 'peerId'},
    {'1': 'has_local', '3': 8, '4': 1, '5': 8, '10': 'hasLocal'},
    {'1': 'local_x', '3': 9, '4': 1, '5': 1, '10': 'localX'},
    {'1': 'local_y', '3': 10, '4': 1, '5': 1, '10': 'localY'},
    {'1': 'local_z', '3': 11, '4': 1, '5': 1, '10': 'localZ'},
    {'1': 'altitude_m', '3': 12, '4': 1, '5': 1, '10': 'altitudeM'},
  ],
  '9': [
    {'1': 5, '2': 6},
  ],
  '10': ['floor'],
};

/// Descriptor for `SetArDeviceCoverRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setArDeviceCoverRequestDescriptor = $convert.base64Decode(
    'ChdTZXRBckRldmljZUNvdmVyUmVxdWVzdBIbCglkZXZpY2VfaWQYASABKANSCGRldmljZUlkEh'
    'AKA2xhdBgCIAEoAVIDbGF0EhAKA2xuZxgDIAEoAVIDbG5nEh8KC2hlYWRpbmdfZGVnGAQgASgB'
    'UgpoZWFkaW5nRGVnEhsKCXBlZXJfdHlwZRgGIAEoBVIIcGVlclR5cGUSFwoHcGVlcl9pZBgHIA'
    'EoA1IGcGVlcklkEhsKCWhhc19sb2NhbBgIIAEoCFIIaGFzTG9jYWwSFwoHbG9jYWxfeBgJIAEo'
    'AVIGbG9jYWxYEhcKB2xvY2FsX3kYCiABKAFSBmxvY2FsWRIXCgdsb2NhbF96GAsgASgBUgZsb2'
    'NhbFoSHQoKYWx0aXR1ZGVfbRgMIAEoAVIJYWx0aXR1ZGVNSgQIBRAGUgVmbG9vcg==');

@$core.Deprecated('Use setArDeviceCoverResponseDescriptor instead')
const SetArDeviceCoverResponse$json = {
  '1': 'SetArDeviceCoverResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.ArObjectItem',
      '10': 'item'
    },
  ],
};

/// Descriptor for `SetArDeviceCoverResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setArDeviceCoverResponseDescriptor =
    $convert.base64Decode(
        'ChhTZXRBckRldmljZUNvdmVyUmVzcG9uc2USJwoEaXRlbRgBIAEoCzITLmthdGFuLkFyT2JqZW'
        'N0SXRlbVIEaXRlbQ==');

@$core.Deprecated('Use clearArDeviceCoverRequestDescriptor instead')
const ClearArDeviceCoverRequest$json = {
  '1': 'ClearArDeviceCoverRequest',
  '2': [
    {'1': 'device_id', '3': 1, '4': 1, '5': 3, '10': 'deviceId'},
  ],
};

/// Descriptor for `ClearArDeviceCoverRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clearArDeviceCoverRequestDescriptor =
    $convert.base64Decode(
        'ChlDbGVhckFyRGV2aWNlQ292ZXJSZXF1ZXN0EhsKCWRldmljZV9pZBgBIAEoA1IIZGV2aWNlSW'
        'Q=');

@$core.Deprecated('Use clearArDeviceCoverResponseDescriptor instead')
const ClearArDeviceCoverResponse$json = {
  '1': 'ClearArDeviceCoverResponse',
  '2': [
    {
      '1': 'item',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.ArObjectItem',
      '10': 'item'
    },
  ],
};

/// Descriptor for `ClearArDeviceCoverResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clearArDeviceCoverResponseDescriptor =
    $convert.base64Decode(
        'ChpDbGVhckFyRGV2aWNlQ292ZXJSZXNwb25zZRInCgRpdGVtGAEgASgLMhMua2F0YW4uQXJPYm'
        'plY3RJdGVtUgRpdGVt');
