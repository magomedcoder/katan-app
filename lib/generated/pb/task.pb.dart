// This is a generated file - do not edit.
//
// Generated from task.proto.

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

class TaskWorkPause extends $pb.GeneratedMessage {
  factory TaskWorkPause({
    $fixnum.Int64? id,
    $fixnum.Int64? pausedAt,
    $fixnum.Int64? resumedAt,
    $fixnum.Int64? workSecondsBefore,
    $1.BaseUser? user,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (pausedAt != null) result.pausedAt = pausedAt;
    if (resumedAt != null) result.resumedAt = resumedAt;
    if (workSecondsBefore != null) result.workSecondsBefore = workSecondsBefore;
    if (user != null) result.user = user;
    return result;
  }

  TaskWorkPause._();

  factory TaskWorkPause.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskWorkPause.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskWorkPause',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'pausedAt')
    ..aInt64(3, _omitFieldNames ? '' : 'resumedAt')
    ..aInt64(4, _omitFieldNames ? '' : 'workSecondsBefore')
    ..aOM<$1.BaseUser>(5, _omitFieldNames ? '' : 'user',
        subBuilder: $1.BaseUser.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskWorkPause clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskWorkPause copyWith(void Function(TaskWorkPause) updates) =>
      super.copyWith((message) => updates(message as TaskWorkPause))
          as TaskWorkPause;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskWorkPause create() => TaskWorkPause._();
  @$core.override
  TaskWorkPause createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskWorkPause getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TaskWorkPause>(create);
  static TaskWorkPause? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get pausedAt => $_getI64(1);
  @$pb.TagNumber(2)
  set pausedAt($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPausedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearPausedAt() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get resumedAt => $_getI64(2);
  @$pb.TagNumber(3)
  set resumedAt($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasResumedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearResumedAt() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get workSecondsBefore => $_getI64(3);
  @$pb.TagNumber(4)
  set workSecondsBefore($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWorkSecondsBefore() => $_has(3);
  @$pb.TagNumber(4)
  void clearWorkSecondsBefore() => $_clearField(4);

  @$pb.TagNumber(5)
  $1.BaseUser get user => $_getN(4);
  @$pb.TagNumber(5)
  set user($1.BaseUser value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasUser() => $_has(4);
  @$pb.TagNumber(5)
  void clearUser() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.BaseUser ensureUser() => $_ensure(4);
}

class TaskItem extends $pb.GeneratedMessage {
  factory TaskItem({
    $fixnum.Int64? id,
    $core.String? title,
    $core.String? description,
    $1.BaseUser? creator,
    $1.BaseUser? assignee,
    $core.Iterable<$1.BaseUser>? observers,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? updatedAt,
    $fixnum.Int64? projectId,
    $fixnum.Int64? columnId,
    $core.int? position,
    $core.String? projectTitle,
    $fixnum.Int64? dueAt,
    $core.Iterable<$1.Tag>? tags,
    $core.bool? isOverdue,
    $core.int? objectType,
    $fixnum.Int64? objectId,
    $core.String? objectName,
    $core.String? columnTitle,
    $core.String? status,
    $fixnum.Int64? workStartedAt,
    $fixnum.Int64? timeSpentSeconds,
    $core.Iterable<TaskWorkPause>? workPauses,
    $core.bool? isPaused,
    $fixnum.Int64? parentId,
    $core.String? parentTitle,
    $core.int? subtaskCount,
    $core.int? subtaskCompletedCount,
    $core.Iterable<TaskItem>? subtasks,
    $core.int? storyPoints,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    if (description != null) result.description = description;
    if (creator != null) result.creator = creator;
    if (assignee != null) result.assignee = assignee;
    if (observers != null) result.observers.addAll(observers);
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    if (projectId != null) result.projectId = projectId;
    if (columnId != null) result.columnId = columnId;
    if (position != null) result.position = position;
    if (projectTitle != null) result.projectTitle = projectTitle;
    if (dueAt != null) result.dueAt = dueAt;
    if (tags != null) result.tags.addAll(tags);
    if (isOverdue != null) result.isOverdue = isOverdue;
    if (objectType != null) result.objectType = objectType;
    if (objectId != null) result.objectId = objectId;
    if (objectName != null) result.objectName = objectName;
    if (columnTitle != null) result.columnTitle = columnTitle;
    if (status != null) result.status = status;
    if (workStartedAt != null) result.workStartedAt = workStartedAt;
    if (timeSpentSeconds != null) result.timeSpentSeconds = timeSpentSeconds;
    if (workPauses != null) result.workPauses.addAll(workPauses);
    if (isPaused != null) result.isPaused = isPaused;
    if (parentId != null) result.parentId = parentId;
    if (parentTitle != null) result.parentTitle = parentTitle;
    if (subtaskCount != null) result.subtaskCount = subtaskCount;
    if (subtaskCompletedCount != null)
      result.subtaskCompletedCount = subtaskCompletedCount;
    if (subtasks != null) result.subtasks.addAll(subtasks);
    if (storyPoints != null) result.storyPoints = storyPoints;
    return result;
  }

  TaskItem._();

  factory TaskItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOM<$1.BaseUser>(4, _omitFieldNames ? '' : 'creator',
        subBuilder: $1.BaseUser.create)
    ..aOM<$1.BaseUser>(5, _omitFieldNames ? '' : 'assignee',
        subBuilder: $1.BaseUser.create)
    ..pPM<$1.BaseUser>(6, _omitFieldNames ? '' : 'observers',
        subBuilder: $1.BaseUser.create)
    ..aInt64(7, _omitFieldNames ? '' : 'createdAt')
    ..aInt64(8, _omitFieldNames ? '' : 'updatedAt')
    ..aInt64(9, _omitFieldNames ? '' : 'projectId')
    ..aInt64(10, _omitFieldNames ? '' : 'columnId')
    ..aI(11, _omitFieldNames ? '' : 'position')
    ..aOS(12, _omitFieldNames ? '' : 'projectTitle')
    ..aInt64(13, _omitFieldNames ? '' : 'dueAt')
    ..pPM<$1.Tag>(14, _omitFieldNames ? '' : 'tags', subBuilder: $1.Tag.create)
    ..aOB(15, _omitFieldNames ? '' : 'isOverdue')
    ..aI(16, _omitFieldNames ? '' : 'objectType')
    ..aInt64(17, _omitFieldNames ? '' : 'objectId')
    ..aOS(18, _omitFieldNames ? '' : 'objectName')
    ..aOS(19, _omitFieldNames ? '' : 'columnTitle')
    ..aOS(20, _omitFieldNames ? '' : 'status')
    ..aInt64(21, _omitFieldNames ? '' : 'workStartedAt')
    ..aInt64(22, _omitFieldNames ? '' : 'timeSpentSeconds')
    ..pPM<TaskWorkPause>(23, _omitFieldNames ? '' : 'workPauses',
        subBuilder: TaskWorkPause.create)
    ..aOB(24, _omitFieldNames ? '' : 'isPaused')
    ..aInt64(25, _omitFieldNames ? '' : 'parentId')
    ..aOS(26, _omitFieldNames ? '' : 'parentTitle')
    ..aI(27, _omitFieldNames ? '' : 'subtaskCount')
    ..aI(28, _omitFieldNames ? '' : 'subtaskCompletedCount')
    ..pPM<TaskItem>(29, _omitFieldNames ? '' : 'subtasks',
        subBuilder: TaskItem.create)
    ..aI(30, _omitFieldNames ? '' : 'storyPoints')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskItem copyWith(void Function(TaskItem) updates) =>
      super.copyWith((message) => updates(message as TaskItem)) as TaskItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskItem create() => TaskItem._();
  @$core.override
  TaskItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskItem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TaskItem>(create);
  static TaskItem? _defaultInstance;

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
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $1.BaseUser get creator => $_getN(3);
  @$pb.TagNumber(4)
  set creator($1.BaseUser value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCreator() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreator() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.BaseUser ensureCreator() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.BaseUser get assignee => $_getN(4);
  @$pb.TagNumber(5)
  set assignee($1.BaseUser value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAssignee() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssignee() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.BaseUser ensureAssignee() => $_ensure(4);

  @$pb.TagNumber(6)
  $pb.PbList<$1.BaseUser> get observers => $_getList(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get createdAt => $_getI64(6);
  @$pb.TagNumber(7)
  set createdAt($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get updatedAt => $_getI64(7);
  @$pb.TagNumber(8)
  set updatedAt($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get projectId => $_getI64(8);
  @$pb.TagNumber(9)
  set projectId($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasProjectId() => $_has(8);
  @$pb.TagNumber(9)
  void clearProjectId() => $_clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get columnId => $_getI64(9);
  @$pb.TagNumber(10)
  set columnId($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasColumnId() => $_has(9);
  @$pb.TagNumber(10)
  void clearColumnId() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get position => $_getIZ(10);
  @$pb.TagNumber(11)
  set position($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPosition() => $_has(10);
  @$pb.TagNumber(11)
  void clearPosition() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get projectTitle => $_getSZ(11);
  @$pb.TagNumber(12)
  set projectTitle($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasProjectTitle() => $_has(11);
  @$pb.TagNumber(12)
  void clearProjectTitle() => $_clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get dueAt => $_getI64(12);
  @$pb.TagNumber(13)
  set dueAt($fixnum.Int64 value) => $_setInt64(12, value);
  @$pb.TagNumber(13)
  $core.bool hasDueAt() => $_has(12);
  @$pb.TagNumber(13)
  void clearDueAt() => $_clearField(13);

  @$pb.TagNumber(14)
  $pb.PbList<$1.Tag> get tags => $_getList(13);

  @$pb.TagNumber(15)
  $core.bool get isOverdue => $_getBF(14);
  @$pb.TagNumber(15)
  set isOverdue($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasIsOverdue() => $_has(14);
  @$pb.TagNumber(15)
  void clearIsOverdue() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get objectType => $_getIZ(15);
  @$pb.TagNumber(16)
  set objectType($core.int value) => $_setSignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasObjectType() => $_has(15);
  @$pb.TagNumber(16)
  void clearObjectType() => $_clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get objectId => $_getI64(16);
  @$pb.TagNumber(17)
  set objectId($fixnum.Int64 value) => $_setInt64(16, value);
  @$pb.TagNumber(17)
  $core.bool hasObjectId() => $_has(16);
  @$pb.TagNumber(17)
  void clearObjectId() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get objectName => $_getSZ(17);
  @$pb.TagNumber(18)
  set objectName($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasObjectName() => $_has(17);
  @$pb.TagNumber(18)
  void clearObjectName() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get columnTitle => $_getSZ(18);
  @$pb.TagNumber(19)
  set columnTitle($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasColumnTitle() => $_has(18);
  @$pb.TagNumber(19)
  void clearColumnTitle() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get status => $_getSZ(19);
  @$pb.TagNumber(20)
  set status($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasStatus() => $_has(19);
  @$pb.TagNumber(20)
  void clearStatus() => $_clearField(20);

  @$pb.TagNumber(21)
  $fixnum.Int64 get workStartedAt => $_getI64(20);
  @$pb.TagNumber(21)
  set workStartedAt($fixnum.Int64 value) => $_setInt64(20, value);
  @$pb.TagNumber(21)
  $core.bool hasWorkStartedAt() => $_has(20);
  @$pb.TagNumber(21)
  void clearWorkStartedAt() => $_clearField(21);

  @$pb.TagNumber(22)
  $fixnum.Int64 get timeSpentSeconds => $_getI64(21);
  @$pb.TagNumber(22)
  set timeSpentSeconds($fixnum.Int64 value) => $_setInt64(21, value);
  @$pb.TagNumber(22)
  $core.bool hasTimeSpentSeconds() => $_has(21);
  @$pb.TagNumber(22)
  void clearTimeSpentSeconds() => $_clearField(22);

  @$pb.TagNumber(23)
  $pb.PbList<TaskWorkPause> get workPauses => $_getList(22);

  @$pb.TagNumber(24)
  $core.bool get isPaused => $_getBF(23);
  @$pb.TagNumber(24)
  set isPaused($core.bool value) => $_setBool(23, value);
  @$pb.TagNumber(24)
  $core.bool hasIsPaused() => $_has(23);
  @$pb.TagNumber(24)
  void clearIsPaused() => $_clearField(24);

  @$pb.TagNumber(25)
  $fixnum.Int64 get parentId => $_getI64(24);
  @$pb.TagNumber(25)
  set parentId($fixnum.Int64 value) => $_setInt64(24, value);
  @$pb.TagNumber(25)
  $core.bool hasParentId() => $_has(24);
  @$pb.TagNumber(25)
  void clearParentId() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get parentTitle => $_getSZ(25);
  @$pb.TagNumber(26)
  set parentTitle($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasParentTitle() => $_has(25);
  @$pb.TagNumber(26)
  void clearParentTitle() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.int get subtaskCount => $_getIZ(26);
  @$pb.TagNumber(27)
  set subtaskCount($core.int value) => $_setSignedInt32(26, value);
  @$pb.TagNumber(27)
  $core.bool hasSubtaskCount() => $_has(26);
  @$pb.TagNumber(27)
  void clearSubtaskCount() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.int get subtaskCompletedCount => $_getIZ(27);
  @$pb.TagNumber(28)
  set subtaskCompletedCount($core.int value) => $_setSignedInt32(27, value);
  @$pb.TagNumber(28)
  $core.bool hasSubtaskCompletedCount() => $_has(27);
  @$pb.TagNumber(28)
  void clearSubtaskCompletedCount() => $_clearField(28);

  @$pb.TagNumber(29)
  $pb.PbList<TaskItem> get subtasks => $_getList(28);

  @$pb.TagNumber(30)
  $core.int get storyPoints => $_getIZ(29);
  @$pb.TagNumber(30)
  set storyPoints($core.int value) => $_setSignedInt32(29, value);
  @$pb.TagNumber(30)
  $core.bool hasStoryPoints() => $_has(29);
  @$pb.TagNumber(30)
  void clearStoryPoints() => $_clearField(30);
}

class TaskComment extends $pb.GeneratedMessage {
  factory TaskComment({
    $fixnum.Int64? id,
    $fixnum.Int64? taskId,
    $1.BaseUser? author,
    $core.String? content,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? updatedAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (taskId != null) result.taskId = taskId;
    if (author != null) result.author = author;
    if (content != null) result.content = content;
    if (createdAt != null) result.createdAt = createdAt;
    if (updatedAt != null) result.updatedAt = updatedAt;
    return result;
  }

  TaskComment._();

  factory TaskComment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskComment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskComment',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'taskId')
    ..aOM<$1.BaseUser>(3, _omitFieldNames ? '' : 'author',
        subBuilder: $1.BaseUser.create)
    ..aOS(4, _omitFieldNames ? '' : 'content')
    ..aInt64(5, _omitFieldNames ? '' : 'createdAt')
    ..aInt64(6, _omitFieldNames ? '' : 'updatedAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskComment clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskComment copyWith(void Function(TaskComment) updates) =>
      super.copyWith((message) => updates(message as TaskComment))
          as TaskComment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskComment create() => TaskComment._();
  @$core.override
  TaskComment createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskComment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TaskComment>(create);
  static TaskComment? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get taskId => $_getI64(1);
  @$pb.TagNumber(2)
  set taskId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTaskId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTaskId() => $_clearField(2);

  @$pb.TagNumber(3)
  $1.BaseUser get author => $_getN(2);
  @$pb.TagNumber(3)
  set author($1.BaseUser value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAuthor() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthor() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.BaseUser ensureAuthor() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get content => $_getSZ(3);
  @$pb.TagNumber(4)
  set content($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasContent() => $_has(3);
  @$pb.TagNumber(4)
  void clearContent() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get updatedAt => $_getI64(5);
  @$pb.TagNumber(6)
  set updatedAt($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => $_clearField(6);
}

class CreateTaskRequest extends $pb.GeneratedMessage {
  factory CreateTaskRequest({
    $core.String? title,
    $core.String? description,
    $fixnum.Int64? creatorId,
    $fixnum.Int64? assigneeId,
    $core.Iterable<$fixnum.Int64>? observerIds,
    $fixnum.Int64? projectId,
    $fixnum.Int64? columnId,
    $fixnum.Int64? dueAt,
    $core.Iterable<$fixnum.Int64>? tagIds,
    $core.int? objectType,
    $fixnum.Int64? objectId,
    $fixnum.Int64? parentId,
    $core.int? storyPoints,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (description != null) result.description = description;
    if (creatorId != null) result.creatorId = creatorId;
    if (assigneeId != null) result.assigneeId = assigneeId;
    if (observerIds != null) result.observerIds.addAll(observerIds);
    if (projectId != null) result.projectId = projectId;
    if (columnId != null) result.columnId = columnId;
    if (dueAt != null) result.dueAt = dueAt;
    if (tagIds != null) result.tagIds.addAll(tagIds);
    if (objectType != null) result.objectType = objectType;
    if (objectId != null) result.objectId = objectId;
    if (parentId != null) result.parentId = parentId;
    if (storyPoints != null) result.storyPoints = storyPoints;
    return result;
  }

  CreateTaskRequest._();

  factory CreateTaskRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateTaskRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateTaskRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aInt64(3, _omitFieldNames ? '' : 'creatorId')
    ..aInt64(4, _omitFieldNames ? '' : 'assigneeId')
    ..p<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'observerIds', $pb.PbFieldType.K6)
    ..aInt64(6, _omitFieldNames ? '' : 'projectId')
    ..aInt64(7, _omitFieldNames ? '' : 'columnId')
    ..aInt64(8, _omitFieldNames ? '' : 'dueAt')
    ..p<$fixnum.Int64>(9, _omitFieldNames ? '' : 'tagIds', $pb.PbFieldType.K6)
    ..aI(10, _omitFieldNames ? '' : 'objectType')
    ..aInt64(11, _omitFieldNames ? '' : 'objectId')
    ..aInt64(12, _omitFieldNames ? '' : 'parentId')
    ..aI(13, _omitFieldNames ? '' : 'storyPoints')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTaskRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTaskRequest copyWith(void Function(CreateTaskRequest) updates) =>
      super.copyWith((message) => updates(message as CreateTaskRequest))
          as CreateTaskRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTaskRequest create() => CreateTaskRequest._();
  @$core.override
  CreateTaskRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateTaskRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateTaskRequest>(create);
  static CreateTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get creatorId => $_getI64(2);
  @$pb.TagNumber(3)
  set creatorId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCreatorId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatorId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get assigneeId => $_getI64(3);
  @$pb.TagNumber(4)
  set assigneeId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAssigneeId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssigneeId() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$fixnum.Int64> get observerIds => $_getList(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get projectId => $_getI64(5);
  @$pb.TagNumber(6)
  set projectId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasProjectId() => $_has(5);
  @$pb.TagNumber(6)
  void clearProjectId() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get columnId => $_getI64(6);
  @$pb.TagNumber(7)
  set columnId($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasColumnId() => $_has(6);
  @$pb.TagNumber(7)
  void clearColumnId() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get dueAt => $_getI64(7);
  @$pb.TagNumber(8)
  set dueAt($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDueAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearDueAt() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$fixnum.Int64> get tagIds => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get objectType => $_getIZ(9);
  @$pb.TagNumber(10)
  set objectType($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasObjectType() => $_has(9);
  @$pb.TagNumber(10)
  void clearObjectType() => $_clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get objectId => $_getI64(10);
  @$pb.TagNumber(11)
  set objectId($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasObjectId() => $_has(10);
  @$pb.TagNumber(11)
  void clearObjectId() => $_clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get parentId => $_getI64(11);
  @$pb.TagNumber(12)
  set parentId($fixnum.Int64 value) => $_setInt64(11, value);
  @$pb.TagNumber(12)
  $core.bool hasParentId() => $_has(11);
  @$pb.TagNumber(12)
  void clearParentId() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get storyPoints => $_getIZ(12);
  @$pb.TagNumber(13)
  set storyPoints($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasStoryPoints() => $_has(12);
  @$pb.TagNumber(13)
  void clearStoryPoints() => $_clearField(13);
}

class CreateTaskResponse extends $pb.GeneratedMessage {
  factory CreateTaskResponse({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  CreateTaskResponse._();

  factory CreateTaskResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateTaskResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateTaskResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTaskResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTaskResponse copyWith(void Function(CreateTaskResponse) updates) =>
      super.copyWith((message) => updates(message as CreateTaskResponse))
          as CreateTaskResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTaskResponse create() => CreateTaskResponse._();
  @$core.override
  CreateTaskResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateTaskResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateTaskResponse>(create);
  static CreateTaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class GetTasksRequest extends $pb.GeneratedMessage {
  factory GetTasksRequest({
    $1.Pagination? pagination,
    $core.String? query,
    $fixnum.Int64? projectId,
    $core.String? status,
    $fixnum.Int64? parentId,
  }) {
    final result = create();
    if (pagination != null) result.pagination = pagination;
    if (query != null) result.query = query;
    if (projectId != null) result.projectId = projectId;
    if (status != null) result.status = status;
    if (parentId != null) result.parentId = parentId;
    return result;
  }

  GetTasksRequest._();

  factory GetTasksRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTasksRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTasksRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.Pagination>(1, _omitFieldNames ? '' : 'pagination',
        subBuilder: $1.Pagination.create)
    ..aOS(2, _omitFieldNames ? '' : 'query')
    ..aInt64(3, _omitFieldNames ? '' : 'projectId')
    ..aOS(4, _omitFieldNames ? '' : 'status')
    ..aInt64(5, _omitFieldNames ? '' : 'parentId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTasksRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTasksRequest copyWith(void Function(GetTasksRequest) updates) =>
      super.copyWith((message) => updates(message as GetTasksRequest))
          as GetTasksRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTasksRequest create() => GetTasksRequest._();
  @$core.override
  GetTasksRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTasksRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTasksRequest>(create);
  static GetTasksRequest? _defaultInstance;

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
  $core.String get query => $_getSZ(1);
  @$pb.TagNumber(2)
  set query($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQuery() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuery() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get projectId => $_getI64(2);
  @$pb.TagNumber(3)
  set projectId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProjectId() => $_has(2);
  @$pb.TagNumber(3)
  void clearProjectId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get status => $_getSZ(3);
  @$pb.TagNumber(4)
  set status($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get parentId => $_getI64(4);
  @$pb.TagNumber(5)
  set parentId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasParentId() => $_has(4);
  @$pb.TagNumber(5)
  void clearParentId() => $_clearField(5);
}

class GetTasksResponse extends $pb.GeneratedMessage {
  factory GetTasksResponse({
    $fixnum.Int64? total,
    $core.Iterable<TaskItem>? items,
  }) {
    final result = create();
    if (total != null) result.total = total;
    if (items != null) result.items.addAll(items);
    return result;
  }

  GetTasksResponse._();

  factory GetTasksResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTasksResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTasksResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'total')
    ..pPM<TaskItem>(2, _omitFieldNames ? '' : 'items',
        subBuilder: TaskItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTasksResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTasksResponse copyWith(void Function(GetTasksResponse) updates) =>
      super.copyWith((message) => updates(message as GetTasksResponse))
          as GetTasksResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTasksResponse create() => GetTasksResponse._();
  @$core.override
  GetTasksResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTasksResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTasksResponse>(create);
  static GetTasksResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get total => $_getI64(0);
  @$pb.TagNumber(1)
  set total($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotal() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<TaskItem> get items => $_getList(1);
}

class GetTaskRequest extends $pb.GeneratedMessage {
  factory GetTaskRequest({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  GetTaskRequest._();

  factory GetTaskRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTaskRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTaskRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskRequest copyWith(void Function(GetTaskRequest) updates) =>
      super.copyWith((message) => updates(message as GetTaskRequest))
          as GetTaskRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskRequest create() => GetTaskRequest._();
  @$core.override
  GetTaskRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTaskRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTaskRequest>(create);
  static GetTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class GetTaskResponse extends $pb.GeneratedMessage {
  factory GetTaskResponse({
    TaskItem? task,
  }) {
    final result = create();
    if (task != null) result.task = task;
    return result;
  }

  GetTaskResponse._();

  factory GetTaskResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTaskResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTaskResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<TaskItem>(1, _omitFieldNames ? '' : 'task',
        subBuilder: TaskItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskResponse copyWith(void Function(GetTaskResponse) updates) =>
      super.copyWith((message) => updates(message as GetTaskResponse))
          as GetTaskResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskResponse create() => GetTaskResponse._();
  @$core.override
  GetTaskResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTaskResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTaskResponse>(create);
  static GetTaskResponse? _defaultInstance;

  @$pb.TagNumber(1)
  TaskItem get task => $_getN(0);
  @$pb.TagNumber(1)
  set task(TaskItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTask() => $_has(0);
  @$pb.TagNumber(1)
  void clearTask() => $_clearField(1);
  @$pb.TagNumber(1)
  TaskItem ensureTask() => $_ensure(0);
}

class UpdateTaskRequest extends $pb.GeneratedMessage {
  factory UpdateTaskRequest({
    $fixnum.Int64? id,
    $core.String? title,
    $core.String? description,
    $fixnum.Int64? creatorId,
    $fixnum.Int64? assigneeId,
    $core.Iterable<$fixnum.Int64>? observerIds,
    $fixnum.Int64? columnId,
    $fixnum.Int64? dueAt,
    $core.Iterable<$fixnum.Int64>? tagIds,
    $core.int? storyPoints,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (title != null) result.title = title;
    if (description != null) result.description = description;
    if (creatorId != null) result.creatorId = creatorId;
    if (assigneeId != null) result.assigneeId = assigneeId;
    if (observerIds != null) result.observerIds.addAll(observerIds);
    if (columnId != null) result.columnId = columnId;
    if (dueAt != null) result.dueAt = dueAt;
    if (tagIds != null) result.tagIds.addAll(tagIds);
    if (storyPoints != null) result.storyPoints = storyPoints;
    return result;
  }

  UpdateTaskRequest._();

  factory UpdateTaskRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateTaskRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateTaskRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aInt64(4, _omitFieldNames ? '' : 'creatorId')
    ..aInt64(5, _omitFieldNames ? '' : 'assigneeId')
    ..p<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'observerIds', $pb.PbFieldType.K6)
    ..aInt64(7, _omitFieldNames ? '' : 'columnId')
    ..aInt64(8, _omitFieldNames ? '' : 'dueAt')
    ..p<$fixnum.Int64>(9, _omitFieldNames ? '' : 'tagIds', $pb.PbFieldType.K6)
    ..aI(10, _omitFieldNames ? '' : 'storyPoints')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateTaskRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateTaskRequest copyWith(void Function(UpdateTaskRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateTaskRequest))
          as UpdateTaskRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTaskRequest create() => UpdateTaskRequest._();
  @$core.override
  UpdateTaskRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateTaskRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateTaskRequest>(create);
  static UpdateTaskRequest? _defaultInstance;

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
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get creatorId => $_getI64(3);
  @$pb.TagNumber(4)
  set creatorId($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCreatorId() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatorId() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get assigneeId => $_getI64(4);
  @$pb.TagNumber(5)
  set assigneeId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAssigneeId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssigneeId() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$fixnum.Int64> get observerIds => $_getList(5);

  @$pb.TagNumber(7)
  $fixnum.Int64 get columnId => $_getI64(6);
  @$pb.TagNumber(7)
  set columnId($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasColumnId() => $_has(6);
  @$pb.TagNumber(7)
  void clearColumnId() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get dueAt => $_getI64(7);
  @$pb.TagNumber(8)
  set dueAt($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDueAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearDueAt() => $_clearField(8);

  @$pb.TagNumber(9)
  $pb.PbList<$fixnum.Int64> get tagIds => $_getList(8);

  @$pb.TagNumber(10)
  $core.int get storyPoints => $_getIZ(9);
  @$pb.TagNumber(10)
  set storyPoints($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasStoryPoints() => $_has(9);
  @$pb.TagNumber(10)
  void clearStoryPoints() => $_clearField(10);
}

class UpdateTaskResponse extends $pb.GeneratedMessage {
  factory UpdateTaskResponse() => create();

  UpdateTaskResponse._();

  factory UpdateTaskResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateTaskResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateTaskResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateTaskResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateTaskResponse copyWith(void Function(UpdateTaskResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateTaskResponse))
          as UpdateTaskResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateTaskResponse create() => UpdateTaskResponse._();
  @$core.override
  UpdateTaskResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UpdateTaskResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateTaskResponse>(create);
  static UpdateTaskResponse? _defaultInstance;
}

class TaskHistoryItem extends $pb.GeneratedMessage {
  factory TaskHistoryItem({
    $fixnum.Int64? id,
    $1.BaseUser? user,
    $core.String? action,
    $core.String? message,
    $core.String? fieldName,
    $core.String? oldValue,
    $core.String? newValue,
    $fixnum.Int64? createdAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (user != null) result.user = user;
    if (action != null) result.action = action;
    if (message != null) result.message = message;
    if (fieldName != null) result.fieldName = fieldName;
    if (oldValue != null) result.oldValue = oldValue;
    if (newValue != null) result.newValue = newValue;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  TaskHistoryItem._();

  factory TaskHistoryItem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskHistoryItem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskHistoryItem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOM<$1.BaseUser>(2, _omitFieldNames ? '' : 'user',
        subBuilder: $1.BaseUser.create)
    ..aOS(3, _omitFieldNames ? '' : 'action')
    ..aOS(4, _omitFieldNames ? '' : 'message')
    ..aOS(5, _omitFieldNames ? '' : 'fieldName')
    ..aOS(6, _omitFieldNames ? '' : 'oldValue')
    ..aOS(7, _omitFieldNames ? '' : 'newValue')
    ..aInt64(8, _omitFieldNames ? '' : 'createdAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskHistoryItem clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskHistoryItem copyWith(void Function(TaskHistoryItem) updates) =>
      super.copyWith((message) => updates(message as TaskHistoryItem))
          as TaskHistoryItem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskHistoryItem create() => TaskHistoryItem._();
  @$core.override
  TaskHistoryItem createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskHistoryItem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TaskHistoryItem>(create);
  static TaskHistoryItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.BaseUser get user => $_getN(1);
  @$pb.TagNumber(2)
  set user($1.BaseUser value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.BaseUser ensureUser() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get action => $_getSZ(2);
  @$pb.TagNumber(3)
  set action($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAction() => $_has(2);
  @$pb.TagNumber(3)
  void clearAction() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get fieldName => $_getSZ(4);
  @$pb.TagNumber(5)
  set fieldName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFieldName() => $_has(4);
  @$pb.TagNumber(5)
  void clearFieldName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get oldValue => $_getSZ(5);
  @$pb.TagNumber(6)
  set oldValue($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasOldValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearOldValue() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get newValue => $_getSZ(6);
  @$pb.TagNumber(7)
  set newValue($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasNewValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearNewValue() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get createdAt => $_getI64(7);
  @$pb.TagNumber(8)
  set createdAt($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreatedAt() => $_clearField(8);
}

class GetTaskHistoryRequest extends $pb.GeneratedMessage {
  factory GetTaskHistoryRequest({
    $fixnum.Int64? taskId,
  }) {
    final result = create();
    if (taskId != null) result.taskId = taskId;
    return result;
  }

  GetTaskHistoryRequest._();

  factory GetTaskHistoryRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTaskHistoryRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTaskHistoryRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'taskId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskHistoryRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskHistoryRequest copyWith(
          void Function(GetTaskHistoryRequest) updates) =>
      super.copyWith((message) => updates(message as GetTaskHistoryRequest))
          as GetTaskHistoryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskHistoryRequest create() => GetTaskHistoryRequest._();
  @$core.override
  GetTaskHistoryRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTaskHistoryRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTaskHistoryRequest>(create);
  static GetTaskHistoryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => $_clearField(1);
}

class GetTaskHistoryResponse extends $pb.GeneratedMessage {
  factory GetTaskHistoryResponse({
    $core.Iterable<TaskHistoryItem>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  GetTaskHistoryResponse._();

  factory GetTaskHistoryResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTaskHistoryResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTaskHistoryResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<TaskHistoryItem>(1, _omitFieldNames ? '' : 'items',
        subBuilder: TaskHistoryItem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskHistoryResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskHistoryResponse copyWith(
          void Function(GetTaskHistoryResponse) updates) =>
      super.copyWith((message) => updates(message as GetTaskHistoryResponse))
          as GetTaskHistoryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskHistoryResponse create() => GetTaskHistoryResponse._();
  @$core.override
  GetTaskHistoryResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTaskHistoryResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTaskHistoryResponse>(create);
  static GetTaskHistoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<TaskHistoryItem> get items => $_getList(0);
}

class DeleteTaskRequest extends $pb.GeneratedMessage {
  factory DeleteTaskRequest({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DeleteTaskRequest._();

  factory DeleteTaskRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteTaskRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteTaskRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteTaskRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteTaskRequest copyWith(void Function(DeleteTaskRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteTaskRequest))
          as DeleteTaskRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteTaskRequest create() => DeleteTaskRequest._();
  @$core.override
  DeleteTaskRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteTaskRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteTaskRequest>(create);
  static DeleteTaskRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class GetTaskCommentsRequest extends $pb.GeneratedMessage {
  factory GetTaskCommentsRequest({
    $fixnum.Int64? taskId,
  }) {
    final result = create();
    if (taskId != null) result.taskId = taskId;
    return result;
  }

  GetTaskCommentsRequest._();

  factory GetTaskCommentsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTaskCommentsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTaskCommentsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'taskId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskCommentsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskCommentsRequest copyWith(
          void Function(GetTaskCommentsRequest) updates) =>
      super.copyWith((message) => updates(message as GetTaskCommentsRequest))
          as GetTaskCommentsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskCommentsRequest create() => GetTaskCommentsRequest._();
  @$core.override
  GetTaskCommentsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTaskCommentsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTaskCommentsRequest>(create);
  static GetTaskCommentsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => $_clearField(1);
}

class GetTaskCommentsResponse extends $pb.GeneratedMessage {
  factory GetTaskCommentsResponse({
    $core.Iterable<TaskComment>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  GetTaskCommentsResponse._();

  factory GetTaskCommentsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTaskCommentsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTaskCommentsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<TaskComment>(1, _omitFieldNames ? '' : 'items',
        subBuilder: TaskComment.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskCommentsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskCommentsResponse copyWith(
          void Function(GetTaskCommentsResponse) updates) =>
      super.copyWith((message) => updates(message as GetTaskCommentsResponse))
          as GetTaskCommentsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskCommentsResponse create() => GetTaskCommentsResponse._();
  @$core.override
  GetTaskCommentsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTaskCommentsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTaskCommentsResponse>(create);
  static GetTaskCommentsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<TaskComment> get items => $_getList(0);
}

class AddTaskCommentRequest extends $pb.GeneratedMessage {
  factory AddTaskCommentRequest({
    $fixnum.Int64? taskId,
    $core.String? content,
  }) {
    final result = create();
    if (taskId != null) result.taskId = taskId;
    if (content != null) result.content = content;
    return result;
  }

  AddTaskCommentRequest._();

  factory AddTaskCommentRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AddTaskCommentRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AddTaskCommentRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'content')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddTaskCommentRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddTaskCommentRequest copyWith(
          void Function(AddTaskCommentRequest) updates) =>
      super.copyWith((message) => updates(message as AddTaskCommentRequest))
          as AddTaskCommentRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddTaskCommentRequest create() => AddTaskCommentRequest._();
  @$core.override
  AddTaskCommentRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AddTaskCommentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AddTaskCommentRequest>(create);
  static AddTaskCommentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get content => $_getSZ(1);
  @$pb.TagNumber(2)
  set content($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => $_clearField(2);
}

class DeleteTaskCommentRequest extends $pb.GeneratedMessage {
  factory DeleteTaskCommentRequest({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DeleteTaskCommentRequest._();

  factory DeleteTaskCommentRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteTaskCommentRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteTaskCommentRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteTaskCommentRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteTaskCommentRequest copyWith(
          void Function(DeleteTaskCommentRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteTaskCommentRequest))
          as DeleteTaskCommentRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteTaskCommentRequest create() => DeleteTaskCommentRequest._();
  @$core.override
  DeleteTaskCommentRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteTaskCommentRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteTaskCommentRequest>(create);
  static DeleteTaskCommentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class SetTaskAssigneeRequest extends $pb.GeneratedMessage {
  factory SetTaskAssigneeRequest({
    $fixnum.Int64? taskId,
    $fixnum.Int64? assigneeId,
  }) {
    final result = create();
    if (taskId != null) result.taskId = taskId;
    if (assigneeId != null) result.assigneeId = assigneeId;
    return result;
  }

  SetTaskAssigneeRequest._();

  factory SetTaskAssigneeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetTaskAssigneeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetTaskAssigneeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'taskId')
    ..aInt64(2, _omitFieldNames ? '' : 'assigneeId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetTaskAssigneeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetTaskAssigneeRequest copyWith(
          void Function(SetTaskAssigneeRequest) updates) =>
      super.copyWith((message) => updates(message as SetTaskAssigneeRequest))
          as SetTaskAssigneeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetTaskAssigneeRequest create() => SetTaskAssigneeRequest._();
  @$core.override
  SetTaskAssigneeRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetTaskAssigneeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetTaskAssigneeRequest>(create);
  static SetTaskAssigneeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get assigneeId => $_getI64(1);
  @$pb.TagNumber(2)
  set assigneeId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAssigneeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssigneeId() => $_clearField(2);
}

class SetTaskObserversRequest extends $pb.GeneratedMessage {
  factory SetTaskObserversRequest({
    $fixnum.Int64? taskId,
    $core.Iterable<$fixnum.Int64>? observerIds,
  }) {
    final result = create();
    if (taskId != null) result.taskId = taskId;
    if (observerIds != null) result.observerIds.addAll(observerIds);
    return result;
  }

  SetTaskObserversRequest._();

  factory SetTaskObserversRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetTaskObserversRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetTaskObserversRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'taskId')
    ..p<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'observerIds', $pb.PbFieldType.K6)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetTaskObserversRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetTaskObserversRequest copyWith(
          void Function(SetTaskObserversRequest) updates) =>
      super.copyWith((message) => updates(message as SetTaskObserversRequest))
          as SetTaskObserversRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetTaskObserversRequest create() => SetTaskObserversRequest._();
  @$core.override
  SetTaskObserversRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetTaskObserversRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetTaskObserversRequest>(create);
  static SetTaskObserversRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get observerIds => $_getList(1);
}

class SetTaskTagsRequest extends $pb.GeneratedMessage {
  factory SetTaskTagsRequest({
    $fixnum.Int64? taskId,
    $core.Iterable<$fixnum.Int64>? tagIds,
  }) {
    final result = create();
    if (taskId != null) result.taskId = taskId;
    if (tagIds != null) result.tagIds.addAll(tagIds);
    return result;
  }

  SetTaskTagsRequest._();

  factory SetTaskTagsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetTaskTagsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetTaskTagsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'taskId')
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'tagIds', $pb.PbFieldType.K6)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetTaskTagsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetTaskTagsRequest copyWith(void Function(SetTaskTagsRequest) updates) =>
      super.copyWith((message) => updates(message as SetTaskTagsRequest))
          as SetTaskTagsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetTaskTagsRequest create() => SetTaskTagsRequest._();
  @$core.override
  SetTaskTagsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SetTaskTagsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetTaskTagsRequest>(create);
  static SetTaskTagsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get tagIds => $_getList(1);
}

class TaskTagLabel extends $pb.GeneratedMessage {
  factory TaskTagLabel({
    $fixnum.Int64? id,
    $core.String? name,
    $core.String? color,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (color != null) result.color = color;
    return result;
  }

  TaskTagLabel._();

  factory TaskTagLabel.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TaskTagLabel.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TaskTagLabel',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'color')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskTagLabel clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TaskTagLabel copyWith(void Function(TaskTagLabel) updates) =>
      super.copyWith((message) => updates(message as TaskTagLabel))
          as TaskTagLabel;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TaskTagLabel create() => TaskTagLabel._();
  @$core.override
  TaskTagLabel createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TaskTagLabel getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TaskTagLabel>(create);
  static TaskTagLabel? _defaultInstance;

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
  $core.String get color => $_getSZ(2);
  @$pb.TagNumber(3)
  set color($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasColor() => $_has(2);
  @$pb.TagNumber(3)
  void clearColor() => $_clearField(3);
}

class GetTaskLabelsRequest extends $pb.GeneratedMessage {
  factory GetTaskLabelsRequest({
    $fixnum.Int64? projectId,
  }) {
    final result = create();
    if (projectId != null) result.projectId = projectId;
    return result;
  }

  GetTaskLabelsRequest._();

  factory GetTaskLabelsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTaskLabelsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTaskLabelsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'projectId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskLabelsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskLabelsRequest copyWith(void Function(GetTaskLabelsRequest) updates) =>
      super.copyWith((message) => updates(message as GetTaskLabelsRequest))
          as GetTaskLabelsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskLabelsRequest create() => GetTaskLabelsRequest._();
  @$core.override
  GetTaskLabelsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTaskLabelsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTaskLabelsRequest>(create);
  static GetTaskLabelsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get projectId => $_getI64(0);
  @$pb.TagNumber(1)
  set projectId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProjectId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProjectId() => $_clearField(1);
}

class GetTaskLabelsResponse extends $pb.GeneratedMessage {
  factory GetTaskLabelsResponse({
    $core.Iterable<TaskTagLabel>? items,
  }) {
    final result = create();
    if (items != null) result.items.addAll(items);
    return result;
  }

  GetTaskLabelsResponse._();

  factory GetTaskLabelsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetTaskLabelsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetTaskLabelsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<TaskTagLabel>(1, _omitFieldNames ? '' : 'items',
        subBuilder: TaskTagLabel.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskLabelsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetTaskLabelsResponse copyWith(
          void Function(GetTaskLabelsResponse) updates) =>
      super.copyWith((message) => updates(message as GetTaskLabelsResponse))
          as GetTaskLabelsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTaskLabelsResponse create() => GetTaskLabelsResponse._();
  @$core.override
  GetTaskLabelsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GetTaskLabelsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetTaskLabelsResponse>(create);
  static GetTaskLabelsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<TaskTagLabel> get items => $_getList(0);
}

class CreateTaskLabelRequest extends $pb.GeneratedMessage {
  factory CreateTaskLabelRequest({
    $core.String? name,
    $core.String? color,
    $fixnum.Int64? projectId,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (color != null) result.color = color;
    if (projectId != null) result.projectId = projectId;
    return result;
  }

  CreateTaskLabelRequest._();

  factory CreateTaskLabelRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateTaskLabelRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateTaskLabelRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'color')
    ..aInt64(3, _omitFieldNames ? '' : 'projectId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTaskLabelRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateTaskLabelRequest copyWith(
          void Function(CreateTaskLabelRequest) updates) =>
      super.copyWith((message) => updates(message as CreateTaskLabelRequest))
          as CreateTaskLabelRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateTaskLabelRequest create() => CreateTaskLabelRequest._();
  @$core.override
  CreateTaskLabelRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CreateTaskLabelRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateTaskLabelRequest>(create);
  static CreateTaskLabelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get color => $_getSZ(1);
  @$pb.TagNumber(2)
  set color($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get projectId => $_getI64(2);
  @$pb.TagNumber(3)
  set projectId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasProjectId() => $_has(2);
  @$pb.TagNumber(3)
  void clearProjectId() => $_clearField(3);
}

class DeleteTaskLabelRequest extends $pb.GeneratedMessage {
  factory DeleteTaskLabelRequest({
    $fixnum.Int64? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DeleteTaskLabelRequest._();

  factory DeleteTaskLabelRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteTaskLabelRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteTaskLabelRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteTaskLabelRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteTaskLabelRequest copyWith(
          void Function(DeleteTaskLabelRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteTaskLabelRequest))
          as DeleteTaskLabelRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteTaskLabelRequest create() => DeleteTaskLabelRequest._();
  @$core.override
  DeleteTaskLabelRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeleteTaskLabelRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteTaskLabelRequest>(create);
  static DeleteTaskLabelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class RunTaskWorkflowActionRequest extends $pb.GeneratedMessage {
  factory RunTaskWorkflowActionRequest({
    $fixnum.Int64? taskId,
    $core.String? action,
  }) {
    final result = create();
    if (taskId != null) result.taskId = taskId;
    if (action != null) result.action = action;
    return result;
  }

  RunTaskWorkflowActionRequest._();

  factory RunTaskWorkflowActionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunTaskWorkflowActionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunTaskWorkflowActionRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'taskId')
    ..aOS(2, _omitFieldNames ? '' : 'action')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunTaskWorkflowActionRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunTaskWorkflowActionRequest copyWith(
          void Function(RunTaskWorkflowActionRequest) updates) =>
      super.copyWith(
              (message) => updates(message as RunTaskWorkflowActionRequest))
          as RunTaskWorkflowActionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunTaskWorkflowActionRequest create() =>
      RunTaskWorkflowActionRequest._();
  @$core.override
  RunTaskWorkflowActionRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunTaskWorkflowActionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunTaskWorkflowActionRequest>(create);
  static RunTaskWorkflowActionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get taskId => $_getI64(0);
  @$pb.TagNumber(1)
  set taskId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTaskId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTaskId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get action => $_getSZ(1);
  @$pb.TagNumber(2)
  set action($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => $_clearField(2);
}

class RunTaskWorkflowActionResponse extends $pb.GeneratedMessage {
  factory RunTaskWorkflowActionResponse({
    TaskItem? task,
    $core.bool? changed,
    $core.String? message,
  }) {
    final result = create();
    if (task != null) result.task = task;
    if (changed != null) result.changed = changed;
    if (message != null) result.message = message;
    return result;
  }

  RunTaskWorkflowActionResponse._();

  factory RunTaskWorkflowActionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RunTaskWorkflowActionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RunTaskWorkflowActionResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<TaskItem>(1, _omitFieldNames ? '' : 'task',
        subBuilder: TaskItem.create)
    ..aOB(2, _omitFieldNames ? '' : 'changed')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunTaskWorkflowActionResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RunTaskWorkflowActionResponse copyWith(
          void Function(RunTaskWorkflowActionResponse) updates) =>
      super.copyWith(
              (message) => updates(message as RunTaskWorkflowActionResponse))
          as RunTaskWorkflowActionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RunTaskWorkflowActionResponse create() =>
      RunTaskWorkflowActionResponse._();
  @$core.override
  RunTaskWorkflowActionResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RunTaskWorkflowActionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RunTaskWorkflowActionResponse>(create);
  static RunTaskWorkflowActionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  TaskItem get task => $_getN(0);
  @$pb.TagNumber(1)
  set task(TaskItem value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTask() => $_has(0);
  @$pb.TagNumber(1)
  void clearTask() => $_clearField(1);
  @$pb.TagNumber(1)
  TaskItem ensureTask() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get changed => $_getBF(1);
  @$pb.TagNumber(2)
  set changed($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasChanged() => $_has(1);
  @$pb.TagNumber(2)
  void clearChanged() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
