// This is a generated file - do not edit.
//
// Generated from task.proto.

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

@$core.Deprecated('Use taskWorkPauseDescriptor instead')
const TaskWorkPause$json = {
  '1': 'TaskWorkPause',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'paused_at', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'pausedAt'},
    {'1': 'resumed_at', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'resumedAt'},
    {
      '1': 'work_seconds_before',
      '3': 4,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'workSecondsBefore'
    },
    {
      '1': 'user',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'user'
    },
  ],
};

/// Descriptor for `TaskWorkPause`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskWorkPauseDescriptor = $convert.base64Decode(
    'Cg1UYXNrV29ya1BhdXNlEjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsN'
    'C90LjQtVICaWQSPQoJcGF1c2VkX2F0GAIgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQ'
    'sNC90LjQtVIIcGF1c2VkQXQSPwoKcmVzdW1lZF9hdBgDIAEoA0IgkkEdMhvRgdC60L7RgNC+IN'
    'C+0L/QuNGB0LDQvdC40LVSCXJlc3VtZWRBdBJQChN3b3JrX3NlY29uZHNfYmVmb3JlGAQgASgD'
    'QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIRd29ya1NlY29uZHNCZWZvcmUSRQ'
    'oEdXNlchgFIAEoCzIPLmthdGFuLkJhc2VVc2VyQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQ'
    'sNC90LjQtVIEdXNlcg==');

@$core.Deprecated('Use taskItemDescriptor instead')
const TaskItem$json = {
  '1': 'TaskItem',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'description'},
    {
      '1': 'creator',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'creator'
    },
    {
      '1': 'assignee',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'assignee'
    },
    {
      '1': 'observers',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'observers'
    },
    {'1': 'created_at', '3': 7, '4': 1, '5': 3, '8': {}, '10': 'createdAt'},
    {'1': 'updated_at', '3': 8, '4': 1, '5': 3, '8': {}, '10': 'updatedAt'},
    {'1': 'project_id', '3': 9, '4': 1, '5': 3, '8': {}, '10': 'projectId'},
    {'1': 'column_id', '3': 10, '4': 1, '5': 3, '8': {}, '10': 'columnId'},
    {'1': 'position', '3': 11, '4': 1, '5': 5, '8': {}, '10': 'position'},
    {
      '1': 'project_title',
      '3': 12,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'projectTitle'
    },
    {'1': 'due_at', '3': 13, '4': 1, '5': 3, '8': {}, '10': 'dueAt'},
    {
      '1': 'tags',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.katan.Tag',
      '8': {},
      '10': 'tags'
    },
    {'1': 'is_overdue', '3': 15, '4': 1, '5': 8, '8': {}, '10': 'isOverdue'},
    {'1': 'object_type', '3': 16, '4': 1, '5': 5, '8': {}, '10': 'objectType'},
    {'1': 'object_id', '3': 17, '4': 1, '5': 3, '8': {}, '10': 'objectId'},
    {'1': 'object_name', '3': 18, '4': 1, '5': 9, '8': {}, '10': 'objectName'},
    {
      '1': 'column_title',
      '3': 19,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'columnTitle'
    },
    {'1': 'status', '3': 20, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {
      '1': 'work_started_at',
      '3': 21,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'workStartedAt'
    },
    {
      '1': 'time_spent_seconds',
      '3': 22,
      '4': 1,
      '5': 3,
      '8': {},
      '10': 'timeSpentSeconds'
    },
    {
      '1': 'work_pauses',
      '3': 23,
      '4': 3,
      '5': 11,
      '6': '.katan.TaskWorkPause',
      '8': {},
      '10': 'workPauses'
    },
    {'1': 'is_paused', '3': 24, '4': 1, '5': 8, '8': {}, '10': 'isPaused'},
    {'1': 'parent_id', '3': 25, '4': 1, '5': 3, '8': {}, '10': 'parentId'},
    {
      '1': 'parent_title',
      '3': 26,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'parentTitle'
    },
    {
      '1': 'subtask_count',
      '3': 27,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'subtaskCount'
    },
    {
      '1': 'subtask_completed_count',
      '3': 28,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'subtaskCompletedCount'
    },
    {
      '1': 'subtasks',
      '3': 29,
      '4': 3,
      '5': 11,
      '6': '.katan.TaskItem',
      '8': {},
      '10': 'subtasks'
    },
    {
      '1': 'story_points',
      '3': 30,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'storyPoints'
    },
  ],
};

/// Descriptor for `TaskItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskItemDescriptor = $convert.base64Decode(
    'CghUYXNrSXRlbRIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40L'
    'VSAmlkEjYKBXRpdGxlGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIF'
    'dGl0bGUSQgoLZGVzY3JpcHRpb24YAyABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L'
    '3QuNC1UgtkZXNjcmlwdGlvbhJLCgdjcmVhdG9yGAQgASgLMg8ua2F0YW4uQmFzZVVzZXJCIJJB'
    'HTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdjcmVhdG9yEk0KCGFzc2lnbmVlGAUgAS'
    'gLMg8ua2F0YW4uQmFzZVVzZXJCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ughh'
    'c3NpZ25lZRJPCglvYnNlcnZlcnMYBiADKAsyDy5rYXRhbi5CYXNlVXNlckIgkkEdMhvRgdC60L'
    '7RgNC+INC+0L/QuNGB0LDQvdC40LVSCW9ic2VydmVycxI/CgpjcmVhdGVkX2F0GAcgASgDQiCS'
    'QR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJY3JlYXRlZEF0Ej8KCnVwZGF0ZWRfYX'
    'QYCCABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugl1cGRhdGVkQXQSPwoK'
    'cHJvamVjdF9pZBgJIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXByb2'
    'plY3RJZBI9Cgljb2x1bW5faWQYCiABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3Q'
    'uNC1Ughjb2x1bW5JZBI8Cghwb3NpdGlvbhgLIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSCHBvc2l0aW9uEkUKDXByb2plY3RfdGl0bGUYDCABKAlCIJJBHTIb0YHQutC+'
    '0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugxwcm9qZWN0VGl0bGUSNwoGZHVlX2F0GA0gASgDQiCSQR'
    '0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFZHVlQXQSQAoEdGFncxgOIAMoCzIKLmth'
    'dGFuLlRhZ0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBHRhZ3MSPwoKaXNfb3'
    'ZlcmR1ZRgPIAEoCEIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCWlzT3ZlcmR1'
    'ZRJBCgtvYmplY3RfdHlwZRgQIAEoBUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40L'
    'VSCm9iamVjdFR5cGUSPQoJb2JqZWN0X2lkGBEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C4'
    '0YHQsNC90LjQtVIIb2JqZWN0SWQSQQoLb2JqZWN0X25hbWUYEiABKAlCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgpvYmplY3ROYW1lEkMKDGNvbHVtbl90aXRsZRgTIAEoCUIg'
    'kkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSC2NvbHVtblRpdGxlEjgKBnN0YXR1cx'
    'gUIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBnN0YXR1cxJICg93b3Jr'
    'X3N0YXJ0ZWRfYXQYFSABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ug13b3'
    'JrU3RhcnRlZEF0Ek4KEnRpbWVfc3BlbnRfc2Vjb25kcxgWIAEoA0IgkkEdMhvRgdC60L7RgNC+'
    'INC+0L/QuNGB0LDQvdC40LVSEHRpbWVTcGVudFNlY29uZHMSVwoLd29ya19wYXVzZXMYFyADKA'
    'syFC5rYXRhbi5UYXNrV29ya1BhdXNlQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
    'tVIKd29ya1BhdXNlcxI9Cglpc19wYXVzZWQYGCABKAhCIJJBHTIb0YHQutC+0YDQviDQvtC/0L'
    'jRgdCw0L3QuNC1Ughpc1BhdXNlZBI9CglwYXJlbnRfaWQYGSABKANCIJJBHTIb0YHQutC+0YDQ'
    'viDQvtC/0LjRgdCw0L3QuNC1UghwYXJlbnRJZBJDCgxwYXJlbnRfdGl0bGUYGiABKAlCIJJBHT'
    'Ib0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgtwYXJlbnRUaXRsZRJFCg1zdWJ0YXNrX2Nv'
    'dW50GBsgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIMc3VidGFza0NvdW'
    '50ElgKF3N1YnRhc2tfY29tcGxldGVkX2NvdW50GBwgASgFQiCSQR0yG9GB0LrQvtGA0L4g0L7Q'
    'v9C40YHQsNC90LjQtVIVc3VidGFza0NvbXBsZXRlZENvdW50Ek0KCHN1YnRhc2tzGB0gAygLMg'
    '8ua2F0YW4uVGFza0l0ZW1CIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghzdWJ0'
    'YXNrcxJDCgxzdG9yeV9wb2ludHMYHiABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L'
    '3QuNC1UgtzdG9yeVBvaW50cw==');

@$core.Deprecated('Use taskCommentDescriptor instead')
const TaskComment$json = {
  '1': 'TaskComment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'task_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'taskId'},
    {
      '1': 'author',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.katan.BaseUser',
      '8': {},
      '10': 'author'
    },
    {'1': 'content', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'content'},
    {'1': 'created_at', '3': 5, '4': 1, '5': 3, '8': {}, '10': 'createdAt'},
    {'1': 'updated_at', '3': 6, '4': 1, '5': 3, '8': {}, '10': 'updatedAt'},
  ],
};

/// Descriptor for `TaskComment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskCommentDescriptor = $convert.base64Decode(
    'CgtUYXNrQ29tbWVudBIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvd'
    'C40LVSAmlkEjkKB3Rhc2tfaWQYAiABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3Q'
    'uNC1UgZ0YXNrSWQSSQoGYXV0aG9yGAMgASgLMg8ua2F0YW4uQmFzZVVzZXJCIJJBHTIb0YHQut'
    'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZhdXRob3ISOgoHY29udGVudBgEIAEoCUIgkkEdMhvR'
    'gdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSB2NvbnRlbnQSPwoKY3JlYXRlZF9hdBgFIAEoA0'
    'IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCWNyZWF0ZWRBdBI/Cgp1cGRhdGVk'
    'X2F0GAYgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJdXBkYXRlZEF0');

@$core.Deprecated('Use createTaskRequestDescriptor instead')
const CreateTaskRequest$json = {
  '1': 'CreateTaskRequest',
  '2': [
    {'1': 'title', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'description'},
    {'1': 'creator_id', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'creatorId'},
    {'1': 'assignee_id', '3': 4, '4': 1, '5': 3, '8': {}, '10': 'assigneeId'},
    {'1': 'observer_ids', '3': 5, '4': 3, '5': 3, '8': {}, '10': 'observerIds'},
    {'1': 'project_id', '3': 6, '4': 1, '5': 3, '8': {}, '10': 'projectId'},
    {'1': 'column_id', '3': 7, '4': 1, '5': 3, '8': {}, '10': 'columnId'},
    {'1': 'due_at', '3': 8, '4': 1, '5': 3, '8': {}, '10': 'dueAt'},
    {'1': 'tag_ids', '3': 9, '4': 3, '5': 3, '8': {}, '10': 'tagIds'},
    {'1': 'object_type', '3': 10, '4': 1, '5': 5, '8': {}, '10': 'objectType'},
    {'1': 'object_id', '3': 11, '4': 1, '5': 3, '8': {}, '10': 'objectId'},
    {'1': 'parent_id', '3': 12, '4': 1, '5': 3, '8': {}, '10': 'parentId'},
    {
      '1': 'story_points',
      '3': 13,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'storyPoints'
    },
  ],
};

/// Descriptor for `CreateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskRequestDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVUYXNrUmVxdWVzdBI2CgV0aXRsZRgBIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L'
    '/QuNGB0LDQvdC40LVSBXRpdGxlEkIKC2Rlc2NyaXB0aW9uGAIgASgJQiCSQR0yG9GB0LrQvtGA'
    '0L4g0L7Qv9C40YHQsNC90LjQtVILZGVzY3JpcHRpb24SPwoKY3JlYXRvcl9pZBgDIAEoA0Igkk'
    'EdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCWNyZWF0b3JJZBJBCgthc3NpZ25lZV9p'
    'ZBgEIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCmFzc2lnbmVlSWQSQw'
    'oMb2JzZXJ2ZXJfaWRzGAUgAygDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIL'
    'b2JzZXJ2ZXJJZHMSPwoKcHJvamVjdF9pZBgGIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSCXByb2plY3RJZBI9Cgljb2x1bW5faWQYByABKANCIJJBHTIb0YHQutC+0YDQ'
    'viDQvtC/0LjRgdCw0L3QuNC1Ughjb2x1bW5JZBI3CgZkdWVfYXQYCCABKANCIJJBHTIb0YHQut'
    'C+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgVkdWVBdBI5Cgd0YWdfaWRzGAkgAygDQiCSQR0yG9GB'
    '0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGdGFnSWRzEkEKC29iamVjdF90eXBlGAogASgFQi'
    'CSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIKb2JqZWN0VHlwZRI9CglvYmplY3Rf'
    'aWQYCyABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghvYmplY3RJZBI9Cg'
    'lwYXJlbnRfaWQYDCABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UghwYXJl'
    'bnRJZBJDCgxzdG9yeV9wb2ludHMYDSABKAVCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L'
    '3QuNC1UgtzdG9yeVBvaW50cw==');

@$core.Deprecated('Use createTaskResponseDescriptor instead')
const CreateTaskResponse$json = {
  '1': 'CreateTaskResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `CreateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskResponseDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVUYXNrUmVzcG9uc2USMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0L'
    'jRgdCw0L3QuNC1UgJpZA==');

@$core.Deprecated('Use getTasksRequestDescriptor instead')
const GetTasksRequest$json = {
  '1': 'GetTasksRequest',
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
    {'1': 'project_id', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'projectId'},
    {'1': 'status', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'parent_id', '3': 5, '4': 1, '5': 3, '8': {}, '10': 'parentId'},
  ],
};

/// Descriptor for `GetTasksRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTasksRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRUYXNrc1JlcXVlc3QSUwoKcGFnaW5hdGlvbhgBIAEoCzIRLmthdGFuLlBhZ2luYXRpb2'
    '5CIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgpwYWdpbmF0aW9uEjYKBXF1ZXJ5'
    'GAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFcXVlcnkSPwoKcHJvam'
    'VjdF9pZBgDIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXByb2plY3RJ'
    'ZBI4CgZzdGF0dXMYBCABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZzdG'
    'F0dXMSPQoJcGFyZW50X2lkGAUgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
    'tVIIcGFyZW50SWQ=');

@$core.Deprecated('Use getTasksResponseDescriptor instead')
const GetTasksResponse$json = {
  '1': 'GetTasksResponse',
  '2': [
    {'1': 'total', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'total'},
    {
      '1': 'items',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.katan.TaskItem',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetTasksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTasksResponseDescriptor = $convert.base64Decode(
    'ChBHZXRUYXNrc1Jlc3BvbnNlEjYKBXRvdGFsGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9'
    'C40YHQsNC90LjQtVIFdG90YWwSRwoFaXRlbXMYAiADKAsyDy5rYXRhbi5UYXNrSXRlbUIgkkEd'
    'MhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSBWl0ZW1z');

@$core.Deprecated('Use getTaskRequestDescriptor instead')
const GetTaskRequest$json = {
  '1': 'GetTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `GetTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskRequestDescriptor = $convert.base64Decode(
    'Cg5HZXRUYXNrUmVxdWVzdBIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0L'
    'DQvdC40LVSAmlk');

@$core.Deprecated('Use getTaskResponseDescriptor instead')
const GetTaskResponse$json = {
  '1': 'GetTaskResponse',
  '2': [
    {
      '1': 'task',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.TaskItem',
      '8': {},
      '10': 'task'
    },
  ],
};

/// Descriptor for `GetTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskResponseDescriptor = $convert.base64Decode(
    'Cg9HZXRUYXNrUmVzcG9uc2USRQoEdGFzaxgBIAEoCzIPLmthdGFuLlRhc2tJdGVtQiCSQR0yG9'
    'GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIEdGFzaw==');

@$core.Deprecated('Use updateTaskRequestDescriptor instead')
const UpdateTaskRequest$json = {
  '1': 'UpdateTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'title'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'description'},
    {'1': 'creator_id', '3': 4, '4': 1, '5': 3, '8': {}, '10': 'creatorId'},
    {'1': 'assignee_id', '3': 5, '4': 1, '5': 3, '8': {}, '10': 'assigneeId'},
    {'1': 'observer_ids', '3': 6, '4': 3, '5': 3, '8': {}, '10': 'observerIds'},
    {'1': 'column_id', '3': 7, '4': 1, '5': 3, '8': {}, '10': 'columnId'},
    {'1': 'due_at', '3': 8, '4': 1, '5': 3, '8': {}, '10': 'dueAt'},
    {'1': 'tag_ids', '3': 9, '4': 3, '5': 3, '8': {}, '10': 'tagIds'},
    {
      '1': 'story_points',
      '3': 10,
      '4': 1,
      '5': 5,
      '8': {},
      '10': 'storyPoints'
    },
  ],
};

/// Descriptor for `UpdateTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskRequestDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVUYXNrUmVxdWVzdBIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSAmlkEjYKBXRpdGxlGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQ'
    'sNC90LjQtVIFdGl0bGUSQgoLZGVzY3JpcHRpb24YAyABKAlCIJJBHTIb0YHQutC+0YDQviDQvt'
    'C/0LjRgdCw0L3QuNC1UgtkZXNjcmlwdGlvbhI/CgpjcmVhdG9yX2lkGAQgASgDQiCSQR0yG9GB'
    '0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJY3JlYXRvcklkEkEKC2Fzc2lnbmVlX2lkGAUgAS'
    'gDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIKYXNzaWduZWVJZBJDCgxvYnNl'
    'cnZlcl9pZHMYBiADKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgtvYnNlcn'
    'ZlcklkcxI9Cgljb2x1bW5faWQYByABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3Q'
    'uNC1Ughjb2x1bW5JZBI3CgZkdWVfYXQYCCABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgd'
    'Cw0L3QuNC1UgVkdWVBdBI5Cgd0YWdfaWRzGAkgAygDQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C4'
    '0YHQsNC90LjQtVIGdGFnSWRzEkMKDHN0b3J5X3BvaW50cxgKIAEoBUIgkkEdMhvRgdC60L7RgN'
    'C+INC+0L/QuNGB0LDQvdC40LVSC3N0b3J5UG9pbnRz');

@$core.Deprecated('Use updateTaskResponseDescriptor instead')
const UpdateTaskResponse$json = {
  '1': 'UpdateTaskResponse',
};

/// Descriptor for `UpdateTaskResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateTaskResponseDescriptor =
    $convert.base64Decode('ChJVcGRhdGVUYXNrUmVzcG9uc2U=');

@$core.Deprecated('Use taskHistoryItemDescriptor instead')
const TaskHistoryItem$json = {
  '1': 'TaskHistoryItem',
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
    {'1': 'action', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'action'},
    {'1': 'message', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'message'},
    {'1': 'field_name', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'fieldName'},
    {'1': 'old_value', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'oldValue'},
    {'1': 'new_value', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'newValue'},
    {'1': 'created_at', '3': 8, '4': 1, '5': 3, '8': {}, '10': 'createdAt'},
  ],
};

/// Descriptor for `TaskHistoryItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskHistoryItemDescriptor = $convert.base64Decode(
    'Cg9UYXNrSGlzdG9yeUl0ZW0SMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgd'
    'Cw0L3QuNC1UgJpZBJFCgR1c2VyGAIgASgLMg8ua2F0YW4uQmFzZVVzZXJCIJJBHTIb0YHQutC+'
    '0YDQviDQvtC/0LjRgdCw0L3QuNC1UgR1c2VyEjgKBmFjdGlvbhgDIAEoCUIgkkEdMhvRgdC60L'
    '7RgNC+INC+0L/QuNGB0LDQvdC40LVSBmFjdGlvbhI6CgdtZXNzYWdlGAQgASgJQiCSQR0yG9GB'
    '0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIHbWVzc2FnZRI/CgpmaWVsZF9uYW1lGAUgASgJQi'
    'CSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIJZmllbGROYW1lEj0KCW9sZF92YWx1'
    'ZRgGIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCG9sZFZhbHVlEj0KCW'
    '5ld192YWx1ZRgHIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSCG5ld1Zh'
    'bHVlEj8KCmNyZWF0ZWRfYXQYCCABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuN'
    'C1UgljcmVhdGVkQXQ=');

@$core.Deprecated('Use getTaskHistoryRequestDescriptor instead')
const GetTaskHistoryRequest$json = {
  '1': 'GetTaskHistoryRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'taskId'},
  ],
};

/// Descriptor for `GetTaskHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskHistoryRequestDescriptor = $convert.base64Decode(
    'ChVHZXRUYXNrSGlzdG9yeVJlcXVlc3QSOQoHdGFza19pZBgBIAEoA0IgkkEdMhvRgdC60L7RgN'
    'C+INC+0L/QuNGB0LDQvdC40LVSBnRhc2tJZA==');

@$core.Deprecated('Use getTaskHistoryResponseDescriptor instead')
const GetTaskHistoryResponse$json = {
  '1': 'GetTaskHistoryResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.TaskHistoryItem',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetTaskHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskHistoryResponseDescriptor =
    $convert.base64Decode(
        'ChZHZXRUYXNrSGlzdG9yeVJlc3BvbnNlEk4KBWl0ZW1zGAEgAygLMhYua2F0YW4uVGFza0hpc3'
        'RvcnlJdGVtQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFaXRlbXM=');

@$core.Deprecated('Use deleteTaskRequestDescriptor instead')
const DeleteTaskRequest$json = {
  '1': 'DeleteTaskRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTaskRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVUYXNrUmVxdWVzdBIwCgJpZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+INC+0L/QuN'
    'GB0LDQvdC40LVSAmlk');

@$core.Deprecated('Use getTaskCommentsRequestDescriptor instead')
const GetTaskCommentsRequest$json = {
  '1': 'GetTaskCommentsRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'taskId'},
  ],
};

/// Descriptor for `GetTaskCommentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskCommentsRequestDescriptor =
    $convert.base64Decode(
        'ChZHZXRUYXNrQ29tbWVudHNSZXF1ZXN0EjkKB3Rhc2tfaWQYASABKANCIJJBHTIb0YHQutC+0Y'
        'DQviDQvtC/0LjRgdCw0L3QuNC1UgZ0YXNrSWQ=');

@$core.Deprecated('Use getTaskCommentsResponseDescriptor instead')
const GetTaskCommentsResponse$json = {
  '1': 'GetTaskCommentsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.TaskComment',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetTaskCommentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskCommentsResponseDescriptor =
    $convert.base64Decode(
        'ChdHZXRUYXNrQ29tbWVudHNSZXNwb25zZRJKCgVpdGVtcxgBIAMoCzISLmthdGFuLlRhc2tDb2'
        '1tZW50QiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIFaXRlbXM=');

@$core.Deprecated('Use addTaskCommentRequestDescriptor instead')
const AddTaskCommentRequest$json = {
  '1': 'AddTaskCommentRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'taskId'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'content'},
  ],
};

/// Descriptor for `AddTaskCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTaskCommentRequestDescriptor = $convert.base64Decode(
    'ChVBZGRUYXNrQ29tbWVudFJlcXVlc3QSOQoHdGFza19pZBgBIAEoA0IgkkEdMhvRgdC60L7RgN'
    'C+INC+0L/QuNGB0LDQvdC40LVSBnRhc2tJZBI6Cgdjb250ZW50GAIgASgJQiCSQR0yG9GB0LrQ'
    'vtGA0L4g0L7Qv9C40YHQsNC90LjQtVIHY29udGVudA==');

@$core.Deprecated('Use deleteTaskCommentRequestDescriptor instead')
const DeleteTaskCommentRequest$json = {
  '1': 'DeleteTaskCommentRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTaskCommentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskCommentRequestDescriptor =
    $convert.base64Decode(
        'ChhEZWxldGVUYXNrQ29tbWVudFJlcXVlc3QSMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQvi'
        'DQvtC/0LjRgdCw0L3QuNC1UgJpZA==');

@$core.Deprecated('Use setTaskAssigneeRequestDescriptor instead')
const SetTaskAssigneeRequest$json = {
  '1': 'SetTaskAssigneeRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'taskId'},
    {'1': 'assignee_id', '3': 2, '4': 1, '5': 3, '8': {}, '10': 'assigneeId'},
  ],
};

/// Descriptor for `SetTaskAssigneeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setTaskAssigneeRequestDescriptor = $convert.base64Decode(
    'ChZTZXRUYXNrQXNzaWduZWVSZXF1ZXN0EjkKB3Rhc2tfaWQYASABKANCIJJBHTIb0YHQutC+0Y'
    'DQviDQvtC/0LjRgdCw0L3QuNC1UgZ0YXNrSWQSQQoLYXNzaWduZWVfaWQYAiABKANCIJJBHTIb'
    '0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1Ugphc3NpZ25lZUlk');

@$core.Deprecated('Use setTaskObserversRequestDescriptor instead')
const SetTaskObserversRequest$json = {
  '1': 'SetTaskObserversRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'taskId'},
    {'1': 'observer_ids', '3': 2, '4': 3, '5': 3, '8': {}, '10': 'observerIds'},
  ],
};

/// Descriptor for `SetTaskObserversRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setTaskObserversRequestDescriptor = $convert.base64Decode(
    'ChdTZXRUYXNrT2JzZXJ2ZXJzUmVxdWVzdBI5Cgd0YXNrX2lkGAEgASgDQiCSQR0yG9GB0LrQvt'
    'GA0L4g0L7Qv9C40YHQsNC90LjQtVIGdGFza0lkEkMKDG9ic2VydmVyX2lkcxgCIAMoA0IgkkEd'
    'MhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40LVSC29ic2VydmVySWRz');

@$core.Deprecated('Use setTaskTagsRequestDescriptor instead')
const SetTaskTagsRequest$json = {
  '1': 'SetTaskTagsRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'taskId'},
    {'1': 'tag_ids', '3': 2, '4': 3, '5': 3, '8': {}, '10': 'tagIds'},
  ],
};

/// Descriptor for `SetTaskTagsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setTaskTagsRequestDescriptor = $convert.base64Decode(
    'ChJTZXRUYXNrVGFnc1JlcXVlc3QSOQoHdGFza19pZBgBIAEoA0IgkkEdMhvRgdC60L7RgNC+IN'
    'C+0L/QuNGB0LDQvdC40LVSBnRhc2tJZBI5Cgd0YWdfaWRzGAIgAygDQiCSQR0yG9GB0LrQvtGA'
    '0L4g0L7Qv9C40YHQsNC90LjQtVIGdGFnSWRz');

@$core.Deprecated('Use taskTagLabelDescriptor instead')
const TaskTagLabel$json = {
  '1': 'TaskTagLabel',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'color', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'color'},
  ],
};

/// Descriptor for `TaskTagLabel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taskTagLabelDescriptor = $convert.base64Decode(
    'CgxUYXNrVGFnTGFiZWwSMAoCaWQYASABKANCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L'
    '3QuNC1UgJpZBI0CgRuYW1lGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQ'
    'tVIEbmFtZRI2CgVjb2xvchgDIAEoCUIgkkEdMhvRgdC60L7RgNC+INC+0L/QuNGB0LDQvdC40L'
    'VSBWNvbG9y');

@$core.Deprecated('Use getTaskLabelsRequestDescriptor instead')
const GetTaskLabelsRequest$json = {
  '1': 'GetTaskLabelsRequest',
  '2': [
    {'1': 'project_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'projectId'},
  ],
};

/// Descriptor for `GetTaskLabelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskLabelsRequestDescriptor = $convert.base64Decode(
    'ChRHZXRUYXNrTGFiZWxzUmVxdWVzdBI/Cgpwcm9qZWN0X2lkGAEgASgDQiCSQR0yG9GB0LrQvt'
    'GA0L4g0L7Qv9C40YHQsNC90LjQtVIJcHJvamVjdElk');

@$core.Deprecated('Use getTaskLabelsResponseDescriptor instead')
const GetTaskLabelsResponse$json = {
  '1': 'GetTaskLabelsResponse',
  '2': [
    {
      '1': 'items',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.katan.TaskTagLabel',
      '8': {},
      '10': 'items'
    },
  ],
};

/// Descriptor for `GetTaskLabelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTaskLabelsResponseDescriptor = $convert.base64Decode(
    'ChVHZXRUYXNrTGFiZWxzUmVzcG9uc2USSwoFaXRlbXMYASADKAsyEy5rYXRhbi5UYXNrVGFnTG'
    'FiZWxCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgVpdGVtcw==');

@$core.Deprecated('Use createTaskLabelRequestDescriptor instead')
const CreateTaskLabelRequest$json = {
  '1': 'CreateTaskLabelRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'color', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'color'},
    {'1': 'project_id', '3': 3, '4': 1, '5': 3, '8': {}, '10': 'projectId'},
  ],
};

/// Descriptor for `CreateTaskLabelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTaskLabelRequestDescriptor = $convert.base64Decode(
    'ChZDcmVhdGVUYXNrTGFiZWxSZXF1ZXN0EjQKBG5hbWUYASABKAlCIJJBHTIb0YHQutC+0YDQvi'
    'DQvtC/0LjRgdCw0L3QuNC1UgRuYW1lEjYKBWNvbG9yGAIgASgJQiCSQR0yG9GB0LrQvtGA0L4g'
    '0L7Qv9C40YHQsNC90LjQtVIFY29sb3ISPwoKcHJvamVjdF9pZBgDIAEoA0IgkkEdMhvRgdC60L'
    '7RgNC+INC+0L/QuNGB0LDQvdC40LVSCXByb2plY3RJZA==');

@$core.Deprecated('Use deleteTaskLabelRequestDescriptor instead')
const DeleteTaskLabelRequest$json = {
  '1': 'DeleteTaskLabelRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `DeleteTaskLabelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteTaskLabelRequestDescriptor =
    $convert.base64Decode(
        'ChZEZWxldGVUYXNrTGFiZWxSZXF1ZXN0EjAKAmlkGAEgASgDQiCSQR0yG9GB0LrQvtGA0L4g0L'
        '7Qv9C40YHQsNC90LjQtVICaWQ=');

@$core.Deprecated('Use runTaskWorkflowActionRequestDescriptor instead')
const RunTaskWorkflowActionRequest$json = {
  '1': 'RunTaskWorkflowActionRequest',
  '2': [
    {'1': 'task_id', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'taskId'},
    {'1': 'action', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'action'},
  ],
};

/// Descriptor for `RunTaskWorkflowActionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runTaskWorkflowActionRequestDescriptor =
    $convert.base64Decode(
        'ChxSdW5UYXNrV29ya2Zsb3dBY3Rpb25SZXF1ZXN0EjkKB3Rhc2tfaWQYASABKANCIJJBHTIb0Y'
        'HQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgZ0YXNrSWQSOAoGYWN0aW9uGAIgASgJQiCSQR0y'
        'G9GB0LrQvtGA0L4g0L7Qv9C40YHQsNC90LjQtVIGYWN0aW9u');

@$core.Deprecated('Use runTaskWorkflowActionResponseDescriptor instead')
const RunTaskWorkflowActionResponse$json = {
  '1': 'RunTaskWorkflowActionResponse',
  '2': [
    {
      '1': 'task',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.katan.TaskItem',
      '8': {},
      '10': 'task'
    },
    {'1': 'changed', '3': 2, '4': 1, '5': 8, '8': {}, '10': 'changed'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'message'},
  ],
};

/// Descriptor for `RunTaskWorkflowActionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runTaskWorkflowActionResponseDescriptor = $convert.base64Decode(
    'Ch1SdW5UYXNrV29ya2Zsb3dBY3Rpb25SZXNwb25zZRJFCgR0YXNrGAEgASgLMg8ua2F0YW4uVG'
    'Fza0l0ZW1CIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgR0YXNrEjoKB2NoYW5n'
    'ZWQYAiABKAhCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdjaGFuZ2VkEjoKB2'
    '1lc3NhZ2UYAyABKAlCIJJBHTIb0YHQutC+0YDQviDQvtC/0LjRgdCw0L3QuNC1UgdtZXNzYWdl');
