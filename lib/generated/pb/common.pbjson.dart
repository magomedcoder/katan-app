// This is a generated file - do not edit.
//
// Generated from common.proto.

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

@$core.Deprecated('Use katanMethodConfDescriptor instead')
const KatanMethodConf$json = {
  '1': 'KatanMethodConf',
  '2': [
    {'1': 'permissions', '3': 1, '4': 3, '5': 9, '8': {}, '10': 'permissions'},
  ],
};

/// Descriptor for `KatanMethodConf`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List katanMethodConfDescriptor = $convert.base64Decode(
    'Cg9LYXRhbk1ldGhvZENvbmYSQgoLcGVybWlzc2lvbnMYASADKAlCIJJBHTIb0YHQutC+0YDQvi'
    'DQvtC/0LjRgdCw0L3QuNC1UgtwZXJtaXNzaW9ucw==');

@$core.Deprecated('Use userDescriptor instead')
const User$json = {
  '1': 'User',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'username'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'surname', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'surname'},
    {'1': 'role_title', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'roleTitle'},
    {
      '1': 'last_visit_at',
      '3': 6,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'lastVisitAt'
    },
    {'1': 'status', '3': 7, '4': 1, '5': 5, '8': {}, '10': 'status'},
    {'1': 'auth_type', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'authType'},
  ],
};

/// Descriptor for `User`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userDescriptor = $convert.base64Decode(
    'CgRVc2VyEjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVICaW'
    'QSPAoIdXNlcm5hbWUYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugh1'
    'c2VybmFtZRI0CgRuYW1lGAMgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtV'
    'IEbmFtZRI6CgdzdXJuYW1lGAQgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
    'tVIHc3VybmFtZRI/Cgpyb2xlX3RpdGxlGAUgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40Y'
    'HQsNC90LjQtVIJcm9sZVRpdGxlEkQKDWxhc3RfdmlzaXRfYXQYBiABKAlCIJJBHTIb0YHQutC+'
    '0YDQviDQvtC/0LjRgdCw0L3QuNC1UgtsYXN0VmlzaXRBdBI4CgZzdGF0dXMYByABKAVCIJJBHT'
    'Ib0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZzdGF0dXMSPQoJYXV0aF90eXBlGAggASgJ'
    'QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIIYXV0aFR5cGU=');

@$core.Deprecated('Use pointDescriptor instead')
const Point$json = {
  '1': 'Point',
  '2': [
    {'1': 'lat', '3': 1, '4': 1, '5': 1, '8': {}, '10': 'lat'},
    {'1': 'lng', '3': 2, '4': 1, '5': 1, '8': {}, '10': 'lng'},
  ],
};

/// Descriptor for `Point`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointDescriptor = $convert.base64Decode(
    'CgVQb2ludBIyCgNsYXQYASABKAFCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ug'
    'NsYXQSMgoDbG5nGAIgASgBQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIDbG5n');

@$core.Deprecated('Use pointBoundsDescriptor instead')
const PointBounds$json = {
  '1': 'PointBounds',
  '2': [
    {
      '1': 'south_west',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.Point',
      '8': {},
      '10': 'southWest'
    },
    {
      '1': 'north_east',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.katan.Point',
      '8': {},
      '10': 'northEast'
    },
  ],
};

/// Descriptor for `PointBounds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointBoundsDescriptor = $convert.base64Decode(
    'CgtQb2ludEJvdW5kcxJNCgpzb3V0aF93ZXN0GAEgASgLMgwua2F0YW4uUG9pbnRCIJJBHTIb0Y'
    'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Uglzb3V0aFdlc3QSTQoKbm9ydGhfZWFzdBgCIAEo'
    'CzIMLmthdGFuLlBvaW50QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJbm9ydG'
    'hFYXN0');

@$core.Deprecated('Use settingFieldDescriptor instead')
const SettingField$json = {
  '1': 'SettingField',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'enabled', '3': 3, '4': 1, '5': 8, '8': {}, '10': 'enabled'},
    {'1': 'required', '3': 4, '4': 1, '5': 8, '8': {}, '10': 'required'},
    {
      '1': 'show_required',
      '3': 5,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'showRequired'
    },
    {'1': 'always', '3': 6, '4': 1, '5': 8, '8': {}, '10': 'always'},
    {'1': 'is_add', '3': 7, '4': 1, '5': 8, '8': {}, '10': 'isAdd'},
    {'1': 'is_edit', '3': 8, '4': 1, '5': 8, '8': {}, '10': 'isEdit'},
  ],
};

/// Descriptor for `SettingField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settingFieldDescriptor = $convert.base64Decode(
    'CgxTZXR0aW5nRmllbGQSMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L'
    '3QuNC1UgJpZBI0CgRuYW1lGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
    'tVIEbmFtZRI6CgdlbmFibGVkGAMgASgIQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90L'
    'jQtVIHZW5hYmxlZBI8CghyZXF1aXJlZBgEIAEoCEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB'
    '0LDQvdC40LVSCHJlcXVpcmVkEkUKDXNob3dfcmVxdWlyZWQYBSABKAhCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgxzaG93UmVxdWlyZWQSOAoGYWx3YXlzGAYgASgIQiCSQR0y'
    'G9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGYWx3YXlzEjcKBmlzX2FkZBgHIAEoCEIgkk'
    'EdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBWlzQWRkEjkKB2lzX2VkaXQYCCABKAhC'
    'IJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZpc0VkaXQ=');

@$core.Deprecated('Use editSettingFieldDescriptor instead')
const EditSettingField$json = {
  '1': 'EditSettingField',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'enabled', '3': 2, '4': 1, '5': 8, '8': {}, '10': 'enabled'},
    {'1': 'required', '3': 3, '4': 1, '5': 8, '8': {}, '10': 'required'},
  ],
};

/// Descriptor for `EditSettingField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List editSettingFieldDescriptor = $convert.base64Decode(
    'ChBFZGl0U2V0dGluZ0ZpZWxkEjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40Y'
    'HQsNC90LjQtVICaWQSOgoHZW5hYmxlZBgCIAEoCEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB'
    '0LDQvdC40LVSB2VuYWJsZWQSPAoIcmVxdWlyZWQYAyABKAhCIJJBHTIb0YHQutC+0YDQviDQvt'
    'C/0LjRgdCw0L3QuNC1UghyZXF1aXJlZA==');

@$core.Deprecated('Use ownerDescriptor instead')
const Owner$json = {
  '1': 'Owner',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
  ],
};

/// Descriptor for `Owner`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ownerDescriptor = $convert.base64Decode(
    'CgVPd25lchIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSAm'
    'lkEjQKBG5hbWUYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgRuYW1l');

@$core.Deprecated('Use baseUserDescriptor instead')
const BaseUser$json = {
  '1': 'BaseUser',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'username'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'surname', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'surname'},
  ],
};

/// Descriptor for `BaseUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseUserDescriptor = $convert.base64Decode(
    'CghCYXNlVXNlchIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40L'
    'VSAmlkEjwKCHVzZXJuYW1lGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
    'tVIIdXNlcm5hbWUSNAoEbmFtZRgDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvd'
    'C40LVSBG5hbWUSOgoHc3VybmFtZRgEIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQ'
    'vdC40LVSB3N1cm5hbWU=');

@$core.Deprecated('Use paginationDescriptor instead')
const Pagination$json = {
  '1': 'Pagination',
  '2': [
    {'1': 'limit', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'limit'},
    {'1': 'page', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'page'},
  ],
};

/// Descriptor for `Pagination`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paginationDescriptor = $convert.base64Decode(
    'CgpQYWdpbmF0aW9uEjYKBWxpbWl0GAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsN'
    'C90LjQtVIFbGltaXQSNAoEcGFnZRgCIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQ'
    'vdC40LVSBHBhZ2U=');

@$core.Deprecated('Use breadcrumbItemDescriptor instead')
const BreadcrumbItem$json = {
  '1': 'BreadcrumbItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'label'},
  ],
};

/// Descriptor for `BreadcrumbItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List breadcrumbItemDescriptor = $convert.base64Decode(
    'Cg5CcmVhZGNydW1iSXRlbRIwCgJpZBgBIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0L'
    'DQvdC40LVSAmlkEjYKBWxhYmVsGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC9'
    '0LjQtVIFbGFiZWw=');

@$core.Deprecated('Use coverageAreaItemDescriptor instead')
const CoverageAreaItem$json = {
  '1': 'CoverageAreaItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'color', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'color'},
    {'1': 'radius', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'radius'},
    {'1': 'state', '3': 5, '4': 1, '5': 5, '8': {}, '10': 'state'},
  ],
};

/// Descriptor for `CoverageAreaItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List coverageAreaItemDescriptor = $convert.base64Decode(
    'ChBDb3ZlcmFnZUFyZWFJdGVtEjAKAmlkGAEgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40Y'
    'HQsNC90LjQtVICaWQSNgoFdGl0bGUYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw'
    '0L3QuNC1UgV0aXRsZRI2CgVjb2xvchgDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0L'
    'DQvdC40LVSBWNvbG9yEjgKBnJhZGl1cxgEIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB'
    '0LDQvdC40LVSBnJhZGl1cxI2CgVzdGF0ZRgFIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSBXN0YXRl');

@$core.Deprecated('Use selectedAdditionalFieldItemDescriptor instead')
const SelectedAdditionalFieldItem$json = {
  '1': 'SelectedAdditionalFieldItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'value'},
  ],
};

/// Descriptor for `SelectedAdditionalFieldItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selectedAdditionalFieldItemDescriptor =
    $convert.base64Decode(
        'ChtTZWxlY3RlZEFkZGl0aW9uYWxGaWVsZEl0ZW0SMAoCaWQYASABKANCIJJBHTIb0YHQutC+0Y'
        'DQviDQvtC/0LjRgdCw0L3QuNC1UgJpZBI2CgV2YWx1ZRgCIAEoCUIgkkEdMhvRgdC60L7RgNC+'
        'INC+0L/QuNGB0LDQvdC40LVSBXZhbHVl');

@$core.Deprecated('Use typesCheckNodeResultDescriptor instead')
const TypesCheckNodeResult$json = {
  '1': 'TypesCheckNodeResult',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'type'},
    {'1': 'type_name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'typeName'},
    {'1': 'id', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'title', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'title'},
  ],
};

/// Descriptor for `TypesCheckNodeResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typesCheckNodeResultDescriptor = $convert.base64Decode(
    'ChRUeXBlc0NoZWNrTm9kZVJlc3VsdBI0CgR0eXBlGAEgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L'
    '7Qv9C40YHQsNC90LjQtVIEdHlwZRI9Cgl0eXBlX25hbWUYAiABKAlCIJJBHTIb0YHQutC+0YDQ'
    'viDQvtC/0LjRgdCw0L3QuNC1Ugh0eXBlTmFtZRIwCgJpZBgDIAEoA0IgkkEdMhvRgdC60L7RgN'
    'C+INC+0L/QuNGB0LDQvdC40LVSAmlkEjYKBXRpdGxlGAQgASgJQiCSQR0yG9GB0LrQvtGA0L4g'
    '0L7Qv9C40YHQsNC90LjQtVIFdGl0bGU=');

@$core.Deprecated('Use rulesAdditionalFieldItemDescriptor instead')
const RulesAdditionalFieldItem$json = {
  '1': 'RulesAdditionalFieldItem',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 5, '8': {}, '10': 'type'},
    {'1': 'size', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'size'},
    {'1': 'max_size', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'maxSize'},
  ],
};

/// Descriptor for `RulesAdditionalFieldItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rulesAdditionalFieldItemDescriptor = $convert.base64Decode(
    'ChhSdWxlc0FkZGl0aW9uYWxGaWVsZEl0ZW0SNAoEdHlwZRgBIAEoBUIgkkEdMhvRgdC60L7RgN'
    'C+INC+0L/QuNGB0LDQvdC40LVSBHR5cGUSNAoEc2l6ZRgCIAEoA0IgkkEdMhvRgdC60L7RgNC+'
    'INC+0L/QuNGB0LDQvdC40LVSBHNpemUSOwoIbWF4X3NpemUYAyABKANCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgdtYXhTaXpl');

@$core.Deprecated('Use additionalFieldItemDescriptor instead')
const AdditionalFieldItem$json = {
  '1': 'AdditionalFieldItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'label'},
    {
      '1': 'rules',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.RulesAdditionalFieldItem',
      '8': {},
      '10': 'rules'
    },
    {'1': 'value', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'value'},
  ],
};

/// Descriptor for `AdditionalFieldItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List additionalFieldItemDescriptor = $convert.base64Decode(
    'ChNBZGRpdGlvbmFsRmllbGRJdGVtEjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVICaWQSNgoFbGFiZWwYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjR'
    'gdCw0L3QuNC1UgVsYWJlbBJXCgVydWxlcxgDIAEoCzIfLmthdGFuLlJ1bGVzQWRkaXRpb25hbE'
    'ZpZWxkSXRlbUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBXJ1bGVzEjYKBXZh'
    'bHVlGAQgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFdmFsdWU=');

@$core.Deprecated('Use nodeIconDescriptor instead')
const NodeIcon$json = {
  '1': 'NodeIcon',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
  ],
};

/// Descriptor for `NodeIcon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeIconDescriptor = $convert.base64Decode(
    'CghOb2RlSWNvbhIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40L'
    'VSAmlkEjQKBG5hbWUYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgRu'
    'YW1l');

@$core.Deprecated('Use userStatusDescriptor instead')
const UserStatus$json = {
  '1': 'UserStatus',
  '2': [
    {'1': 'block', '3': 1, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'block'},
    {'1': 'fired', '3': 2, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'fired'},
  ],
  '8': [
    {'1': 'user_status'},
  ],
};

/// Descriptor for `UserStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userStatusDescriptor = $convert.base64Decode(
    'CgpVc2VyU3RhdHVzEjgKBWJsb2NrGAEgASgIQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsN'
    'C90LjQtUgAUgVibG9jaxI4CgVmaXJlZBgCIAEoCEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB'
    '0LDQvdC40LVIAFIFZmlyZWRCDQoLdXNlcl9zdGF0dXM=');

@$core.Deprecated('Use tagDescriptor instead')
const Tag$json = {
  '1': 'Tag',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
  ],
};

/// Descriptor for `Tag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagDescriptor = $convert.base64Decode(
    'CgNUYWcSMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgJpZB'
    'I0CgRuYW1lGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIEbmFtZQ==');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor =
    $convert.base64Decode('CgVFbXB0eQ==');

@$core.Deprecated('Use fileDataDescriptor instead')
const FileData$json = {
  '1': 'FileData',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'mime_type', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'mimeType'},
    {'1': 'content', '3': 3, '4': 1, '5': 12, '8': {}, '10': 'content'},
  ],
};

/// Descriptor for `FileData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDataDescriptor = $convert.base64Decode(
    'CghGaWxlRGF0YRI0CgRuYW1lGAEgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90L'
    'jQtVIEbmFtZRI9CgltaW1lX3R5cGUYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw'
    '0L3QuNC1UghtaW1lVHlwZRI6Cgdjb250ZW50GAMgASgMQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVIHY29udGVudA==');

@$core.Deprecated('Use featureDescriptor instead')
const Feature$json = {
  '1': 'Feature',
  '2': [
    {
      '1': 'geometry',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.Geometry',
      '8': {},
      '10': 'geometry'
    },
    {
      '1': 'scheme',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.katan.SchemeGeomProperties',
      '8': {},
      '9': 0,
      '10': 'scheme'
    },
    {
      '1': 'node',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.NodeGeomProperties',
      '8': {},
      '9': 0,
      '10': 'node'
    },
    {
      '1': 'cable',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.katan.CableGeomProperties',
      '8': {},
      '9': 0,
      '10': 'cable'
    },
    {
      '1': 'polygon',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.katan.PolygonGeomProperties',
      '8': {},
      '9': 0,
      '10': 'polygon'
    },
  ],
  '8': [
    {'1': 'properties'},
  ],
};

/// Descriptor for `Feature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureDescriptor = $convert.base64Decode(
    'CgdGZWF0dXJlEk0KCGdlb21ldHJ5GAEgASgLMg8ua2F0YW4uR2VvbWV0cnlCIJJBHTIb0YHQut'
    'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghnZW9tZXRyeRJXCgZzY2hlbWUYAiABKAsyGy5rYXRh'
    'bi5TY2hlbWVHZW9tUHJvcGVydGllc0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40L'
    'VIAFIGc2NoZW1lElEKBG5vZGUYAyABKAsyGS5rYXRhbi5Ob2RlR2VvbVByb3BlcnRpZXNCIJJB'
    'HTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1SABSBG5vZGUSVAoFY2FibGUYBCABKAsyGi'
    '5rYXRhbi5DYWJsZUdlb21Qcm9wZXJ0aWVzQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC9'
    '0LjQtUgAUgVjYWJsZRJaCgdwb2x5Z29uGAUgASgLMhwua2F0YW4uUG9seWdvbkdlb21Qcm9wZX'
    'J0aWVzQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtUgAUgdwb2x5Z29uQgwKCnBy'
    'b3BlcnRpZXM=');

@$core.Deprecated('Use geometryDescriptor instead')
const Geometry$json = {
  '1': 'Geometry',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'type'},
    {
      '1': 'point',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.katan.PointCoordinates',
      '8': {},
      '9': 0,
      '10': 'point'
    },
    {
      '1': 'line_string',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.LineStringCoordinates',
      '8': {},
      '9': 0,
      '10': 'lineString'
    },
    {
      '1': 'polygon',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.katan.PolygonCoordinates',
      '8': {},
      '9': 0,
      '10': 'polygon'
    },
  ],
  '8': [
    {'1': 'coordinates'},
  ],
};

/// Descriptor for `Geometry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List geometryDescriptor = $convert.base64Decode(
    'CghHZW9tZXRyeRI0CgR0eXBlGAEgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90L'
    'jQtVIEdHlwZRJRCgVwb2ludBgCIAEoCzIXLmthdGFuLlBvaW50Q29vcmRpbmF0ZXNCIJJBHTIb'
    '0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1SABSBXBvaW50EmEKC2xpbmVfc3RyaW5nGAMgAS'
    'gLMhwua2F0YW4uTGluZVN0cmluZ0Nvb3JkaW5hdGVzQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C4'
    '0YHQsNC90LjQtUgAUgpsaW5lU3RyaW5nElcKB3BvbHlnb24YBCABKAsyGS5rYXRhbi5Qb2x5Z2'
    '9uQ29vcmRpbmF0ZXNCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1SABSB3BvbHln'
    'b25CDQoLY29vcmRpbmF0ZXM=');

@$core.Deprecated('Use pointCoordinatesDescriptor instead')
const PointCoordinates$json = {
  '1': 'PointCoordinates',
  '2': [
    {
      '1': 'coordinates',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.Point',
      '8': {},
      '10': 'coordinates'
    },
  ],
};

/// Descriptor for `PointCoordinates`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pointCoordinatesDescriptor = $convert.base64Decode(
    'ChBQb2ludENvb3JkaW5hdGVzElAKC2Nvb3JkaW5hdGVzGAEgASgLMgwua2F0YW4uUG9pbnRCIJ'
    'JBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugtjb29yZGluYXRlcw==');

@$core.Deprecated('Use lineStringCoordinatesDescriptor instead')
const LineStringCoordinates$json = {
  '1': 'LineStringCoordinates',
  '2': [
    {
      '1': 'coordinates',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.Point',
      '8': {},
      '10': 'coordinates'
    },
  ],
};

/// Descriptor for `LineStringCoordinates`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lineStringCoordinatesDescriptor = $convert.base64Decode(
    'ChVMaW5lU3RyaW5nQ29vcmRpbmF0ZXMSUAoLY29vcmRpbmF0ZXMYASADKAsyDC5rYXRhbi5Qb2'
    'ludEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSC2Nvb3JkaW5hdGVz');

@$core.Deprecated('Use polygonCoordinatesDescriptor instead')
const PolygonCoordinates$json = {
  '1': 'PolygonCoordinates',
  '2': [
    {
      '1': 'coordinates',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.LineStringCoordinates',
      '8': {},
      '10': 'coordinates'
    },
  ],
};

/// Descriptor for `PolygonCoordinates`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List polygonCoordinatesDescriptor = $convert.base64Decode(
    'ChJQb2x5Z29uQ29vcmRpbmF0ZXMSYAoLY29vcmRpbmF0ZXMYASADKAsyHC5rYXRhbi5MaW5lU3'
    'RyaW5nQ29vcmRpbmF0ZXNCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugtjb29y'
    'ZGluYXRlcw==');

@$core.Deprecated('Use schemeGeomPropertiesDescriptor instead')
const SchemeGeomProperties$json = {
  '1': 'SchemeGeomProperties',
  '2': [
    {
      '1': 'color',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 0,
      '10': 'color',
      '17': true
    },
    {
      '1': 'fill_color',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 1,
      '10': 'fillColor',
      '17': true
    },
    {
      '1': 'fill_opacity',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 2,
      '10': 'fillOpacity',
      '17': true
    },
    {
      '1': 'weight',
      '3': 4,
      '4': 1,
      '5': 1,
      '8': {},
      '9': 3,
      '10': 'weight',
      '17': true
    },
    {
      '1': 'dash_array',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 4,
      '10': 'dashArray',
      '17': true
    },
    {'1': 'n', '3': 6, '4': 1, '5': 9, '8': {}, '9': 5, '10': 'n', '17': true},
    {
      '1': 'o_c',
      '3': 7,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 6,
      '10': 'oC',
      '17': true
    },
    {
      '1': 't_t',
      '3': 8,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 7,
      '10': 'tT',
      '17': true
    },
    {
      '1': 't_tl',
      '3': 9,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 8,
      '10': 'tTl',
      '17': true
    },
    {
      '1': 'o_mm',
      '3': 10,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 9,
      '10': 'oMm',
      '17': true
    },
    {
      '1': 'o_cn',
      '3': 11,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 10,
      '10': 'oCn',
      '17': true
    },
    {
      '1': 'c',
      '3': 12,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 11,
      '10': 'c',
      '17': true
    },
    {
      '1': 'type',
      '3': 13,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 12,
      '10': 'type',
      '17': true
    },
    {
      '1': 't',
      '3': 14,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 13,
      '10': 't',
      '17': true
    },
    {
      '1': 't_r',
      '3': 15,
      '4': 1,
      '5': 1,
      '8': {},
      '9': 14,
      '10': 'tR',
      '17': true
    },
    {
      '1': 't_a',
      '3': 16,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 15,
      '10': 'tA',
      '17': true
    },
    {
      '1': 'i',
      '3': 17,
      '4': 1,
      '5': 9,
      '8': {},
      '9': 16,
      '10': 'i',
      '17': true
    },
    {
      '1': 'r',
      '3': 18,
      '4': 1,
      '5': 1,
      '8': {},
      '9': 17,
      '10': 'r',
      '17': true
    },
  ],
  '8': [
    {'1': '_color'},
    {'1': '_fill_color'},
    {'1': '_fill_opacity'},
    {'1': '_weight'},
    {'1': '_dash_array'},
    {'1': '_n'},
    {'1': '_o_c'},
    {'1': '_t_t'},
    {'1': '_t_tl'},
    {'1': '_o_mm'},
    {'1': '_o_cn'},
    {'1': '_c'},
    {'1': '_type'},
    {'1': '_t'},
    {'1': '_t_r'},
    {'1': '_t_a'},
    {'1': '_i'},
    {'1': '_r'},
  ],
};

/// Descriptor for `SchemeGeomProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List schemeGeomPropertiesDescriptor = $convert.base64Decode(
    'ChRTY2hlbWVHZW9tUHJvcGVydGllcxI7CgVjb2xvchgBIAEoCUIgkkEdMhvRgdC60L7RgNC+IN'
    'C+0L/QuNGB0LDQvdC40LVIAFIFY29sb3KIAQESRAoKZmlsbF9jb2xvchgCIAEoCUIgkkEdMhvR'
    'gdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVIAVIJZmlsbENvbG9yiAEBEkgKDGZpbGxfb3BhY2'
    'l0eRgDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVIAlILZmlsbE9wYWNp'
    'dHmIAQESPQoGd2VpZ2h0GAQgASgBQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtU'
    'gDUgZ3ZWlnaHSIAQESRAoKZGFzaF9hcnJheRgFIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/Q'
    'uNGB0LDQvdC40LVIBFIJZGFzaEFycmF5iAEBEjMKAW4YBiABKAlCIJJBHTIb0YHQutC+0YDQvi'
    'DQvtC/0LjRgdCw0L3QuNC1SAVSAW6IAQESNgoDb19jGAcgASgJQiCSQR0yG9GB0LrQvtGA0L4g'
    '0L7Qv9C40YHQsNC90LjQtUgGUgJvQ4gBARI2CgN0X3QYCCABKAlCIJJBHTIb0YHQutC+0YDQvi'
    'DQvtC/0LjRgdCw0L3QuNC1SAdSAnRUiAEBEjgKBHRfdGwYCSABKAlCIJJBHTIb0YHQutC+0YDQ'
    'viDQvtC/0LjRgdCw0L3QuNC1SAhSA3RUbIgBARI4CgRvX21tGAogASgJQiCSQR0yG9GB0LrQvt'
    'GA0L4g0L7Qv9C40YHQsNC90LjQtUgJUgNvTW2IAQESOAoEb19jbhgLIAEoCUIgkkEdMhvRgdC6'
    '0L7RgNC+INC+0L/QuNGB0LDQvdC40LVIClIDb0NuiAEBEjMKAWMYDCABKAlCIJJBHTIb0YHQut'
    'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1SAtSAWOIAQESOQoEdHlwZRgNIAEoCUIgkkEdMhvRgdC6'
    '0L7RgNC+INC+0L/QuNGB0LDQvdC40LVIDFIEdHlwZYgBARIzCgF0GA4gASgJQiCSQR0yG9GB0L'
    'rQvtGA0L4g0L7Qv9C40YHQsNC90LjQtUgNUgF0iAEBEjYKA3RfchgPIAEoAUIgkkEdMhvRgdC6'
    '0L7RgNC+INC+0L/QuNGB0LDQvdC40LVIDlICdFKIAQESNgoDdF9hGBAgASgJQiCSQR0yG9GB0L'
    'rQvtGA0L4g0L7Qv9C40YHQsNC90LjQtUgPUgJ0QYgBARIzCgFpGBEgASgJQiCSQR0yG9GB0LrQ'
    'vtGA0L4g0L7Qv9C40YHQsNC90LjQtUgQUgFpiAEBEjMKAXIYEiABKAFCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1SBFSAXKIAQFCCAoGX2NvbG9yQg0KC19maWxsX2NvbG9yQg8K'
    'DV9maWxsX29wYWNpdHlCCQoHX3dlaWdodEINCgtfZGFzaF9hcnJheUIECgJfbkIGCgRfb19jQg'
    'YKBF90X3RCBwoFX3RfdGxCBwoFX29fbW1CBwoFX29fY25CBAoCX2NCBwoFX3R5cGVCBAoCX3RC'
    'BgoEX3RfckIGCgRfdF9hQgQKAl9pQgQKAl9y');

@$core.Deprecated('Use nodeGeomPropertiesDescriptor instead')
const NodeGeomProperties$json = {
  '1': 'NodeGeomProperties',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'type'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'type_id', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'typeId'},
    {'1': 'm_z', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'mZ'},
    {'1': 'icon', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'icon'},
    {
      '1': 'style_opacity',
      '3': 6,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'styleOpacity'
    },
    {
      '1': 'is_commutation',
      '3': 7,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'isCommutation'
    },
    {'1': 'caption', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'caption'},
  ],
};

/// Descriptor for `NodeGeomProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeGeomPropertiesDescriptor = $convert.base64Decode(
    'ChJOb2RlR2VvbVByb3BlcnRpZXMSNAoEdHlwZRgBIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L'
    '/QuNGB0LDQvdC40LVSBHR5cGUSMAoCaWQYAiABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjR'
    'gdCw0L3QuNC1UgJpZBI5Cgd0eXBlX2lkGAMgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40Y'
    'HQsNC90LjQtVIGdHlwZUlkEjEKA21fehgEIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB'
    '0LDQvdC40LVSAm1aEjQKBGljb24YBSABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L'
    '3QuNC1UgRpY29uEkUKDXN0eWxlX29wYWNpdHkYBiABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/'
    '0LjRgdCw0L3QuNC1UgxzdHlsZU9wYWNpdHkSRwoOaXNfY29tbXV0YXRpb24YByABKAhCIJJBHT'
    'Ib0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ug1pc0NvbW11dGF0aW9uEjoKB2NhcHRpb24Y'
    'CCABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdjYXB0aW9u');

@$core.Deprecated('Use peerCableDescriptor instead')
const PeerCable$json = {
  '1': 'PeerCable',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 3, '8': {}, '9': 0, '10': 'nodeId'},
    {
      '1': 'building_id',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': {},
      '9': 0,
      '10': 'buildingId'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'marking', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'marking'},
  ],
  '8': [
    {'1': 'peer_cable'},
  ],
};

/// Descriptor for `PeerCable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerCableDescriptor = $convert.base64Decode(
    'CglQZWVyQ2FibGUSOwoHbm9kZV9pZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0L'
    'DQvdC40LVIAFIGbm9kZUlkEkMKC2J1aWxkaW5nX2lkGAIgASgDQiCSQR0yG9GB0LrQvtGA0L4g'
    '0L7Qv9C40YHQsNC90LjQtUgAUgpidWlsZGluZ0lkEjQKBG5hbWUYAyABKAlCIJJBHTIb0YHQut'
    'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgRuYW1lEjoKB21hcmtpbmcYBCABKAlCIJJBHTIb0YHQ'
    'utC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdtYXJraW5nQgwKCnBlZXJfY2FibGU=');

@$core.Deprecated('Use cableGeomPropertiesDescriptor instead')
const CableGeomProperties$json = {
  '1': 'CableGeomProperties',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'type'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'type_id', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'typeId'},
    {
      '1': 'peer_start',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.katan.PeerCable',
      '8': {},
      '10': 'peerStart'
    },
    {
      '1': 'peer_end',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.katan.PeerCable',
      '8': {},
      '10': 'peerEnd'
    },
    {'1': 'm_z', '3': 6, '4': 1, '5': 5, '8': {}, '10': 'mZ'},
    {'1': 'style', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'style'},
    {'1': 'color', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'color'},
    {'1': 's_lw', '3': 9, '4': 1, '5': 5, '8': {}, '10': 'sLw'},
    {'1': 's_ld', '3': 10, '4': 1, '5': 9, '8': {}, '10': 'sLd'},
    {'1': 's_lo', '3': 11, '4': 1, '5': 9, '8': {}, '10': 'sLo'},
  ],
};

/// Descriptor for `CableGeomProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cableGeomPropertiesDescriptor = $convert.base64Decode(
    'ChNDYWJsZUdlb21Qcm9wZXJ0aWVzEjQKBHR5cGUYASABKAlCIJJBHTIb0YHQutC+0YDQviDQvt'
    'C/0LjRgdCw0L3QuNC1UgR0eXBlEjAKAmlkGAIgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C4'
    '0YHQsNC90LjQtVICaWQSOQoHdHlwZV9pZBgDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSBnR5cGVJZBJRCgpwZWVyX3N0YXJ0GAQgASgLMhAua2F0YW4uUGVlckNhYmxl'
    'QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJcGVlclN0YXJ0Ek0KCHBlZXJfZW'
    '5kGAUgASgLMhAua2F0YW4uUGVlckNhYmxlQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC9'
    '0LjQtVIHcGVlckVuZBIxCgNtX3oYBiABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L'
    '3QuNC1UgJtWhI2CgVzdHlsZRgHIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC4'
    '0LVSBXN0eWxlEjYKBWNvbG9yGAggASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90L'
    'jQtVIFY29sb3ISMwoEc19sdxgJIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC4'
    '0LVSA3NMdxIzCgRzX2xkGAogASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtV'
    'IDc0xkEjMKBHNfbG8YCyABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgNz'
    'TG8=');

@$core.Deprecated('Use polygonGeomPropertiesDescriptor instead')
const PolygonGeomProperties$json = {
  '1': 'PolygonGeomProperties',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'type'},
    {'1': 'id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'type_id', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'typeId'},
    {'1': 'style', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'style'},
    {'1': 'm_z', '3': 5, '4': 1, '5': 5, '8': {}, '10': 'mZ'},
    {'1': 'color', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'color'},
    {'1': 'caption', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'caption'},
  ],
};

/// Descriptor for `PolygonGeomProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List polygonGeomPropertiesDescriptor = $convert.base64Decode(
    'ChVQb2x5Z29uR2VvbVByb3BlcnRpZXMSNAoEdHlwZRgBIAEoCUIgkkEdMhvRgdC60L7RgNC+IN'
    'C+0L/QuNGB0LDQvdC40LVSBHR5cGUSMAoCaWQYAiABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/'
    '0LjRgdCw0L3QuNC1UgJpZBI5Cgd0eXBlX2lkGAMgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVIGdHlwZUlkEjYKBXN0eWxlGAQgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Q'
    'v9C40YHQsNC90LjQtVIFc3R5bGUSMQoDbV96GAUgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVICbVoSNgoFY29sb3IYBiABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjR'
    'gdCw0L3QuNC1UgVjb2xvchI6CgdjYXB0aW9uGAcgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVIHY2FwdGlvbg==');

@$core.Deprecated('Use peerSchemeDescriptor instead')
const PeerScheme$json = {
  '1': 'PeerScheme',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 3, '8': {}, '9': 0, '10': 'nodeId'},
    {
      '1': 'building_id',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': {},
      '9': 0,
      '10': 'buildingId'
    },
  ],
  '8': [
    {'1': 'peer_scheme'},
  ],
};

/// Descriptor for `PeerScheme`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerSchemeDescriptor = $convert.base64Decode(
    'CgpQZWVyU2NoZW1lEjsKB25vZGVfaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgd'
    'Cw0L3QuNC1SABSBm5vZGVJZBJDCgtidWlsZGluZ19pZBgCIAEoA0IgkkEdMhvRgdC60L7RgNC+'
    'INC+0L/QuNGB0LDQvdC40LVIAFIKYnVpbGRpbmdJZEINCgtwZWVyX3NjaGVtZQ==');
