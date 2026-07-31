// This is a generated file - do not edit.
//
// Generated from chat.proto.

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

class ChatRoomPreview extends $pb.GeneratedMessage {
  factory ChatRoomPreview({
    $fixnum.Int64? id,
    $core.String? body,
    $fixnum.Int64? userId,
    $core.String? userName,
    $fixnum.Int64? createdAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (body != null) result.body = body;
    if (userId != null) result.userId = userId;
    if (userName != null) result.userName = userName;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  ChatRoomPreview._();

  factory ChatRoomPreview.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatRoomPreview.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatRoomPreview',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'body')
    ..aInt64(3, _omitFieldNames ? '' : 'userId')
    ..aOS(4, _omitFieldNames ? '' : 'userName')
    ..aInt64(5, _omitFieldNames ? '' : 'createdAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatRoomPreview clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatRoomPreview copyWith(void Function(ChatRoomPreview) updates) =>
      super.copyWith((message) => updates(message as ChatRoomPreview))
          as ChatRoomPreview;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatRoomPreview create() => ChatRoomPreview._();
  @$core.override
  ChatRoomPreview createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatRoomPreview getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatRoomPreview>(create);
  static ChatRoomPreview? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get body => $_getSZ(1);
  @$pb.TagNumber(2)
  set body($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get userId => $_getI64(2);
  @$pb.TagNumber(3)
  set userId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get userName => $_getSZ(3);
  @$pb.TagNumber(4)
  set userName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUserName() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserName() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get createdAt => $_getI64(4);
  @$pb.TagNumber(5)
  set createdAt($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => $_clearField(5);
}

class ChatRoom extends $pb.GeneratedMessage {
  factory ChatRoom({
    $fixnum.Int64? id,
    $core.String? type,
    $core.String? title,
    $core.int? memberCount,
    $core.int? unreadCount,
    ChatRoomPreview? lastMessage,
    $core.Iterable<ChatMember>? members,
    $fixnum.Int64? othersLastReadMessageId,
    $fixnum.Int64? othersLastReadAt,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (type != null) result.type = type;
    if (title != null) result.title = title;
    if (memberCount != null) result.memberCount = memberCount;
    if (unreadCount != null) result.unreadCount = unreadCount;
    if (lastMessage != null) result.lastMessage = lastMessage;
    if (members != null) result.members.addAll(members);
    if (othersLastReadMessageId != null)
      result.othersLastReadMessageId = othersLastReadMessageId;
    if (othersLastReadAt != null) result.othersLastReadAt = othersLastReadAt;
    return result;
  }

  ChatRoom._();

  factory ChatRoom.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatRoom.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatRoom',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..aOS(3, _omitFieldNames ? '' : 'title')
    ..aI(4, _omitFieldNames ? '' : 'memberCount')
    ..aI(5, _omitFieldNames ? '' : 'unreadCount')
    ..aOM<ChatRoomPreview>(6, _omitFieldNames ? '' : 'lastMessage',
        subBuilder: ChatRoomPreview.create)
    ..pPM<ChatMember>(7, _omitFieldNames ? '' : 'members',
        subBuilder: ChatMember.create)
    ..aInt64(8, _omitFieldNames ? '' : 'othersLastReadMessageId')
    ..aInt64(9, _omitFieldNames ? '' : 'othersLastReadAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatRoom clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatRoom copyWith(void Function(ChatRoom) updates) =>
      super.copyWith((message) => updates(message as ChatRoom)) as ChatRoom;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatRoom create() => ChatRoom._();
  @$core.override
  ChatRoom createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatRoom getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatRoom>(create);
  static ChatRoom? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get title => $_getSZ(2);
  @$pb.TagNumber(3)
  set title($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearTitle() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get memberCount => $_getIZ(3);
  @$pb.TagNumber(4)
  set memberCount($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMemberCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearMemberCount() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get unreadCount => $_getIZ(4);
  @$pb.TagNumber(5)
  set unreadCount($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUnreadCount() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnreadCount() => $_clearField(5);

  @$pb.TagNumber(6)
  ChatRoomPreview get lastMessage => $_getN(5);
  @$pb.TagNumber(6)
  set lastMessage(ChatRoomPreview value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasLastMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastMessage() => $_clearField(6);
  @$pb.TagNumber(6)
  ChatRoomPreview ensureLastMessage() => $_ensure(5);

  @$pb.TagNumber(7)
  $pb.PbList<ChatMember> get members => $_getList(6);

  @$pb.TagNumber(8)
  $fixnum.Int64 get othersLastReadMessageId => $_getI64(7);
  @$pb.TagNumber(8)
  set othersLastReadMessageId($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasOthersLastReadMessageId() => $_has(7);
  @$pb.TagNumber(8)
  void clearOthersLastReadMessageId() => $_clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get othersLastReadAt => $_getI64(8);
  @$pb.TagNumber(9)
  set othersLastReadAt($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasOthersLastReadAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearOthersLastReadAt() => $_clearField(9);
}

class ChatMember extends $pb.GeneratedMessage {
  factory ChatMember({
    $1.BaseUser? user,
    $core.String? role,
    $fixnum.Int64? joinedAt,
    $core.bool? isOnline,
    $core.String? lastVisitAt,
    $fixnum.Int64? lastReadMessageId,
    $fixnum.Int64? lastReadAt,
  }) {
    final result = create();
    if (user != null) result.user = user;
    if (role != null) result.role = role;
    if (joinedAt != null) result.joinedAt = joinedAt;
    if (isOnline != null) result.isOnline = isOnline;
    if (lastVisitAt != null) result.lastVisitAt = lastVisitAt;
    if (lastReadMessageId != null) result.lastReadMessageId = lastReadMessageId;
    if (lastReadAt != null) result.lastReadAt = lastReadAt;
    return result;
  }

  ChatMember._();

  factory ChatMember.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatMember.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatMember',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<$1.BaseUser>(1, _omitFieldNames ? '' : 'user',
        subBuilder: $1.BaseUser.create)
    ..aOS(2, _omitFieldNames ? '' : 'role')
    ..aInt64(3, _omitFieldNames ? '' : 'joinedAt')
    ..aOB(4, _omitFieldNames ? '' : 'isOnline')
    ..aOS(5, _omitFieldNames ? '' : 'lastVisitAt')
    ..aInt64(6, _omitFieldNames ? '' : 'lastReadMessageId')
    ..aInt64(7, _omitFieldNames ? '' : 'lastReadAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatMember clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatMember copyWith(void Function(ChatMember) updates) =>
      super.copyWith((message) => updates(message as ChatMember)) as ChatMember;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatMember create() => ChatMember._();
  @$core.override
  ChatMember createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatMember getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatMember>(create);
  static ChatMember? _defaultInstance;

  @$pb.TagNumber(1)
  $1.BaseUser get user => $_getN(0);
  @$pb.TagNumber(1)
  set user($1.BaseUser value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUser() => $_has(0);
  @$pb.TagNumber(1)
  void clearUser() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.BaseUser ensureUser() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get role => $_getSZ(1);
  @$pb.TagNumber(2)
  set role($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get joinedAt => $_getI64(2);
  @$pb.TagNumber(3)
  set joinedAt($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasJoinedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearJoinedAt() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isOnline => $_getBF(3);
  @$pb.TagNumber(4)
  set isOnline($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsOnline() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsOnline() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get lastVisitAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set lastVisitAt($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasLastVisitAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastVisitAt() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get lastReadMessageId => $_getI64(5);
  @$pb.TagNumber(6)
  set lastReadMessageId($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLastReadMessageId() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastReadMessageId() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get lastReadAt => $_getI64(6);
  @$pb.TagNumber(7)
  set lastReadAt($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasLastReadAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastReadAt() => $_clearField(7);
}

class ChatAttachment extends $pb.GeneratedMessage {
  factory ChatAttachment({
    $core.String? id,
    $core.String? name,
    $core.String? mimeType,
    $fixnum.Int64? size,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (mimeType != null) result.mimeType = mimeType;
    if (size != null) result.size = size;
    return result;
  }

  ChatAttachment._();

  factory ChatAttachment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatAttachment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatAttachment',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'mimeType')
    ..aInt64(4, _omitFieldNames ? '' : 'size')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatAttachment clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatAttachment copyWith(void Function(ChatAttachment) updates) =>
      super.copyWith((message) => updates(message as ChatAttachment))
          as ChatAttachment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatAttachment create() => ChatAttachment._();
  @$core.override
  ChatAttachment createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatAttachment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatAttachment>(create);
  static ChatAttachment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
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
  $core.String get mimeType => $_getSZ(2);
  @$pb.TagNumber(3)
  set mimeType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMimeType() => $_has(2);
  @$pb.TagNumber(3)
  void clearMimeType() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get size => $_getI64(3);
  @$pb.TagNumber(4)
  set size($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => $_clearField(4);
}

class ChatMessage extends $pb.GeneratedMessage {
  factory ChatMessage({
    $fixnum.Int64? id,
    $fixnum.Int64? roomId,
    $1.BaseUser? author,
    $core.String? body,
    $fixnum.Int64? replyToId,
    $fixnum.Int64? createdAt,
    $fixnum.Int64? editedAt,
    $core.Iterable<ChatAttachment>? attachments,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (roomId != null) result.roomId = roomId;
    if (author != null) result.author = author;
    if (body != null) result.body = body;
    if (replyToId != null) result.replyToId = replyToId;
    if (createdAt != null) result.createdAt = createdAt;
    if (editedAt != null) result.editedAt = editedAt;
    if (attachments != null) result.attachments.addAll(attachments);
    return result;
  }

  ChatMessage._();

  factory ChatMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatMessage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'roomId')
    ..aOM<$1.BaseUser>(3, _omitFieldNames ? '' : 'author',
        subBuilder: $1.BaseUser.create)
    ..aOS(4, _omitFieldNames ? '' : 'body')
    ..aInt64(5, _omitFieldNames ? '' : 'replyToId')
    ..aInt64(6, _omitFieldNames ? '' : 'createdAt')
    ..aInt64(7, _omitFieldNames ? '' : 'editedAt')
    ..pPM<ChatAttachment>(8, _omitFieldNames ? '' : 'attachments',
        subBuilder: ChatAttachment.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatMessage copyWith(void Function(ChatMessage) updates) =>
      super.copyWith((message) => updates(message as ChatMessage))
          as ChatMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatMessage create() => ChatMessage._();
  @$core.override
  ChatMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatMessage>(create);
  static ChatMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get roomId => $_getI64(1);
  @$pb.TagNumber(2)
  set roomId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => $_clearField(2);

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
  $core.String get body => $_getSZ(3);
  @$pb.TagNumber(4)
  set body($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBody() => $_has(3);
  @$pb.TagNumber(4)
  void clearBody() => $_clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get replyToId => $_getI64(4);
  @$pb.TagNumber(5)
  set replyToId($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasReplyToId() => $_has(4);
  @$pb.TagNumber(5)
  void clearReplyToId() => $_clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get createdAt => $_getI64(5);
  @$pb.TagNumber(6)
  set createdAt($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get editedAt => $_getI64(6);
  @$pb.TagNumber(7)
  set editedAt($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasEditedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearEditedAt() => $_clearField(7);

  @$pb.TagNumber(8)
  $pb.PbList<ChatAttachment> get attachments => $_getList(7);
}

class ChatListRoomsRequest extends $pb.GeneratedMessage {
  factory ChatListRoomsRequest() => create();

  ChatListRoomsRequest._();

  factory ChatListRoomsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatListRoomsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatListRoomsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatListRoomsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatListRoomsRequest copyWith(void Function(ChatListRoomsRequest) updates) =>
      super.copyWith((message) => updates(message as ChatListRoomsRequest))
          as ChatListRoomsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatListRoomsRequest create() => ChatListRoomsRequest._();
  @$core.override
  ChatListRoomsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatListRoomsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatListRoomsRequest>(create);
  static ChatListRoomsRequest? _defaultInstance;
}

class ChatListRoomsResponse extends $pb.GeneratedMessage {
  factory ChatListRoomsResponse({
    $core.Iterable<ChatRoom>? rooms,
  }) {
    final result = create();
    if (rooms != null) result.rooms.addAll(rooms);
    return result;
  }

  ChatListRoomsResponse._();

  factory ChatListRoomsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatListRoomsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatListRoomsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<ChatRoom>(1, _omitFieldNames ? '' : 'rooms',
        subBuilder: ChatRoom.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatListRoomsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatListRoomsResponse copyWith(
          void Function(ChatListRoomsResponse) updates) =>
      super.copyWith((message) => updates(message as ChatListRoomsResponse))
          as ChatListRoomsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatListRoomsResponse create() => ChatListRoomsResponse._();
  @$core.override
  ChatListRoomsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatListRoomsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatListRoomsResponse>(create);
  static ChatListRoomsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ChatRoom> get rooms => $_getList(0);
}

class ChatGetRoomRequest extends $pb.GeneratedMessage {
  factory ChatGetRoomRequest({
    $fixnum.Int64? roomId,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    return result;
  }

  ChatGetRoomRequest._();

  factory ChatGetRoomRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatGetRoomRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatGetRoomRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatGetRoomRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatGetRoomRequest copyWith(void Function(ChatGetRoomRequest) updates) =>
      super.copyWith((message) => updates(message as ChatGetRoomRequest))
          as ChatGetRoomRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatGetRoomRequest create() => ChatGetRoomRequest._();
  @$core.override
  ChatGetRoomRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatGetRoomRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatGetRoomRequest>(create);
  static ChatGetRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);
}

class ChatListMessagesRequest extends $pb.GeneratedMessage {
  factory ChatListMessagesRequest({
    $fixnum.Int64? roomId,
    $fixnum.Int64? beforeId,
    $core.int? limit,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (beforeId != null) result.beforeId = beforeId;
    if (limit != null) result.limit = limit;
    return result;
  }

  ChatListMessagesRequest._();

  factory ChatListMessagesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatListMessagesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatListMessagesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId')
    ..aInt64(2, _omitFieldNames ? '' : 'beforeId')
    ..aI(3, _omitFieldNames ? '' : 'limit')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatListMessagesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatListMessagesRequest copyWith(
          void Function(ChatListMessagesRequest) updates) =>
      super.copyWith((message) => updates(message as ChatListMessagesRequest))
          as ChatListMessagesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatListMessagesRequest create() => ChatListMessagesRequest._();
  @$core.override
  ChatListMessagesRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatListMessagesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatListMessagesRequest>(create);
  static ChatListMessagesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get beforeId => $_getI64(1);
  @$pb.TagNumber(2)
  set beforeId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBeforeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBeforeId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);
}

class ChatListMessagesResponse extends $pb.GeneratedMessage {
  factory ChatListMessagesResponse({
    $core.Iterable<ChatMessage>? messages,
  }) {
    final result = create();
    if (messages != null) result.messages.addAll(messages);
    return result;
  }

  ChatListMessagesResponse._();

  factory ChatListMessagesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatListMessagesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatListMessagesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<ChatMessage>(1, _omitFieldNames ? '' : 'messages',
        subBuilder: ChatMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatListMessagesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatListMessagesResponse copyWith(
          void Function(ChatListMessagesResponse) updates) =>
      super.copyWith((message) => updates(message as ChatListMessagesResponse))
          as ChatListMessagesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatListMessagesResponse create() => ChatListMessagesResponse._();
  @$core.override
  ChatListMessagesResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatListMessagesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatListMessagesResponse>(create);
  static ChatListMessagesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ChatMessage> get messages => $_getList(0);
}

class ChatSendMessageRequest extends $pb.GeneratedMessage {
  factory ChatSendMessageRequest({
    $fixnum.Int64? roomId,
    $core.String? body,
    $fixnum.Int64? replyToId,
    $core.bool? hasMedia,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (body != null) result.body = body;
    if (replyToId != null) result.replyToId = replyToId;
    if (hasMedia != null) result.hasMedia = hasMedia;
    return result;
  }

  ChatSendMessageRequest._();

  factory ChatSendMessageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatSendMessageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatSendMessageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId')
    ..aOS(2, _omitFieldNames ? '' : 'body')
    ..aInt64(3, _omitFieldNames ? '' : 'replyToId')
    ..aOB(4, _omitFieldNames ? '' : 'hasMedia')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatSendMessageRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatSendMessageRequest copyWith(
          void Function(ChatSendMessageRequest) updates) =>
      super.copyWith((message) => updates(message as ChatSendMessageRequest))
          as ChatSendMessageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatSendMessageRequest create() => ChatSendMessageRequest._();
  @$core.override
  ChatSendMessageRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatSendMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatSendMessageRequest>(create);
  static ChatSendMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get body => $_getSZ(1);
  @$pb.TagNumber(2)
  set body($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get replyToId => $_getI64(2);
  @$pb.TagNumber(3)
  set replyToId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReplyToId() => $_has(2);
  @$pb.TagNumber(3)
  void clearReplyToId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get hasMedia => $_getBF(3);
  @$pb.TagNumber(4)
  set hasMedia($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHasMedia() => $_has(3);
  @$pb.TagNumber(4)
  void clearHasMedia() => $_clearField(4);
}

class ChatRefreshMessageRequest extends $pb.GeneratedMessage {
  factory ChatRefreshMessageRequest({
    $fixnum.Int64? messageId,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    return result;
  }

  ChatRefreshMessageRequest._();

  factory ChatRefreshMessageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatRefreshMessageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatRefreshMessageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'messageId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatRefreshMessageRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatRefreshMessageRequest copyWith(
          void Function(ChatRefreshMessageRequest) updates) =>
      super.copyWith((message) => updates(message as ChatRefreshMessageRequest))
          as ChatRefreshMessageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatRefreshMessageRequest create() => ChatRefreshMessageRequest._();
  @$core.override
  ChatRefreshMessageRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatRefreshMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatRefreshMessageRequest>(create);
  static ChatRefreshMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get messageId => $_getI64(0);
  @$pb.TagNumber(1)
  set messageId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => $_clearField(1);
}

class ChatUploadAttachmentMeta extends $pb.GeneratedMessage {
  factory ChatUploadAttachmentMeta({
    $fixnum.Int64? messageId,
    $core.String? filename,
    $core.String? mimeType,
    $fixnum.Int64? totalSize,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (filename != null) result.filename = filename;
    if (mimeType != null) result.mimeType = mimeType;
    if (totalSize != null) result.totalSize = totalSize;
    return result;
  }

  ChatUploadAttachmentMeta._();

  factory ChatUploadAttachmentMeta.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatUploadAttachmentMeta.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatUploadAttachmentMeta',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'messageId')
    ..aOS(2, _omitFieldNames ? '' : 'filename')
    ..aOS(3, _omitFieldNames ? '' : 'mimeType')
    ..aInt64(4, _omitFieldNames ? '' : 'totalSize')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatUploadAttachmentMeta clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatUploadAttachmentMeta copyWith(
          void Function(ChatUploadAttachmentMeta) updates) =>
      super.copyWith((message) => updates(message as ChatUploadAttachmentMeta))
          as ChatUploadAttachmentMeta;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatUploadAttachmentMeta create() => ChatUploadAttachmentMeta._();
  @$core.override
  ChatUploadAttachmentMeta createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatUploadAttachmentMeta getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatUploadAttachmentMeta>(create);
  static ChatUploadAttachmentMeta? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get messageId => $_getI64(0);
  @$pb.TagNumber(1)
  set messageId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => $_clearField(1);

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
  $fixnum.Int64 get totalSize => $_getI64(3);
  @$pb.TagNumber(4)
  set totalSize($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTotalSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearTotalSize() => $_clearField(4);
}

enum ChatUploadAttachmentChunk_Data { meta, chunk, notSet }

class ChatUploadAttachmentChunk extends $pb.GeneratedMessage {
  factory ChatUploadAttachmentChunk({
    ChatUploadAttachmentMeta? meta,
    $core.List<$core.int>? chunk,
  }) {
    final result = create();
    if (meta != null) result.meta = meta;
    if (chunk != null) result.chunk = chunk;
    return result;
  }

  ChatUploadAttachmentChunk._();

  factory ChatUploadAttachmentChunk.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatUploadAttachmentChunk.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ChatUploadAttachmentChunk_Data>
      _ChatUploadAttachmentChunk_DataByTag = {
    1: ChatUploadAttachmentChunk_Data.meta,
    2: ChatUploadAttachmentChunk_Data.chunk,
    0: ChatUploadAttachmentChunk_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatUploadAttachmentChunk',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ChatUploadAttachmentMeta>(1, _omitFieldNames ? '' : 'meta',
        subBuilder: ChatUploadAttachmentMeta.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'chunk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatUploadAttachmentChunk clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatUploadAttachmentChunk copyWith(
          void Function(ChatUploadAttachmentChunk) updates) =>
      super.copyWith((message) => updates(message as ChatUploadAttachmentChunk))
          as ChatUploadAttachmentChunk;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatUploadAttachmentChunk create() => ChatUploadAttachmentChunk._();
  @$core.override
  ChatUploadAttachmentChunk createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatUploadAttachmentChunk getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatUploadAttachmentChunk>(create);
  static ChatUploadAttachmentChunk? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  ChatUploadAttachmentChunk_Data whichData() =>
      _ChatUploadAttachmentChunk_DataByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearData() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ChatUploadAttachmentMeta get meta => $_getN(0);
  @$pb.TagNumber(1)
  set meta(ChatUploadAttachmentMeta value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMeta() => $_has(0);
  @$pb.TagNumber(1)
  void clearMeta() => $_clearField(1);
  @$pb.TagNumber(1)
  ChatUploadAttachmentMeta ensureMeta() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get chunk => $_getN(1);
  @$pb.TagNumber(2)
  set chunk($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasChunk() => $_has(1);
  @$pb.TagNumber(2)
  void clearChunk() => $_clearField(2);
}

class ChatUploadAttachmentResponse extends $pb.GeneratedMessage {
  factory ChatUploadAttachmentResponse({
    ChatAttachment? attachment,
  }) {
    final result = create();
    if (attachment != null) result.attachment = attachment;
    return result;
  }

  ChatUploadAttachmentResponse._();

  factory ChatUploadAttachmentResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatUploadAttachmentResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatUploadAttachmentResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOM<ChatAttachment>(1, _omitFieldNames ? '' : 'attachment',
        subBuilder: ChatAttachment.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatUploadAttachmentResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatUploadAttachmentResponse copyWith(
          void Function(ChatUploadAttachmentResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ChatUploadAttachmentResponse))
          as ChatUploadAttachmentResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatUploadAttachmentResponse create() =>
      ChatUploadAttachmentResponse._();
  @$core.override
  ChatUploadAttachmentResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatUploadAttachmentResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatUploadAttachmentResponse>(create);
  static ChatUploadAttachmentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ChatAttachment get attachment => $_getN(0);
  @$pb.TagNumber(1)
  set attachment(ChatAttachment value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAttachment() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttachment() => $_clearField(1);
  @$pb.TagNumber(1)
  ChatAttachment ensureAttachment() => $_ensure(0);
}

class ChatMarkReadRequest extends $pb.GeneratedMessage {
  factory ChatMarkReadRequest({
    $fixnum.Int64? roomId,
    $fixnum.Int64? messageId,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (messageId != null) result.messageId = messageId;
    return result;
  }

  ChatMarkReadRequest._();

  factory ChatMarkReadRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatMarkReadRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatMarkReadRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId')
    ..aInt64(2, _omitFieldNames ? '' : 'messageId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatMarkReadRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatMarkReadRequest copyWith(void Function(ChatMarkReadRequest) updates) =>
      super.copyWith((message) => updates(message as ChatMarkReadRequest))
          as ChatMarkReadRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatMarkReadRequest create() => ChatMarkReadRequest._();
  @$core.override
  ChatMarkReadRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatMarkReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatMarkReadRequest>(create);
  static ChatMarkReadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get messageId => $_getI64(1);
  @$pb.TagNumber(2)
  set messageId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageId() => $_clearField(2);
}

class ChatGetUnreadCountsRequest extends $pb.GeneratedMessage {
  factory ChatGetUnreadCountsRequest() => create();

  ChatGetUnreadCountsRequest._();

  factory ChatGetUnreadCountsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatGetUnreadCountsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatGetUnreadCountsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatGetUnreadCountsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatGetUnreadCountsRequest copyWith(
          void Function(ChatGetUnreadCountsRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ChatGetUnreadCountsRequest))
          as ChatGetUnreadCountsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatGetUnreadCountsRequest create() => ChatGetUnreadCountsRequest._();
  @$core.override
  ChatGetUnreadCountsRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatGetUnreadCountsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatGetUnreadCountsRequest>(create);
  static ChatGetUnreadCountsRequest? _defaultInstance;
}

class ChatGetUnreadCountsResponse extends $pb.GeneratedMessage {
  factory ChatGetUnreadCountsResponse({
    $core.int? total,
    $core.Iterable<$core.MapEntry<$fixnum.Int64, $core.int>>? byRoom,
  }) {
    final result = create();
    if (total != null) result.total = total;
    if (byRoom != null) result.byRoom.addEntries(byRoom);
    return result;
  }

  ChatGetUnreadCountsResponse._();

  factory ChatGetUnreadCountsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatGetUnreadCountsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatGetUnreadCountsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'total')
    ..m<$fixnum.Int64, $core.int>(2, _omitFieldNames ? '' : 'byRoom',
        entryClassName: 'ChatGetUnreadCountsResponse.ByRoomEntry',
        keyFieldType: $pb.PbFieldType.O6,
        valueFieldType: $pb.PbFieldType.O3,
        packageName: const $pb.PackageName('katan'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatGetUnreadCountsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatGetUnreadCountsResponse copyWith(
          void Function(ChatGetUnreadCountsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ChatGetUnreadCountsResponse))
          as ChatGetUnreadCountsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatGetUnreadCountsResponse create() =>
      ChatGetUnreadCountsResponse._();
  @$core.override
  ChatGetUnreadCountsResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatGetUnreadCountsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatGetUnreadCountsResponse>(create);
  static ChatGetUnreadCountsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get total => $_getIZ(0);
  @$pb.TagNumber(1)
  set total($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotal() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotal() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$fixnum.Int64, $core.int> get byRoom => $_getMap(1);
}

class ChatCreateGroupRequest extends $pb.GeneratedMessage {
  factory ChatCreateGroupRequest({
    $core.String? title,
    $core.Iterable<$fixnum.Int64>? userIds,
  }) {
    final result = create();
    if (title != null) result.title = title;
    if (userIds != null) result.userIds.addAll(userIds);
    return result;
  }

  ChatCreateGroupRequest._();

  factory ChatCreateGroupRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatCreateGroupRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatCreateGroupRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'title')
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'userIds', $pb.PbFieldType.K6)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatCreateGroupRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatCreateGroupRequest copyWith(
          void Function(ChatCreateGroupRequest) updates) =>
      super.copyWith((message) => updates(message as ChatCreateGroupRequest))
          as ChatCreateGroupRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCreateGroupRequest create() => ChatCreateGroupRequest._();
  @$core.override
  ChatCreateGroupRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatCreateGroupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatCreateGroupRequest>(create);
  static ChatCreateGroupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);
  @$pb.TagNumber(1)
  set title($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);
  @$pb.TagNumber(1)
  void clearTitle() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get userIds => $_getList(1);
}

class ChatAddMembersRequest extends $pb.GeneratedMessage {
  factory ChatAddMembersRequest({
    $fixnum.Int64? roomId,
    $core.Iterable<$fixnum.Int64>? userIds,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (userIds != null) result.userIds.addAll(userIds);
    return result;
  }

  ChatAddMembersRequest._();

  factory ChatAddMembersRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatAddMembersRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatAddMembersRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId')
    ..p<$fixnum.Int64>(2, _omitFieldNames ? '' : 'userIds', $pb.PbFieldType.K6)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatAddMembersRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatAddMembersRequest copyWith(
          void Function(ChatAddMembersRequest) updates) =>
      super.copyWith((message) => updates(message as ChatAddMembersRequest))
          as ChatAddMembersRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatAddMembersRequest create() => ChatAddMembersRequest._();
  @$core.override
  ChatAddMembersRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatAddMembersRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatAddMembersRequest>(create);
  static ChatAddMembersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$fixnum.Int64> get userIds => $_getList(1);
}

class ChatRemoveMemberRequest extends $pb.GeneratedMessage {
  factory ChatRemoveMemberRequest({
    $fixnum.Int64? roomId,
    $fixnum.Int64? userId,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (userId != null) result.userId = userId;
    return result;
  }

  ChatRemoveMemberRequest._();

  factory ChatRemoveMemberRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatRemoveMemberRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatRemoveMemberRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId')
    ..aInt64(2, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatRemoveMemberRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatRemoveMemberRequest copyWith(
          void Function(ChatRemoveMemberRequest) updates) =>
      super.copyWith((message) => updates(message as ChatRemoveMemberRequest))
          as ChatRemoveMemberRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatRemoveMemberRequest create() => ChatRemoveMemberRequest._();
  @$core.override
  ChatRemoveMemberRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatRemoveMemberRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatRemoveMemberRequest>(create);
  static ChatRemoveMemberRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);
}

class ChatLeaveRoomRequest extends $pb.GeneratedMessage {
  factory ChatLeaveRoomRequest({
    $fixnum.Int64? roomId,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    return result;
  }

  ChatLeaveRoomRequest._();

  factory ChatLeaveRoomRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatLeaveRoomRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatLeaveRoomRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatLeaveRoomRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatLeaveRoomRequest copyWith(void Function(ChatLeaveRoomRequest) updates) =>
      super.copyWith((message) => updates(message as ChatLeaveRoomRequest))
          as ChatLeaveRoomRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatLeaveRoomRequest create() => ChatLeaveRoomRequest._();
  @$core.override
  ChatLeaveRoomRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatLeaveRoomRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatLeaveRoomRequest>(create);
  static ChatLeaveRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);
}

class ChatCreateDirectRequest extends $pb.GeneratedMessage {
  factory ChatCreateDirectRequest({
    $fixnum.Int64? userId,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    return result;
  }

  ChatCreateDirectRequest._();

  factory ChatCreateDirectRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatCreateDirectRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatCreateDirectRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatCreateDirectRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatCreateDirectRequest copyWith(
          void Function(ChatCreateDirectRequest) updates) =>
      super.copyWith((message) => updates(message as ChatCreateDirectRequest))
          as ChatCreateDirectRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatCreateDirectRequest create() => ChatCreateDirectRequest._();
  @$core.override
  ChatCreateDirectRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatCreateDirectRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatCreateDirectRequest>(create);
  static ChatCreateDirectRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
}

class ChatUpdateGroupRequest extends $pb.GeneratedMessage {
  factory ChatUpdateGroupRequest({
    $fixnum.Int64? roomId,
    $core.String? title,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (title != null) result.title = title;
    return result;
  }

  ChatUpdateGroupRequest._();

  factory ChatUpdateGroupRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatUpdateGroupRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatUpdateGroupRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId')
    ..aOS(2, _omitFieldNames ? '' : 'title')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatUpdateGroupRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatUpdateGroupRequest copyWith(
          void Function(ChatUpdateGroupRequest) updates) =>
      super.copyWith((message) => updates(message as ChatUpdateGroupRequest))
          as ChatUpdateGroupRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatUpdateGroupRequest create() => ChatUpdateGroupRequest._();
  @$core.override
  ChatUpdateGroupRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatUpdateGroupRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatUpdateGroupRequest>(create);
  static ChatUpdateGroupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => $_clearField(2);
}

class ChatEditMessageRequest extends $pb.GeneratedMessage {
  factory ChatEditMessageRequest({
    $fixnum.Int64? messageId,
    $core.String? body,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (body != null) result.body = body;
    return result;
  }

  ChatEditMessageRequest._();

  factory ChatEditMessageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatEditMessageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatEditMessageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'messageId')
    ..aOS(2, _omitFieldNames ? '' : 'body')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatEditMessageRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatEditMessageRequest copyWith(
          void Function(ChatEditMessageRequest) updates) =>
      super.copyWith((message) => updates(message as ChatEditMessageRequest))
          as ChatEditMessageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatEditMessageRequest create() => ChatEditMessageRequest._();
  @$core.override
  ChatEditMessageRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatEditMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatEditMessageRequest>(create);
  static ChatEditMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get messageId => $_getI64(0);
  @$pb.TagNumber(1)
  set messageId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get body => $_getSZ(1);
  @$pb.TagNumber(2)
  set body($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBody() => $_has(1);
  @$pb.TagNumber(2)
  void clearBody() => $_clearField(2);
}

class ChatDeleteMessageRequest extends $pb.GeneratedMessage {
  factory ChatDeleteMessageRequest({
    $fixnum.Int64? messageId,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    return result;
  }

  ChatDeleteMessageRequest._();

  factory ChatDeleteMessageRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatDeleteMessageRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatDeleteMessageRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'messageId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatDeleteMessageRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatDeleteMessageRequest copyWith(
          void Function(ChatDeleteMessageRequest) updates) =>
      super.copyWith((message) => updates(message as ChatDeleteMessageRequest))
          as ChatDeleteMessageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatDeleteMessageRequest create() => ChatDeleteMessageRequest._();
  @$core.override
  ChatDeleteMessageRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatDeleteMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatDeleteMessageRequest>(create);
  static ChatDeleteMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get messageId => $_getI64(0);
  @$pb.TagNumber(1)
  set messageId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => $_clearField(1);
}

class ChatSearchRequest extends $pb.GeneratedMessage {
  factory ChatSearchRequest({
    $core.String? query,
    $core.int? limit,
  }) {
    final result = create();
    if (query != null) result.query = query;
    if (limit != null) result.limit = limit;
    return result;
  }

  ChatSearchRequest._();

  factory ChatSearchRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatSearchRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatSearchRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..aI(2, _omitFieldNames ? '' : 'limit')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatSearchRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatSearchRequest copyWith(void Function(ChatSearchRequest) updates) =>
      super.copyWith((message) => updates(message as ChatSearchRequest))
          as ChatSearchRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatSearchRequest create() => ChatSearchRequest._();
  @$core.override
  ChatSearchRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatSearchRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatSearchRequest>(create);
  static ChatSearchRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => $_clearField(2);
}

class ChatSearchResponse extends $pb.GeneratedMessage {
  factory ChatSearchResponse({
    $core.Iterable<ChatRoom>? rooms,
    $core.Iterable<$1.BaseUser>? users,
  }) {
    final result = create();
    if (rooms != null) result.rooms.addAll(rooms);
    if (users != null) result.users.addAll(users);
    return result;
  }

  ChatSearchResponse._();

  factory ChatSearchResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatSearchResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatSearchResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..pPM<ChatRoom>(1, _omitFieldNames ? '' : 'rooms',
        subBuilder: ChatRoom.create)
    ..pPM<$1.BaseUser>(2, _omitFieldNames ? '' : 'users',
        subBuilder: $1.BaseUser.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatSearchResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatSearchResponse copyWith(void Function(ChatSearchResponse) updates) =>
      super.copyWith((message) => updates(message as ChatSearchResponse))
          as ChatSearchResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatSearchResponse create() => ChatSearchResponse._();
  @$core.override
  ChatSearchResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatSearchResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatSearchResponse>(create);
  static ChatSearchResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ChatRoom> get rooms => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<$1.BaseUser> get users => $_getList(1);
}

class ChatRoomRef extends $pb.GeneratedMessage {
  factory ChatRoomRef({
    $fixnum.Int64? roomId,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    return result;
  }

  ChatRoomRef._();

  factory ChatRoomRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatRoomRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatRoomRef',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatRoomRef clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatRoomRef copyWith(void Function(ChatRoomRef) updates) =>
      super.copyWith((message) => updates(message as ChatRoomRef))
          as ChatRoomRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatRoomRef create() => ChatRoomRef._();
  @$core.override
  ChatRoomRef createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatRoomRef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatRoomRef>(create);
  static ChatRoomRef? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);
}

enum ChatClientEvent_Payload { subscribeRoom, unsubscribeRoom, typing, notSet }

class ChatClientEvent extends $pb.GeneratedMessage {
  factory ChatClientEvent({
    ChatRoomRef? subscribeRoom,
    ChatRoomRef? unsubscribeRoom,
    ChatRoomRef? typing,
  }) {
    final result = create();
    if (subscribeRoom != null) result.subscribeRoom = subscribeRoom;
    if (unsubscribeRoom != null) result.unsubscribeRoom = unsubscribeRoom;
    if (typing != null) result.typing = typing;
    return result;
  }

  ChatClientEvent._();

  factory ChatClientEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatClientEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ChatClientEvent_Payload>
      _ChatClientEvent_PayloadByTag = {
    1: ChatClientEvent_Payload.subscribeRoom,
    2: ChatClientEvent_Payload.unsubscribeRoom,
    3: ChatClientEvent_Payload.typing,
    0: ChatClientEvent_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatClientEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<ChatRoomRef>(1, _omitFieldNames ? '' : 'subscribeRoom',
        subBuilder: ChatRoomRef.create)
    ..aOM<ChatRoomRef>(2, _omitFieldNames ? '' : 'unsubscribeRoom',
        subBuilder: ChatRoomRef.create)
    ..aOM<ChatRoomRef>(3, _omitFieldNames ? '' : 'typing',
        subBuilder: ChatRoomRef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatClientEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatClientEvent copyWith(void Function(ChatClientEvent) updates) =>
      super.copyWith((message) => updates(message as ChatClientEvent))
          as ChatClientEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatClientEvent create() => ChatClientEvent._();
  @$core.override
  ChatClientEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatClientEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatClientEvent>(create);
  static ChatClientEvent? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  ChatClientEvent_Payload whichPayload() =>
      _ChatClientEvent_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ChatRoomRef get subscribeRoom => $_getN(0);
  @$pb.TagNumber(1)
  set subscribeRoom(ChatRoomRef value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSubscribeRoom() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubscribeRoom() => $_clearField(1);
  @$pb.TagNumber(1)
  ChatRoomRef ensureSubscribeRoom() => $_ensure(0);

  @$pb.TagNumber(2)
  ChatRoomRef get unsubscribeRoom => $_getN(1);
  @$pb.TagNumber(2)
  set unsubscribeRoom(ChatRoomRef value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUnsubscribeRoom() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnsubscribeRoom() => $_clearField(2);
  @$pb.TagNumber(2)
  ChatRoomRef ensureUnsubscribeRoom() => $_ensure(1);

  @$pb.TagNumber(3)
  ChatRoomRef get typing => $_getN(2);
  @$pb.TagNumber(3)
  set typing(ChatRoomRef value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTyping() => $_has(2);
  @$pb.TagNumber(3)
  void clearTyping() => $_clearField(3);
  @$pb.TagNumber(3)
  ChatRoomRef ensureTyping() => $_ensure(2);
}

class ChatMessageDeleted extends $pb.GeneratedMessage {
  factory ChatMessageDeleted({
    $fixnum.Int64? id,
    $fixnum.Int64? roomId,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (roomId != null) result.roomId = roomId;
    return result;
  }

  ChatMessageDeleted._();

  factory ChatMessageDeleted.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatMessageDeleted.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatMessageDeleted',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'roomId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatMessageDeleted clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatMessageDeleted copyWith(void Function(ChatMessageDeleted) updates) =>
      super.copyWith((message) => updates(message as ChatMessageDeleted))
          as ChatMessageDeleted;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatMessageDeleted create() => ChatMessageDeleted._();
  @$core.override
  ChatMessageDeleted createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatMessageDeleted getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatMessageDeleted>(create);
  static ChatMessageDeleted? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get roomId => $_getI64(1);
  @$pb.TagNumber(2)
  set roomId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => $_clearField(2);
}

class ChatTypingEvent extends $pb.GeneratedMessage {
  factory ChatTypingEvent({
    $fixnum.Int64? roomId,
    $fixnum.Int64? userId,
    $core.String? name,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (userId != null) result.userId = userId;
    if (name != null) result.name = name;
    return result;
  }

  ChatTypingEvent._();

  factory ChatTypingEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatTypingEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatTypingEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId')
    ..aInt64(2, _omitFieldNames ? '' : 'userId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatTypingEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatTypingEvent copyWith(void Function(ChatTypingEvent) updates) =>
      super.copyWith((message) => updates(message as ChatTypingEvent))
          as ChatTypingEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatTypingEvent create() => ChatTypingEvent._();
  @$core.override
  ChatTypingEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatTypingEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatTypingEvent>(create);
  static ChatTypingEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);
}

class ChatPresenceEvent extends $pb.GeneratedMessage {
  factory ChatPresenceEvent({
    $fixnum.Int64? userId,
    $core.bool? isOnline,
    $core.String? lastVisitAt,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (isOnline != null) result.isOnline = isOnline;
    if (lastVisitAt != null) result.lastVisitAt = lastVisitAt;
    return result;
  }

  ChatPresenceEvent._();

  factory ChatPresenceEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatPresenceEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatPresenceEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'userId')
    ..aOB(2, _omitFieldNames ? '' : 'isOnline')
    ..aOS(3, _omitFieldNames ? '' : 'lastVisitAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatPresenceEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatPresenceEvent copyWith(void Function(ChatPresenceEvent) updates) =>
      super.copyWith((message) => updates(message as ChatPresenceEvent))
          as ChatPresenceEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatPresenceEvent create() => ChatPresenceEvent._();
  @$core.override
  ChatPresenceEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatPresenceEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatPresenceEvent>(create);
  static ChatPresenceEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get userId => $_getI64(0);
  @$pb.TagNumber(1)
  set userId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isOnline => $_getBF(1);
  @$pb.TagNumber(2)
  set isOnline($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsOnline() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsOnline() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastVisitAt => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastVisitAt($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLastVisitAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastVisitAt() => $_clearField(3);
}

class ChatReadEvent extends $pb.GeneratedMessage {
  factory ChatReadEvent({
    $fixnum.Int64? roomId,
    $fixnum.Int64? userId,
    $fixnum.Int64? lastReadMessageId,
    $fixnum.Int64? lastReadAt,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (userId != null) result.userId = userId;
    if (lastReadMessageId != null) result.lastReadMessageId = lastReadMessageId;
    if (lastReadAt != null) result.lastReadAt = lastReadAt;
    return result;
  }

  ChatReadEvent._();

  factory ChatReadEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatReadEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatReadEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'roomId')
    ..aInt64(2, _omitFieldNames ? '' : 'userId')
    ..aInt64(3, _omitFieldNames ? '' : 'lastReadMessageId')
    ..aInt64(4, _omitFieldNames ? '' : 'lastReadAt')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatReadEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatReadEvent copyWith(void Function(ChatReadEvent) updates) =>
      super.copyWith((message) => updates(message as ChatReadEvent))
          as ChatReadEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatReadEvent create() => ChatReadEvent._();
  @$core.override
  ChatReadEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatReadEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatReadEvent>(create);
  static ChatReadEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get roomId => $_getI64(0);
  @$pb.TagNumber(1)
  set roomId($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get userId => $_getI64(1);
  @$pb.TagNumber(2)
  set userId($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastReadMessageId => $_getI64(2);
  @$pb.TagNumber(3)
  set lastReadMessageId($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLastReadMessageId() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastReadMessageId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get lastReadAt => $_getI64(3);
  @$pb.TagNumber(4)
  set lastReadAt($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLastReadAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastReadAt() => $_clearField(4);
}

enum ChatEvent_Payload {
  message,
  messageUpdated,
  messageDeleted,
  typing,
  presence,
  read,
  notSet
}

class ChatEvent extends $pb.GeneratedMessage {
  factory ChatEvent({
    ChatMessage? message,
    ChatMessage? messageUpdated,
    ChatMessageDeleted? messageDeleted,
    ChatTypingEvent? typing,
    ChatPresenceEvent? presence,
    ChatReadEvent? read,
  }) {
    final result = create();
    if (message != null) result.message = message;
    if (messageUpdated != null) result.messageUpdated = messageUpdated;
    if (messageDeleted != null) result.messageDeleted = messageDeleted;
    if (typing != null) result.typing = typing;
    if (presence != null) result.presence = presence;
    if (read != null) result.read = read;
    return result;
  }

  ChatEvent._();

  factory ChatEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChatEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ChatEvent_Payload> _ChatEvent_PayloadByTag =
      {
    1: ChatEvent_Payload.message,
    2: ChatEvent_Payload.messageUpdated,
    3: ChatEvent_Payload.messageDeleted,
    4: ChatEvent_Payload.typing,
    5: ChatEvent_Payload.presence,
    6: ChatEvent_Payload.read,
    0: ChatEvent_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'katan'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6])
    ..aOM<ChatMessage>(1, _omitFieldNames ? '' : 'message',
        subBuilder: ChatMessage.create)
    ..aOM<ChatMessage>(2, _omitFieldNames ? '' : 'messageUpdated',
        subBuilder: ChatMessage.create)
    ..aOM<ChatMessageDeleted>(3, _omitFieldNames ? '' : 'messageDeleted',
        subBuilder: ChatMessageDeleted.create)
    ..aOM<ChatTypingEvent>(4, _omitFieldNames ? '' : 'typing',
        subBuilder: ChatTypingEvent.create)
    ..aOM<ChatPresenceEvent>(5, _omitFieldNames ? '' : 'presence',
        subBuilder: ChatPresenceEvent.create)
    ..aOM<ChatReadEvent>(6, _omitFieldNames ? '' : 'read',
        subBuilder: ChatReadEvent.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChatEvent copyWith(void Function(ChatEvent) updates) =>
      super.copyWith((message) => updates(message as ChatEvent)) as ChatEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatEvent create() => ChatEvent._();
  @$core.override
  ChatEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChatEvent getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChatEvent>(create);
  static ChatEvent? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  ChatEvent_Payload whichPayload() => _ChatEvent_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ChatMessage get message => $_getN(0);
  @$pb.TagNumber(1)
  set message(ChatMessage value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);
  @$pb.TagNumber(1)
  ChatMessage ensureMessage() => $_ensure(0);

  @$pb.TagNumber(2)
  ChatMessage get messageUpdated => $_getN(1);
  @$pb.TagNumber(2)
  set messageUpdated(ChatMessage value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMessageUpdated() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageUpdated() => $_clearField(2);
  @$pb.TagNumber(2)
  ChatMessage ensureMessageUpdated() => $_ensure(1);

  @$pb.TagNumber(3)
  ChatMessageDeleted get messageDeleted => $_getN(2);
  @$pb.TagNumber(3)
  set messageDeleted(ChatMessageDeleted value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMessageDeleted() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageDeleted() => $_clearField(3);
  @$pb.TagNumber(3)
  ChatMessageDeleted ensureMessageDeleted() => $_ensure(2);

  @$pb.TagNumber(4)
  ChatTypingEvent get typing => $_getN(3);
  @$pb.TagNumber(4)
  set typing(ChatTypingEvent value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTyping() => $_has(3);
  @$pb.TagNumber(4)
  void clearTyping() => $_clearField(4);
  @$pb.TagNumber(4)
  ChatTypingEvent ensureTyping() => $_ensure(3);

  @$pb.TagNumber(5)
  ChatPresenceEvent get presence => $_getN(4);
  @$pb.TagNumber(5)
  set presence(ChatPresenceEvent value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPresence() => $_has(4);
  @$pb.TagNumber(5)
  void clearPresence() => $_clearField(5);
  @$pb.TagNumber(5)
  ChatPresenceEvent ensurePresence() => $_ensure(4);

  @$pb.TagNumber(6)
  ChatReadEvent get read => $_getN(5);
  @$pb.TagNumber(6)
  set read(ChatReadEvent value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasRead() => $_has(5);
  @$pb.TagNumber(6)
  void clearRead() => $_clearField(6);
  @$pb.TagNumber(6)
  ChatReadEvent ensureRead() => $_ensure(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
