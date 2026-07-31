import 'package:fixnum/fixnum.dart';
import 'package:katan/domain/entities/file_attachment.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart';
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

TaskSummary mapTaskSummary(task_pb.TaskItem item) {
  return TaskSummary(
    id: item.id.toInt(),
    title: item.title,
    status: item.status,
    projectId: item.projectId.toInt(),
    projectTitle: item.projectTitle,
    assignee: item.hasAssignee() ? mapUser(item.assignee) : null,
    dueAt: mapUnix(item.dueAt),
    isOverdue: item.isOverdue,
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
    columnTitle: item.columnTitle,
    creator: item.hasCreator() ? mapUser(item.creator) : null,
    assignee: item.hasAssignee() ? mapUser(item.assignee) : null,
    dueAt: mapUnix(item.dueAt),
    isOverdue: item.isOverdue,
    createdAt: mapUnix(item.createdAt),
    updatedAt: mapUnix(item.updatedAt),
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

ProjectSummary mapProjectSummary(project_pb.ProjectItem item) {
  return ProjectSummary(
    id: item.id.toInt(),
    title: item.title,
    description: item.description,
    status: item.status,
    tasksCount: item.tasksCount,
    owner: item.hasOwner() ? mapUser(item.owner) : null,
    closedAt: mapUnix(item.closedAt),
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
