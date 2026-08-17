import 'package:equatable/equatable.dart';
import 'package:katan/domain/entities/user_ref.dart';

class ChatRoomPreview extends Equatable {
  const ChatRoomPreview({
    required this.id,
    required this.body,
    required this.userId,
    required this.userName,
    this.createdAt,
  });

  final int id;
  final String body;
  final int userId;
  final String userName;
  final DateTime? createdAt;

  @override
  List<Object?> get props => [id, body, userId, userName, createdAt];
}

class ChatMember extends Equatable {
  const ChatMember({
    required this.user,
    required this.role,
    required this.isOnline,
    required this.lastVisitAt,
    this.joinedAt,
    this.lastReadMessageId,
    this.lastReadAt,
  });

  final UserRef user;
  final String role;
  final bool isOnline;
  final String lastVisitAt;
  final DateTime? joinedAt;
  final int? lastReadMessageId;
  final DateTime? lastReadAt;

  @override
  List<Object?> get props => [
    user,
    role,
    isOnline,
    lastVisitAt,
    joinedAt,
    lastReadMessageId,
    lastReadAt,
  ];
}

class ChatRoom extends Equatable {
  const ChatRoom({
    required this.id,
    required this.type,
    required this.title,
    required this.memberCount,
    required this.unreadCount,
    required this.members,
    this.lastMessage,
    this.othersLastReadMessageId,
    this.othersLastReadAt,
  });

  final int id;
  final String type;
  final String title;
  final int memberCount;
  final int unreadCount;
  final List<ChatMember> members;
  final ChatRoomPreview? lastMessage;
  final int? othersLastReadMessageId;
  final DateTime? othersLastReadAt;

  bool get isGlobal => type == 'global';
  bool get isDirect => type == 'direct';
  bool get isGroup => type == 'group';

  String displayTitle(String currentUsername) {
    if (isDirect) {
      for (final member in members) {
        if (member.user.username != currentUsername) {
          final name = member.user.displayName;
          if (name.isNotEmpty) {
            return name;
          }
        }
      }
    }

    if (title.trim().isNotEmpty) {
      return title.trim();
    }

    if (isGlobal) {
      return 'Общий чат';
    }

    return 'Чат #$id';
  }

  String typeLabel() {
    return switch (type) {
      'global' => 'общий',
      'direct' => 'личный',
      'group' => 'группа',
      _ => type,
    };
  }

  ChatRoom copyWith({
    int? unreadCount,
    List<ChatMember>? members,
    ChatRoomPreview? lastMessage,
  }) {
    return ChatRoom(
      id: id,
      type: type,
      title: title,
      memberCount: memberCount,
      unreadCount: unreadCount ?? this.unreadCount,
      members: members ?? this.members,
      lastMessage: lastMessage ?? this.lastMessage,
      othersLastReadMessageId: othersLastReadMessageId,
      othersLastReadAt: othersLastReadAt,
    );
  }

  @override
  List<Object?> get props => [
    id,
    type,
    title,
    memberCount,
    unreadCount,
    members,
    lastMessage,
    othersLastReadMessageId,
    othersLastReadAt,
  ];
}

class ChatAttachment extends Equatable {
  const ChatAttachment({
    required this.id,
    required this.name,
    required this.mimeType,
    required this.size,
  });

  final String id;
  final String name;
  final String mimeType;
  final int size;

  @override
  List<Object?> get props => [id, name, mimeType, size];
}

class ChatMessage extends Equatable {
  const ChatMessage({
    required this.id,
    required this.roomId,
    required this.body,
    required this.attachments,
    this.author,
    this.replyToId,
    this.createdAt,
    this.editedAt,
  });

  final int id;
  final int roomId;
  final UserRef? author;
  final String body;
  final int? replyToId;
  final DateTime? createdAt;
  final DateTime? editedAt;
  final List<ChatAttachment> attachments;

  bool isOwn(String currentUsername) {
    return author?.username == currentUsername;
  }

  @override
  List<Object?> get props => [
    id,
    roomId,
    author,
    body,
    replyToId,
    createdAt,
    editedAt,
    attachments,
  ];
}

class ChatUnreadCounts extends Equatable {
  const ChatUnreadCounts({
    required this.total,
    required this.byRoom,
  });

  final int total;
  final Map<int, int> byRoom;

  @override
  List<Object?> get props => [total, byRoom];
}

enum ChatEventKind {
  message,
  messageUpdated,
  messageDeleted,
  typing,
  presence,
  read,
}

class ChatEvent extends Equatable {
  const ChatEvent({
    required this.kind,
    this.message,
    this.deletedMessageId,
    this.deletedRoomId,
    this.roomId,
    this.userId,
    this.userName,
    this.isOnline,
    this.lastVisitAt,
    this.lastReadMessageId,
    this.lastReadAt,
  });

  final ChatEventKind kind;
  final ChatMessage? message;
  final int? deletedMessageId;
  final int? deletedRoomId;
  final int? roomId;
  final int? userId;
  final String? userName;
  final bool? isOnline;
  final String? lastVisitAt;
  final int? lastReadMessageId;
  final DateTime? lastReadAt;

  @override
  List<Object?> get props => [
    kind,
    message,
    deletedMessageId,
    deletedRoomId,
    roomId,
    userId,
    userName,
    isOnline,
    lastVisitAt,
    lastReadMessageId,
    lastReadAt,
  ];
}
