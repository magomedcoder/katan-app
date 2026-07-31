// This is a generated file - do not edit.
//
// Generated from project.proto.

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

@$core.Deprecated('Use projectItemDescriptor instead')
const ProjectItem$json = {
  '1': 'ProjectItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'description'},
    {
      '1': 'owner',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'owner'
    },
    {'1': 'created_at', '3': 5, '4': 1, '5': 3, '8': {}, '10': 'createdAt'},
    {'1': 'updated_at', '3': 6, '4': 1, '5': 3, '8': {}, '10': 'updatedAt'},
    {'1': 'tasks_count', '3': 7, '4': 1, '5': 5, '8': {}, '10': 'tasksCount'},
    {'1': 'my_role', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'myRole'},
    {'1': 'story_points', '3': 9, '4': 1, '5': 5, '8': {}, '10': 'storyPoints'},
    {'1': 'status', '3': 10, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'closed_at', '3': 11, '4': 1, '5': 3, '8': {}, '10': 'closedAt'},
    {
      '1': 'closed_by',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'closedBy'
    },
  ],
};

/// Descriptor for `ProjectItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectItemDescriptor = $convert.base64Decode(
    'CgtQcm9qZWN0SXRlbRIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvd'
    'C40LVSAmlkEjYKBXRpdGxlGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
    'tVIFdGl0bGUSQgoLZGVzY3JpcHRpb24YAyABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgd'
    'Cw0L3QuNC1UgtkZXNjcmlwdGlvbhJHCgVvd25lchgEIAEoCzIPLmthdGFuLkJhc2VVc2VyQiCS'
    'QR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFb3duZXISPwoKY3JlYXRlZF9hdBgFIA'
    'EoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCWNyZWF0ZWRBdBI/Cgp1cGRh'
    'dGVkX2F0GAYgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJdXBkYXRlZE'
    'F0EkEKC3Rhc2tzX2NvdW50GAcgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
    'tVIKdGFza3NDb3VudBI5CgdteV9yb2xlGAggASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40Y'
    'HQsNC90LjQtVIGbXlSb2xlEkMKDHN0b3J5X3BvaW50cxgJIAEoBUIgkkEdMhvRgdC60L7RgNC+'
    'INC+0L/QuNGB0LDQvdC40LVSC3N0b3J5UG9pbnRzEjgKBnN0YXR1cxgKIAEoCUIgkkEdMhvRgd'
    'C60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBnN0YXR1cxI9CgljbG9zZWRfYXQYCyABKANCIJJB'
    'HTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghjbG9zZWRBdBJOCgljbG9zZWRfYnkYDC'
    'ABKAsyDy5rYXRhbi5CYXNlVXNlckIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVS'
    'CGNsb3NlZEJ5');

@$core.Deprecated('Use projectMemberDescriptor instead')
const ProjectMember$json = {
  '1': 'ProjectMember',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {
      '1': 'user',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'user'
    },
    {'1': 'role', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'role'},
  ],
};

/// Descriptor for `ProjectMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectMemberDescriptor = $convert.base64Decode(
    'Cg1Qcm9qZWN0TWVtYmVyEjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsN'
    'C90LjQtVICaWQSRQoEdXNlchgCIAEoCzIPLmthdGFuLkJhc2VVc2VyQiCSQR0yG9GB0LrQvtGA'
    '0L4g0L7Qv9C40YHQsNC90LjQtVIEdXNlchI0CgRyb2xlGAMgASgJQiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVIEcm9sZQ==');

@$core.Deprecated('Use projectMemberInputDescriptor instead')
const ProjectMemberInput$json = {
  '1': 'ProjectMemberInput',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'userId'},
    {'1': 'role', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'role'},
  ],
};

/// Descriptor for `ProjectMemberInput`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectMemberInputDescriptor = $convert.base64Decode(
    'ChJQcm9qZWN0TWVtYmVySW5wdXQSOQoHdXNlcl9pZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+IN'
    'C+0L/QuNGB0LDQvdC40LVSBnVzZXJJZBI0CgRyb2xlGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g'
    '0L7Qv9C40YHQsNC90LjQtVIEcm9sZQ==');

@$core.Deprecated('Use kanbanColumnDescriptor instead')
const KanbanColumn$json = {
  '1': 'KanbanColumn',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'sort_order', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'sortOrder'},
    {'1': 'color', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'color'},
    {
      '1': 'tasks',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.katan.TaskCard',
      '8': {},
      '10': 'tasks'
    },
  ],
};

/// Descriptor for `KanbanColumn`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kanbanColumnDescriptor = $convert.base64Decode(
    'CgxLYW5iYW5Db2x1bW4SMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L'
    '3QuNC1UgJpZBI2CgV0aXRsZRgCIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC4'
    '0LVSBXRpdGxlEj8KCnNvcnRfb3JkZXIYAyABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgd'
    'Cw0L3QuNC1Uglzb3J0T3JkZXISNgoFY29sb3IYBCABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/'
    '0LjRgdCw0L3QuNC1UgVjb2xvchJHCgV0YXNrcxgFIAMoCzIPLmthdGFuLlRhc2tDYXJkQiCSQR'
    '0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFdGFza3M=');

@$core.Deprecated('Use taskCardDescriptor instead')
const TaskCard$json = {
  '1': 'TaskCard',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {
      '1': 'assignee',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'assignee'
    },
    {'1': 'position', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'position'},
    {'1': 'story_points', '3': 5, '4': 1, '5': 5, '8': {}, '10': 'storyPoints'},
  ],
};

/// Descriptor for `TaskCard`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskCardDescriptor = $convert.base64Decode(
    'CghUYXNrQ2FyZBIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40L'
    'VSAmlkEjYKBXRpdGxlGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIF'
    'dGl0bGUSTQoIYXNzaWduZWUYAyABKAsyDy5rYXRhbi5CYXNlVXNlckIgkkEdMhvRgdC60L7RgN'
    'C+INC+0L/QuNGB0LDQvdC40LVSCGFzc2lnbmVlEjwKCHBvc2l0aW9uGAQgASgFQiCSQR0yG9GB'
    '0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIIcG9zaXRpb24SQwoMc3RvcnlfcG9pbnRzGAUgAS'
    'gFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVILc3RvcnlQb2ludHM=');

@$core.Deprecated('Use createProjectRequestDescriptor instead')
const CreateProjectRequest$json = {
  '1': 'CreateProjectRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'description'},
    {
      '1': 'members',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.katan.ProjectMemberInput',
      '8': {},
      '10': 'members'
    },
    {'1': 'story_points', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'storyPoints'},
  ],
};

/// Descriptor for `CreateProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createProjectRequestDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVQcm9qZWN0UmVxdWVzdBI2CgV0aXRsZRgBIAEoCUIgkkEdMhvRgdC60L7RgNC+IN'
    'C+0L/QuNGB0LDQvdC40LVSBXRpdGxlEkIKC2Rlc2NyaXB0aW9uGAIgASgJQiCSQR0yG9GB0LrQ'
    'vtGA0L4g0L7Qv9C40YHQsNC90LjQtVILZGVzY3JpcHRpb24SVQoHbWVtYmVycxgDIAMoCzIZLm'
    'thdGFuLlByb2plY3RNZW1iZXJJbnB1dEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC4'
    '0LVSB21lbWJlcnMSQwoMc3RvcnlfcG9pbnRzGAQgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVILc3RvcnlQb2ludHM=');

@$core.Deprecated('Use updateProjectRequestDescriptor instead')
const UpdateProjectRequest$json = {
  '1': 'UpdateProjectRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'description'},
    {'1': 'story_points', '3': 4, '4': 1, '5': 5, '8': {}, '10': 'storyPoints'},
  ],
};

/// Descriptor for `UpdateProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProjectRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVQcm9qZWN0UmVxdWVzdBIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L'
    '/QuNGB0LDQvdC40LVSAmlkEjYKBXRpdGxlGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C4'
    '0YHQsNC90LjQtVIFdGl0bGUSQgoLZGVzY3JpcHRpb24YAyABKAlCIJJBHTIb0YHQutC+0YDQvi'
    'DQvtC/0LjRgdCw0L3QuNC1UgtkZXNjcmlwdGlvbhJDCgxzdG9yeV9wb2ludHMYBCABKAVCIJJB'
    'HTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgtzdG9yeVBvaW50cw==');

@$core.Deprecated('Use closeProjectRequestDescriptor instead')
const CloseProjectRequest$json = {
  '1': 'CloseProjectRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `CloseProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeProjectRequestDescriptor = $convert.base64Decode(
    'ChNDbG9zZVByb2plY3RSZXF1ZXN0EjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVICaWQ=');

@$core.Deprecated('Use createProjectResponseDescriptor instead')
const CreateProjectResponse$json = {
  '1': 'CreateProjectResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `CreateProjectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createProjectResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVQcm9qZWN0UmVzcG9uc2USMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvt'
    'C/0LjRgdCw0L3QuNC1UgJpZA==');

@$core.Deprecated('Use getProjectsRequestDescriptor instead')
const GetProjectsRequest$json = {
  '1': 'GetProjectsRequest',
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
    {'1': 'query', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'query'},
  ],
};

/// Descriptor for `GetProjectsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProjectsRequestDescriptor = $convert.base64Decode(
    'ChJHZXRQcm9qZWN0c1JlcXVlc3QSUwoKcGFnaW5hdGlvbhgBIAEoCzIRLmthdGFuLlBhZ2luYX'
    'Rpb25CIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgpwYWdpbmF0aW9uEjYKBXF1'
    'ZXJ5GAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFcXVlcnk=');

@$core.Deprecated('Use getProjectsResponseDescriptor instead')
const GetProjectsResponse$json = {
  '1': 'GetProjectsResponse',
  '2': [
    {'1': 'total', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'total'},
    {
      '1': 'items',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.katan.ProjectItem',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetProjectsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProjectsResponseDescriptor = $convert.base64Decode(
    'ChNHZXRQcm9qZWN0c1Jlc3BvbnNlEjYKBXRvdGFsGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L'
    '7Qv9C40YHQsNC90LjQtVIFdG90YWwSSgoFaXRlbXMYAiADKAsyEi5rYXRhbi5Qcm9qZWN0SXRl'
    'bUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBWl0ZW1z');

@$core.Deprecated('Use getProjectRequestDescriptor instead')
const GetProjectRequest$json = {
  '1': 'GetProjectRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `GetProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProjectRequestDescriptor = $convert.base64Decode(
    'ChFHZXRQcm9qZWN0UmVxdWVzdBIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSAmlk');

@$core.Deprecated('Use getProjectResponseDescriptor instead')
const GetProjectResponse$json = {
  '1': 'GetProjectResponse',
  '2': [
    {
      '1': 'project',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.ProjectItem',
      '8': {},
      '10': 'project'
    },
  ],
};

/// Descriptor for `GetProjectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProjectResponseDescriptor = $convert.base64Decode(
    'ChJHZXRQcm9qZWN0UmVzcG9uc2USTgoHcHJvamVjdBgBIAEoCzISLmthdGFuLlByb2plY3RJdG'
    'VtQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIHcHJvamVjdA==');

@$core.Deprecated('Use deleteProjectRequestDescriptor instead')
const DeleteProjectRequest$json = {
  '1': 'DeleteProjectRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `DeleteProjectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteProjectRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVQcm9qZWN0UmVxdWVzdBIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L'
    '/QuNGB0LDQvdC40LVSAmlk');

@$core.Deprecated('Use getProjectKanbanRequestDescriptor instead')
const GetProjectKanbanRequest$json = {
  '1': 'GetProjectKanbanRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'projectId'},
  ],
};

/// Descriptor for `GetProjectKanbanRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProjectKanbanRequestDescriptor =
    $convert.base64Decode(
        'ChdHZXRQcm9qZWN0S2FuYmFuUmVxdWVzdBI/Cgpwcm9qZWN0X2lkGAEgASgDQiCSQR0yG9GB0L'
        'rQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJcHJvamVjdElk');

@$core.Deprecated('Use getProjectKanbanResponseDescriptor instead')
const GetProjectKanbanResponse$json = {
  '1': 'GetProjectKanbanResponse',
  '2': [
    {
      '1': 'project',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.ProjectItem',
      '8': {},
      '10': 'project'
    },
    {
      '1': 'columns',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.katan.KanbanColumn',
      '8': {},
      '10': 'columns'
    },
  ],
};

/// Descriptor for `GetProjectKanbanResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProjectKanbanResponseDescriptor = $convert.base64Decode(
    'ChhHZXRQcm9qZWN0S2FuYmFuUmVzcG9uc2USTgoHcHJvamVjdBgBIAEoCzISLmthdGFuLlByb2'
    'plY3RJdGVtQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIHcHJvamVjdBJPCgdj'
    'b2x1bW5zGAIgAygLMhMua2F0YW4uS2FuYmFuQ29sdW1uQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVIHY29sdW1ucw==');

@$core.Deprecated('Use createKanbanColumnRequestDescriptor instead')
const CreateKanbanColumnRequest$json = {
  '1': 'CreateKanbanColumnRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'projectId'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'color', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'color'},
  ],
};

/// Descriptor for `CreateKanbanColumnRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createKanbanColumnRequestDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVLYW5iYW5Db2x1bW5SZXF1ZXN0Ej8KCnByb2plY3RfaWQYASABKANCIJJBHTIb0Y'
    'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Uglwcm9qZWN0SWQSNgoFdGl0bGUYAiABKAlCIJJB'
    'HTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgV0aXRsZRI2CgVjb2xvchgDIAEoCUIgkk'
    'EdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBWNvbG9y');

@$core.Deprecated('Use updateKanbanColumnRequestDescriptor instead')
const UpdateKanbanColumnRequest$json = {
  '1': 'UpdateKanbanColumnRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'color', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'color'},
  ],
};

/// Descriptor for `UpdateKanbanColumnRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateKanbanColumnRequestDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVLYW5iYW5Db2x1bW5SZXF1ZXN0EjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L'
    '4g0L7Qv9C40YHQsNC90LjQtVICaWQSNgoFdGl0bGUYAiABKAlCIJJBHTIb0YHQutC+0YDQviDQ'
    'vtC/0LjRgdCw0L3QuNC1UgV0aXRsZRI2CgVjb2xvchgDIAEoCUIgkkEdMhvRgdC60L7RgNC+IN'
    'C+0L/QuNGB0LDQvdC40LVSBWNvbG9y');

@$core.Deprecated('Use deleteKanbanColumnRequestDescriptor instead')
const DeleteKanbanColumnRequest$json = {
  '1': 'DeleteKanbanColumnRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `DeleteKanbanColumnRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteKanbanColumnRequestDescriptor =
    $convert.base64Decode(
        'ChlEZWxldGVLYW5iYW5Db2x1bW5SZXF1ZXN0EjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L'
        '4g0L7Qv9C40YHQsNC90LjQtVICaWQ=');

@$core.Deprecated('Use reorderKanbanColumnsRequestDescriptor instead')
const ReorderKanbanColumnsRequest$json = {
  '1': 'ReorderKanbanColumnsRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'projectId'},
    {'1': 'column_ids', '3': 2, '4': 3, '5': 3, '8': {}, '10': 'columnIds'},
  ],
};

/// Descriptor for `ReorderKanbanColumnsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reorderKanbanColumnsRequestDescriptor =
    $convert.base64Decode(
        'ChtSZW9yZGVyS2FuYmFuQ29sdW1uc1JlcXVlc3QSPwoKcHJvamVjdF9pZBgBIAEoA0IgkkEdMh'
        'vRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXByb2plY3RJZBI/Cgpjb2x1bW5faWRzGAIg'
        'AygDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJY29sdW1uSWRz');

@$core.Deprecated('Use moveTaskRequestDescriptor instead')
const MoveTaskRequest$json = {
  '1': 'MoveTaskRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'taskId'},
    {'1': 'column_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'columnId'},
    {'1': 'position', '3': 3, '4': 1, '5': 5, '8': {}, '10': 'position'},
  ],
};

/// Descriptor for `MoveTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List moveTaskRequestDescriptor = $convert.base64Decode(
    'Cg9Nb3ZlVGFza1JlcXVlc3QSOQoHdGFza19pZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L'
    '/QuNGB0LDQvdC40LVSBnRhc2tJZBI9Cgljb2x1bW5faWQYAiABKANCIJJBHTIb0YHQutC+0YDQ'
    'viDQvtC/0LjRgdCw0L3QuNC1Ughjb2x1bW5JZBI8Cghwb3NpdGlvbhgDIAEoBUIgkkEdMhvRgd'
    'C60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCHBvc2l0aW9u');

@$core.Deprecated('Use getProjectMembersRequestDescriptor instead')
const GetProjectMembersRequest$json = {
  '1': 'GetProjectMembersRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'projectId'},
  ],
};

/// Descriptor for `GetProjectMembersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProjectMembersRequestDescriptor =
    $convert.base64Decode(
        'ChhHZXRQcm9qZWN0TWVtYmVyc1JlcXVlc3QSPwoKcHJvamVjdF9pZBgBIAEoA0IgkkEdMhvRgd'
        'C60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXByb2plY3RJZA==');

@$core.Deprecated('Use getProjectMembersResponseDescriptor instead')
const GetProjectMembersResponse$json = {
  '1': 'GetProjectMembersResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.ProjectMember',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetProjectMembersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getProjectMembersResponseDescriptor =
    $convert.base64Decode(
        'ChlHZXRQcm9qZWN0TWVtYmVyc1Jlc3BvbnNlEkwKBWl0ZW1zGAEgAygLMhQua2F0YW4uUHJvam'
        'VjdE1lbWJlckIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBWl0ZW1z');

@$core.Deprecated('Use setProjectMembersRequestDescriptor instead')
const SetProjectMembersRequest$json = {
  '1': 'SetProjectMembersRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'projectId'},
    {
      '1': 'members',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.katan.ProjectMemberInput',
      '8': {},
      '10': 'members'
    },
  ],
};

/// Descriptor for `SetProjectMembersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setProjectMembersRequestDescriptor = $convert.base64Decode(
    'ChhTZXRQcm9qZWN0TWVtYmVyc1JlcXVlc3QSPwoKcHJvamVjdF9pZBgBIAEoA0IgkkEdMhvRgd'
    'C60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXByb2plY3RJZBJVCgdtZW1iZXJzGAIgAygLMhku'
    'a2F0YW4uUHJvamVjdE1lbWJlcklucHV0QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90L'
    'jQtVIHbWVtYmVycw==');
