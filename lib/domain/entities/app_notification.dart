import 'package:equatable/equatable.dart';

class AppNotification extends Equatable {
  const AppNotification({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.read,
    this.taskId,
    this.createdAt,
  });

  final int id;
  final String name;
  final String description;
  final String type;
  final int? taskId;
  final DateTime? createdAt;
  final bool read;

  bool get canMarkRead => id > 0 && !read;

  bool get hasTask => taskId != null && taskId! > 0;

  bool get isSystem => type == 'system';

  AppNotification copyWith({bool? read}) {
    return AppNotification(
      id: id,
      name: name,
      description: description,
      type: type,
      taskId: taskId,
      createdAt: createdAt,
      read: read ?? this.read,
    );
  }

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    type,
    taskId,
    createdAt,
    read,
  ];
}

class AppNotificationsPage extends Equatable {
  const AppNotificationsPage({
    required this.items,
    required this.unreadCount
  });

  final List<AppNotification> items;
  final int unreadCount;

  @override
  List<Object?> get props => [items, unreadCount];
}
