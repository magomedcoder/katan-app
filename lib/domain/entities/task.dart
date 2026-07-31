import 'package:equatable/equatable.dart';
import 'package:katan/domain/entities/user_ref.dart';

class TaskSummary extends Equatable {
  const TaskSummary({
    required this.id,
    required this.title,
    required this.status,
    required this.projectId,
    required this.projectTitle,
    required this.assignee,
    required this.dueAt,
    required this.isOverdue,
  });

  final int id;
  final String title;
  final String status;
  final int projectId;
  final String projectTitle;
  final UserRef? assignee;
  final DateTime? dueAt;
  final bool isOverdue;

  @override
  List<Object?> get props => [
    id,
    title,
    status,
    projectId,
    projectTitle,
    assignee,
    dueAt,
    isOverdue,
  ];
}

class TaskDetail extends Equatable {
  const TaskDetail({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.projectId,
    required this.projectTitle,
    required this.columnTitle,
    required this.creator,
    required this.assignee,
    required this.dueAt,
    required this.isOverdue,
    required this.createdAt,
    required this.updatedAt,
  });

  final int id;
  final String title;
  final String description;
  final String status;
  final int projectId;
  final String projectTitle;
  final String columnTitle;
  final UserRef? creator;
  final UserRef? assignee;
  final DateTime? dueAt;
  final bool isOverdue;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    status,
    projectId,
    projectTitle,
    columnTitle,
    creator,
    assignee,
    dueAt,
    isOverdue,
    createdAt,
    updatedAt,
  ];
}
