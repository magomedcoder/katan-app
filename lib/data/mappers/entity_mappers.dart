import 'package:fixnum/fixnum.dart';
import 'package:katan/domain/entities/file_attachment.dart';
import 'package:katan/domain/entities/kanban.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart';
import 'package:katan/domain/entities/task_history_entry.dart';
import 'package:katan/domain/entities/task_tag.dart';
import 'package:katan/domain/entities/user_ref.dart';
import 'package:katan/generated/pb/common.pb.dart' as pb;
import 'package:katan/generated/pb/file.pb.dart' as file_pb;
import 'package:katan/generated/pb/project.pb.dart' as project_pb;
import 'package:katan/generated/pb/task.pb.dart' as task_pb;

UserRef? mapUser(pb.BaseUser? user) {
  if (user == null || user.id == Int64.ZERO) {
    return null;
  }

  final mapped = UserRef(
    id: user.id.toInt(),
    username: user.username,
    name: user.name,
    surname: user.surname,
  );
  return mapped.isEmpty ? null : mapped;
}

DateTime? mapUnix(Int64 value) {
  if (value == Int64.ZERO) {
    return null;
  }

  return DateTime.fromMillisecondsSinceEpoch(value.toInt() * 1000, isUtc: true).toLocal();
}

TaskTag mapTaskTag(pb.Tag tag) {
  return TaskTag(id: tag.id.toInt(), name: tag.name);
}

TaskLabel mapTaskLabel(task_pb.TaskTagLabel label) {
  return TaskLabel(
    id: label.id.toInt(),
    name: label.name,
    color: label.color,
  );
}

TaskWorkPause mapTaskWorkPause(task_pb.TaskWorkPause pause) {
  return TaskWorkPause(
    id: pause.id.toInt(),
    pausedAt: mapUnix(pause.pausedAt),
    resumedAt: mapUnix(pause.resumedAt),
    workSecondsBefore: pause.workSecondsBefore.toInt(),
    user: pause.hasUser() ? mapUser(pause.user) : null,
  );
}

TaskSummary mapTaskSummary(task_pb.TaskItem item) {
  return TaskSummary(
    id: item.id.toInt(),
    title: item.title,
    status: item.status,
    projectId: item.projectId.toInt(),
    projectTitle: item.projectTitle,
    columnId: item.columnId.toInt(),
    columnTitle: item.columnTitle,
    creator: item.hasCreator() ? mapUser(item.creator) : null,
    assignee: item.hasAssignee() ? mapUser(item.assignee) : null,
    dueAt: mapUnix(item.dueAt),
    isOverdue: item.isOverdue,
    isPaused: item.isPaused,
    workStartedAt: mapUnix(item.workStartedAt),
    storyPoints: item.storyPoints,
    subtaskCount: item.subtaskCount,
    subtaskCompletedCount: item.subtaskCompletedCount,
  );
}

TaskDetail mapTaskDetail(task_pb.TaskItem item) {
  return TaskDetail(
    id: item.id.toInt(),
    title: item.title,
    description: item.description,
    status: item.status,
    projectId: item.projectId.toInt(),
    projectTitle: item.projectTitle,
    columnId: item.columnId.toInt(),
    columnTitle: item.columnTitle,
    creator: item.hasCreator() ? mapUser(item.creator) : null,
    assignee: item.hasAssignee() ? mapUser(item.assignee) : null,
    observers: item.observers.map(mapUser).whereType<UserRef>().toList(),
    tags: item.tags.map(mapTaskTag).toList(),
    dueAt: mapUnix(item.dueAt),
    isOverdue: item.isOverdue,
    createdAt: mapUnix(item.createdAt),
    updatedAt: mapUnix(item.updatedAt),
    storyPoints: item.storyPoints,
    workStartedAt: mapUnix(item.workStartedAt),
    timeSpentSeconds: item.timeSpentSeconds.toInt(),
    isPaused: item.isPaused,
    workPauses: item.workPauses.map(mapTaskWorkPause).toList(),
    parentId: item.parentId.toInt(),
    parentTitle: item.parentTitle,
    subtaskCount: item.subtaskCount,
    subtaskCompletedCount: item.subtaskCompletedCount,
    subtasks: item.subtasks.map(mapTaskSummary).toList(),
    objectType: item.objectType,
    objectId: item.objectId.toInt(),
    objectName: item.objectName,
  );
}

TaskComment mapTaskComment(task_pb.TaskComment item) {
  return TaskComment(
    id: item.id.toInt(),
    taskId: item.taskId.toInt(),
    content: item.content,
    author: item.hasAuthor() ? mapUser(item.author) : null,
    createdAt: mapUnix(item.createdAt),
  );
}

TaskHistoryEntry mapTaskHistoryEntry(task_pb.TaskHistoryItem item) {
  return TaskHistoryEntry(
    id: item.id.toInt(),
    user: item.hasUser() ? mapUser(item.user) : null,
    action: item.action,
    message: item.message,
    fieldName: item.fieldName,
    oldValue: item.oldValue,
    newValue: item.newValue,
    createdAt: mapUnix(item.createdAt),
  );
}

ProjectSummary mapProjectSummary(project_pb.ProjectItem item) {
  return ProjectSummary(
    id: item.id.toInt(),
    title: item.title,
    description: item.description,
    status: item.status,
    tasksCount: item.tasksCount,
    owner: item.hasOwner() ? mapUser(item.owner) : null,
    closedAt: mapUnix(item.closedAt),
    closedBy: item.hasClosedBy() ? mapUser(item.closedBy) : null,
    myRole: item.myRole,
    storyPoints: item.storyPoints,
    createdAt: mapUnix(item.createdAt),
  );
}

ProjectMember mapProjectMember(project_pb.ProjectMember item) {
  return ProjectMember(
    id: item.id.toInt(),
    user: item.hasUser() ? mapUser(item.user) : null,
    role: item.role,
  );
}

KanbanTaskCard mapKanbanTaskCard(project_pb.TaskCard card) {
  return KanbanTaskCard(
    id: card.id.toInt(),
    title: card.title,
    assignee: card.hasAssignee() ? mapUser(card.assignee) : null,
    position: card.position,
    storyPoints: card.storyPoints,
  );
}

KanbanColumn mapKanbanColumn(project_pb.KanbanColumn column) {
  return KanbanColumn(
    id: column.id.toInt(),
    title: column.title,
    sortOrder: column.sortOrder,
    color: column.color,
    tasks: column.tasks.map(mapKanbanTaskCard).toList(),
  );
}

FileAttachment mapFileAttachment(file_pb.File item) {
  return FileAttachment(
    id: item.id.toInt(),
    name: item.name,
    url: item.url,
    user: item.hasUser() ? mapUser(item.user) : null,
    createdAt: mapUnix(item.createdAt),
  );
}
