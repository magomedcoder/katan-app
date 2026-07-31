// This is a generated file - do not edit.
//
// Generated from file.proto.

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

class NodeFile extends $pb.GeneratedMessage {
  factory NodeFile({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  NodeFile._();

  factory NodeFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NodeFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeFile copyWith(void Function(NodeFile) updates) =>
      super.copyWith((message) => updates(message as NodeFile)) as NodeFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeFile create() => NodeFile._();
  @$core.override
  NodeFile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NodeFile getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeFile>(create);
  static NodeFile? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class CableFile extends $pb.GeneratedMessage {
  factory CableFile({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  CableFile._();

  factory CableFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CableFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CableFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CableFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CableFile copyWith(void Function(CableFile) updates) =>
      super.copyWith((message) => updates(message as CableFile)) as CableFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CableFile create() => CableFile._();
  @$core.override
  CableFile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CableFile getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CableFile>(create);
  static CableFile? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class TaskFile extends $pb.GeneratedMessage {
  factory TaskFile({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  TaskFile._();

  factory TaskFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskFile copyWith(void Function(TaskFile) updates) =>
      super.copyWith((message) => updates(message as TaskFile)) as TaskFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskFile create() => TaskFile._();
  @$core.override
  TaskFile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskFile getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskFile>(create);
  static TaskFile? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class TaskCommentFile extends $pb.GeneratedMessage {
  factory TaskCommentFile({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  TaskCommentFile._();

  factory TaskCommentFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskCommentFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskCommentFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskCommentFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskCommentFile copyWith(void Function(TaskCommentFile) updates) =>
      super.copyWith((message) => updates(message as TaskCommentFile))
          as TaskCommentFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskCommentFile create() => TaskCommentFile._();
  @$core.override
  TaskCommentFile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskCommentFile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TaskCommentFile>(create);
  static TaskCommentFile? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class ChatMessageFile extends $pb.GeneratedMessage {
  factory ChatMessageFile({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  ChatMessageFile._();

  factory ChatMessageFile.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatMessageFile.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatMessageFile',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatMessageFile clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatMessageFile copyWith(void Function(ChatMessageFile) updates) =>
      super.copyWith((message) => updates(message as ChatMessageFile))
          as ChatMessageFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatMessageFile create() => ChatMessageFile._();
  @$core.override
  ChatMessageFile createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatMessageFile getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatMessageFile>(create);
  static ChatMessageFile? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class File extends $pb.GeneratedMessage {
  factory File({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? url,
    $1.BaseUser? user,
    $fixnum.Int64? createdAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (url != null) result.url = url;
    if (user != null) result.user = user;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  File._();

  factory File.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory File.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'File',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..aOM<$1.BaseUser>(4, _omitFieldNames ? '' : 'user',
        subBuilder: $1.BaseUser.create)
    ..aInt64(5, _omitFieldNames ? '' : 'createdAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  File clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  File copyWith(void Function(File) updates) =>
      super.copyWith((message) => updates(message as File)) as File;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static File create() => File._();
  @$core.override
  File createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static File getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<File>(create);
  static File? _defaultInstance;

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
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => $_clearField(3);

  @$pb.TagNumber(4)
  $1.BaseUser get user => $_getN(3);
  @$pb.TagNumber(4)
  set user($1.BaseUser value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasUser() => $_has(3);
  @$pb.TagNumber(4)
  void clearUser() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.BaseUser ensureUser() => $_ensure(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => $_clearField(5);
}

enum GetFilesRequest_ObjectType {
  node,
  cable,
  task,
  taskComment,
  chatMessage,
  notSet
}

class GetFilesRequest extends $pb.GeneratedMessage {
  factory GetFilesRequest({
    $1.Pagination? pagination,
    NodeFile? node,
    CableFile? cable,
    TaskFile? task,
    TaskCommentFile? taskComment,
    ChatMessageFile? chatMessage,
  }) {
    final result = create();
    if (pagination != null) result.pagination = pagination;
    if (node != null) result.node = node;
    if (cable != null) result.cable = cable;
    if (task != null) result.task = task;
    if (taskComment != null) result.taskComment = taskComment;
    if (chatMessage != null) result.chatMessage = chatMessage;
    return result;
  }

  GetFilesRequest._();

  factory GetFilesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFilesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, GetFilesRequest_ObjectType>
      _GetFilesRequest_ObjectTypeByTag = {
    2: GetFilesRequest_ObjectType.node,
    3: GetFilesRequest_ObjectType.cable,
    4: GetFilesRequest_ObjectType.task,
    5: GetFilesRequest_ObjectType.taskComment,
    6: GetFilesRequest_ObjectType.chatMessage,
    0: GetFilesRequest_ObjectType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFilesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6])
    ..aOM<$1.Pagination>(1, _omitFieldNames ? '' : 'pagination',
        subBuilder: $1.Pagination.create)
    ..aOM<NodeFile>(2, _omitFieldNames ? '' : 'node',
        subBuilder: NodeFile.create)
    ..aOM<CableFile>(3, _omitFieldNames ? '' : 'cable',
        subBuilder: CableFile.create)
    ..aOM<TaskFile>(4, _omitFieldNames ? '' : 'task',
        subBuilder: TaskFile.create)
    ..aOM<TaskCommentFile>(5, _omitFieldNames ? '' : 'taskComment',
        subBuilder: TaskCommentFile.create)
    ..aOM<ChatMessageFile>(6, _omitFieldNames ? '' : 'chatMessage',
        subBuilder: ChatMessageFile.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFilesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFilesRequest copyWith(void Function(GetFilesRequest) updates) =>
      super.copyWith((message) => updates(message as GetFilesRequest))
          as GetFilesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFilesRequest create() => GetFilesRequest._();
  @$core.override
  GetFilesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFilesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFilesRequest>(create);
  static GetFilesRequest? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  GetFilesRequest_ObjectType whichObjectType() =>
      _GetFilesRequest_ObjectTypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearObjectType() => $_clearField($_whichOneof(0));

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
  NodeFile get node => $_getN(1);
  @$pb.TagNumber(2)
  set node(NodeFile value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasNode() => $_has(1);
  @$pb.TagNumber(2)
  void clearNode() => $_clearField(2);
  @$pb.TagNumber(2)
  NodeFile ensureNode() => $_ensure(1);

  @$pb.TagNumber(3)
  CableFile get cable => $_getN(2);
  @$pb.TagNumber(3)
  set cable(CableFile value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCable() => $_has(2);
  @$pb.TagNumber(3)
  void clearCable() => $_clearField(3);
  @$pb.TagNumber(3)
  CableFile ensureCable() => $_ensure(2);

  @$pb.TagNumber(4)
  TaskFile get task => $_getN(3);
  @$pb.TagNumber(4)
  set task(TaskFile value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTask() => $_has(3);
  @$pb.TagNumber(4)
  void clearTask() => $_clearField(4);
  @$pb.TagNumber(4)
  TaskFile ensureTask() => $_ensure(3);

  @$pb.TagNumber(5)
  TaskCommentFile get taskComment => $_getN(4);
  @$pb.TagNumber(5)
  set taskComment(TaskCommentFile value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasTaskComment() => $_has(4);
  @$pb.TagNumber(5)
  void clearTaskComment() => $_clearField(5);
  @$pb.TagNumber(5)
  TaskCommentFile ensureTaskComment() => $_ensure(4);

  @$pb.TagNumber(6)
  ChatMessageFile get chatMessage => $_getN(5);
  @$pb.TagNumber(6)
  set chatMessage(ChatMessageFile value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasChatMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearChatMessage() => $_clearField(6);
  @$pb.TagNumber(6)
  ChatMessageFile ensureChatMessage() => $_ensure(5);
}

class GetFilesResponse extends $pb.GeneratedMessage {
  factory GetFilesResponse({
    $fixnum.Int64? total,
    $core.Iterable<File>? items,
  }) {
    final result = create();
    if (total != null) result.total = total;
    if (items != null) result.items.addAll(items);
    return result;
  }

  GetFilesResponse._();

  factory GetFilesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetFilesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetFilesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'total')
    ..pPM<File>(2, _omitFieldNames ? '' : 'items', subBuilder: File.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFilesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFilesResponse copyWith(void Function(GetFilesResponse) updates) =>
      super.copyWith((message) => updates(message as GetFilesResponse))
          as GetFilesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFilesResponse create() => GetFilesResponse._();
  @$core.override
  GetFilesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetFilesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetFilesResponse>(create);
  static GetFilesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get total => $_getI64(0);
  @$pb.TagNumber(1)
  set total($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotal() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<File> get items => $_getList(1);
}

enum DeleteFileRequest_ObjectType {
  node,
  cable,
  task,
  taskComment,
  chatMessage,
  notSet
}

class DeleteFileRequest extends $pb.GeneratedMessage {
  factory DeleteFileRequest({
    NodeFile? node,
    CableFile? cable,
    TaskFile? task,
    TaskCommentFile? taskComment,
    ChatMessageFile? chatMessage,
  }) {
    final result = create();
    if (node != null) result.node = node;
    if (cable != null) result.cable = cable;
    if (task != null) result.task = task;
    if (taskComment != null) result.taskComment = taskComment;
    if (chatMessage != null) result.chatMessage = chatMessage;
    return result;
  }

  DeleteFileRequest._();

  factory DeleteFileRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteFileRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, DeleteFileRequest_ObjectType>
      _DeleteFileRequest_ObjectTypeByTag = {
    1: DeleteFileRequest_ObjectType.node,
    2: DeleteFileRequest_ObjectType.cable,
    3: DeleteFileRequest_ObjectType.task,
    4: DeleteFileRequest_ObjectType.taskComment,
    5: DeleteFileRequest_ObjectType.chatMessage,
    0: DeleteFileRequest_ObjectType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteFileRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<NodeFile>(1, _omitFieldNames ? '' : 'node',
        subBuilder: NodeFile.create)
    ..aOM<CableFile>(2, _omitFieldNames ? '' : 'cable',
        subBuilder: CableFile.create)
    ..aOM<TaskFile>(3, _omitFieldNames ? '' : 'task',
        subBuilder: TaskFile.create)
    ..aOM<TaskCommentFile>(4, _omitFieldNames ? '' : 'taskComment',
        subBuilder: TaskCommentFile.create)
    ..aOM<ChatMessageFile>(5, _omitFieldNames ? '' : 'chatMessage',
        subBuilder: ChatMessageFile.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteFileRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteFileRequest copyWith(void Function(DeleteFileRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteFileRequest))
          as DeleteFileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteFileRequest create() => DeleteFileRequest._();
  @$core.override
  DeleteFileRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteFileRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteFileRequest>(create);
  static DeleteFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  DeleteFileRequest_ObjectType whichObjectType() =>
      _DeleteFileRequest_ObjectTypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearObjectType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  NodeFile get node => $_getN(0);
  @$pb.TagNumber(1)
  set node(NodeFile value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearNode() => $_clearField(1);
  @$pb.TagNumber(1)
  NodeFile ensureNode() => $_ensure(0);

  @$pb.TagNumber(2)
  CableFile get cable => $_getN(1);
  @$pb.TagNumber(2)
  set cable(CableFile value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCable() => $_has(1);
  @$pb.TagNumber(2)
  void clearCable() => $_clearField(2);
  @$pb.TagNumber(2)
  CableFile ensureCable() => $_ensure(1);

  @$pb.TagNumber(3)
  TaskFile get task => $_getN(2);
  @$pb.TagNumber(3)
  set task(TaskFile value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTask() => $_has(2);
  @$pb.TagNumber(3)
  void clearTask() => $_clearField(3);
  @$pb.TagNumber(3)
  TaskFile ensureTask() => $_ensure(2);

  @$pb.TagNumber(4)
  TaskCommentFile get taskComment => $_getN(3);
  @$pb.TagNumber(4)
  set taskComment(TaskCommentFile value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTaskComment() => $_has(3);
  @$pb.TagNumber(4)
  void clearTaskComment() => $_clearField(4);
  @$pb.TagNumber(4)
  TaskCommentFile ensureTaskComment() => $_ensure(3);

  @$pb.TagNumber(5)
  ChatMessageFile get chatMessage => $_getN(4);
  @$pb.TagNumber(5)
  set chatMessage(ChatMessageFile value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasChatMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearChatMessage() => $_clearField(5);
  @$pb.TagNumber(5)
  ChatMessageFile ensureChatMessage() => $_ensure(4);
}

class DeleteFileResponse extends $pb.GeneratedMessage {
  factory DeleteFileResponse() => create();

  DeleteFileResponse._();

  factory DeleteFileResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteFileResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteFileResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteFileResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteFileResponse copyWith(void Function(DeleteFileResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteFileResponse))
          as DeleteFileResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteFileResponse create() => DeleteFileResponse._();
  @$core.override
  DeleteFileResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteFileResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteFileResponse>(create);
  static DeleteFileResponse? _defaultInstance;
}

class UploadIconRequest extends $pb.GeneratedMessage {
  factory UploadIconRequest({
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

  UploadIconRequest._();

  factory UploadIconRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadIconRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadIconRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'mimeType')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadIconRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadIconRequest copyWith(void Function(UploadIconRequest) updates) =>
      super.copyWith((message) => updates(message as UploadIconRequest))
          as UploadIconRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadIconRequest create() => UploadIconRequest._();
  @$core.override
  UploadIconRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UploadIconRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadIconRequest>(create);
  static UploadIconRequest? _defaultInstance;

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

class UploadIconResponse extends $pb.GeneratedMessage {
  factory UploadIconResponse({
    $core.String? url,
  }) {
    final result = create();
    if (url != null) result.url = url;
    return result;
  }

  UploadIconResponse._();

  factory UploadIconResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UploadIconResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UploadIconResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadIconResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UploadIconResponse copyWith(void Function(UploadIconResponse) updates) =>
      super.copyWith((message) => updates(message as UploadIconResponse))
          as UploadIconResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadIconResponse create() => UploadIconResponse._();
  @$core.override
  UploadIconResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UploadIconResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UploadIconResponse>(create);
  static UploadIconResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
