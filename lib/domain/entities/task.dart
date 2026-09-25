import 'package:equatable/equatable.dart';
import 'package:katan/domain/entities/task_tag.dart';
import 'package:katan/domain/entities/user_ref.dart';

class TaskSummary extends Equatable {
  const TaskSummary({
    required this.id,
    required this.title,
    required this.status,
    required this.projectId,
    required this.projectTitle,
    required this.columnId,
    required this.columnTitle,
    required this.creator,
    required this.assignee,
    required this.dueAt,
    required this.isOverdue,
    required this.isPaused,
    required this.workStartedAt,
    required this.storyPoints,
    required this.subtaskCount,
    required this.subtaskCompletedCount,
  });

  final int id;
  final String title;
  final String status;
  final int projectId;
  final String projectTitle;
  final int columnId;
  final String columnTitle;
  final UserRef? creator;
  final UserRef? assignee;
  final DateTime? dueAt;
  final bool isOverdue;
  final bool isPaused;
  final DateTime? workStartedAt;
  final int storyPoints;
  final int subtaskCount;
  final int subtaskCompletedCount;

  bool get isRunning => workStartedAt != null;

  @override
  List<Object?> get props => [
    id,
    title,
    status,
    projectId,
    projectTitle,
    columnId,
    columnTitle,
    creator,
    assignee,
    dueAt,
    isOverdue,
    isPaused,
    workStartedAt,
    storyPoints,
    subtaskCount,
    subtaskCompletedCount,
  ];
}

class TaskWorkPause extends Equatable {
  const TaskWorkPause({
    required this.id,
    required this.pausedAt,
    required this.resumedAt,
    required this.workSecondsBefore,
    required this.user,
  });

  final int id;
  final DateTime? pausedAt;
  final DateTime? resumedAt;
  final int workSecondsBefore;
  final UserRef? user;

  bool get isOpen => resumedAt == null;

  @override
  List<Object?> get props => [id, pausedAt, resumedAt, workSecondsBefore, user];
}

class TaskDetail extends Equatable {
  const TaskDetail({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.projectId,
    required this.projectTitle,
    required this.columnId,
    required this.columnTitle,
    required this.creator,
    required this.assignee,
    required this.observers,
    required this.tags,
    required this.dueAt,
    required this.isOverdue,
    required this.createdAt,
    required this.updatedAt,
    required this.storyPoints,
    required this.workStartedAt,
    required this.timeSpentSeconds,
    required this.isPaused,
    required this.workPauses,
    required this.parentId,
    required this.parentTitle,
    required this.subtaskCount,
    required this.subtaskCompletedCount,
    required this.subtasks,
    required this.objectType,
    required this.objectId,
    required this.objectName,
  });

  final int id;
  final String title;
  final String description;
  final String status;
  final int projectId;
  final String projectTitle;
  final int columnId;
  final String columnTitle;
  final UserRef? creator;
  final UserRef? assignee;
  final List<UserRef> observers;
  final List<TaskTag> tags;
  final DateTime? dueAt;
  final bool isOverdue;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int storyPoints;
  final DateTime? workStartedAt;
  final int timeSpentSeconds;
  final bool isPaused;
  final List<TaskWorkPause> workPauses;
  final int parentId;
  final String parentTitle;
  final int subtaskCount;
  final int subtaskCompletedCount;
  final List<TaskSummary> subtasks;
  final int objectType;
  final int objectId;
  final String objectName;

  bool get isRunning => workStartedAt != null;

  bool get isComplete => status == 'complete';

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    status,
    projectId,
    projectTitle,
    columnId,
    columnTitle,
    creator,
    assignee,
    observers,
    tags,
    dueAt,
    isOverdue,
    createdAt,
    updatedAt,
    storyPoints,
    workStartedAt,
    timeSpentSeconds,
    isPaused,
    workPauses,
    parentId,
    parentTitle,
    subtaskCount,
    subtaskCompletedCount,
    subtasks,
    objectType,
    objectId,
    objectName,
  ];
}

class TaskWorkflowResult extends Equatable {
  const TaskWorkflowResult({
    required this.task,
    required this.changed,
    required this.message,
  });

  final TaskDetail task;
  final bool changed;
  final String message;

  @override
  List<Object?> get props => [task, changed, message];
}
