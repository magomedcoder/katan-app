import 'package:fixnum/fixnum.dart';
import 'package:katan/data/mappers/entity_mappers.dart';
import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/generated/pb/chat.pb.dart' as pb;

ChatRoomPreview? mapChatRoomPreview(pb.ChatRoomPreview? item) {
  if (item == null || item.id == Int64.ZERO) {
    return null;
  }

  return ChatRoomPreview(
    id: item.id.toInt(),
    body: item.body,
    userId: item.userId.toInt(),
    userName: item.userName,
    createdAt: mapUnix(item.createdAt),
  );
}

ChatMember mapChatMember(pb.ChatMember item) {
  return ChatMember(
    user: mapUser(item.hasUser() ? item.user : null) ?? const UserRef(
        id: 0,
        username: '',
        name: '',
        surname: '',
    ),
    role: item.role,
    isOnline: item.isOnline,
    lastVisitAt: item.lastVisitAt,
    joinedAt: mapUnix(item.joinedAt),
    lastReadMessageId: item.lastReadMessageId == Int64.ZERO
      ? null
      : item.lastReadMessageId.toInt(),
    lastReadAt: mapUnix(item.lastReadAt),
  );
}

ChatRoom mapChatRoom(pb.ChatRoom item) {
  return ChatRoom(
    id: item.id.toInt(),
    type: item.type,
    title: item.title,
    memberCount: item.memberCount,
    unreadCount: item.unreadCount,
    lastMessage: item.hasLastMessage() ? mapChatRoomPreview(item.lastMessage) : null,
    members: item.members.map(mapChatMember).toList(),
    othersLastReadMessageId: item.othersLastReadMessageId == Int64.ZERO
      ? null
      : item.othersLastReadMessageId.toInt(),
    othersLastReadAt: mapUnix(item.othersLastReadAt),
  );
}

ChatAttachment mapChatAttachment(pb.ChatAttachment item) {
  return ChatAttachment(
    id: item.id,
    name: item.name,
    mimeType: item.mimeType,
    size: item.size.toInt(),
  );
}

ChatMessage mapChatMessage(pb.ChatMessage item) {
  return ChatMessage(
    id: item.id.toInt(),
    roomId: item.roomId.toInt(),
    author: item.hasAuthor() ? mapUser(item.author) : null,
    body: item.body,
    replyToId: item.replyToId == Int64.ZERO ? null : item.replyToId.toInt(),
    createdAt: mapUnix(item.createdAt),
    editedAt: mapUnix(item.editedAt),
    attachments: item.attachments.map(mapChatAttachment).toList(),
  );
}

ChatUnreadCounts mapChatUnreadCounts(pb.ChatGetUnreadCountsResponse response) {
  return ChatUnreadCounts(
    total: response.total,
    byRoom: {
      for (final entry in response.byRoom.entries) entry.key.toInt(): entry.value,
    },
  );
}

ChatEvent? mapChatEvent(pb.ChatEvent event) {
  switch (event.whichPayload()) {
    case pb.ChatEvent_Payload.message:
      return ChatEvent(
        kind: ChatEventKind.message,
        message: mapChatMessage(event.message),
        roomId: event.message.roomId.toInt(),
      );
    case pb.ChatEvent_Payload.messageUpdated:
      return ChatEvent(
        kind: ChatEventKind.messageUpdated,
        message: mapChatMessage(event.messageUpdated),
        roomId: event.messageUpdated.roomId.toInt(),
      );
    case pb.ChatEvent_Payload.messageDeleted:
      return ChatEvent(
        kind: ChatEventKind.messageDeleted,
        deletedMessageId: event.messageDeleted.id.toInt(),
        deletedRoomId: event.messageDeleted.roomId.toInt(),
        roomId: event.messageDeleted.roomId.toInt(),
      );
    case pb.ChatEvent_Payload.typing:
      return ChatEvent(
        kind: ChatEventKind.typing,
        roomId: event.typing.roomId.toInt(),
        userId: event.typing.userId.toInt(),
        userName: event.typing.name,
      );
    case pb.ChatEvent_Payload.presence:
      return ChatEvent(
        kind: ChatEventKind.presence,
        userId: event.presence.userId.toInt(),
        isOnline: event.presence.isOnline,
        lastVisitAt: event.presence.lastVisitAt,
      );
    case pb.ChatEvent_Payload.read:
      return ChatEvent(
        kind: ChatEventKind.read,
        roomId: event.read.roomId.toInt(),
        userId: event.read.userId.toInt(),
        lastReadMessageId: event.read.lastReadMessageId.toInt(),
        lastReadAt: mapUnix(event.read.lastReadAt),
      );
    case pb.ChatEvent_Payload.notSet:
      return null;
  }
}
