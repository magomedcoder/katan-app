import 'package:equatable/equatable.dart';
import 'package:katan/domain/entities/user_ref.dart';

abstract final class ProjectRoles {
  static const admin = 'admin';
  static const member = 'member';

  static const options = <({String value, String label})>[
    (value: admin, label: 'Админ'),
    (value: member, label: 'Участник'),
  ];

  static String label(String role) => switch (role) {
    admin => 'Админ',
    member => 'Участник',
    _ => role,
  };

  static bool canManage(String? role) => role == admin;

  static bool canModifyTasks(String? role) => role == admin || role == member;

  static bool canDelete(String? role) => role == admin;
}

class ProjectSummary extends Equatable {
  const ProjectSummary({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.tasksCount,
    required this.owner,
    required this.closedAt,
    required this.closedBy,
    required this.myRole,
    required this.storyPoints,
    required this.createdAt,
  });

  final int id;
  final String title;
  final String description;
  final String status;
  final int tasksCount;
  final UserRef? owner;
  final DateTime? closedAt;
  final UserRef? closedBy;
  final String myRole;
  final int storyPoints;
  final DateTime? createdAt;

  bool get isClosed => closedAt != null || status == 'closed';

  bool get isAdmin => ProjectRoles.canManage(myRole);

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    status,
    tasksCount,
    owner,
    closedAt,
    closedBy,
    myRole,
    storyPoints,
    createdAt,
  ];
}

class ProjectMember extends Equatable {
  const ProjectMember({
    required this.id,
    required this.user,
    required this.role,
  });

  final int id;
  final UserRef? user;
  final String role;

  @override
  List<Object?> get props => [id, user, role];
}

class ProjectMemberInput extends Equatable {
  const ProjectMemberInput({
    required this.userId,
    required this.role,
  });

  final int userId;
  final String role;

  @override
  List<Object?> get props => [userId, role];
}
