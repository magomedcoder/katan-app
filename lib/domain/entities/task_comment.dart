import 'package:equatable/equatable.dart';
import 'package:katan/domain/entities/user_ref.dart';

class TaskComment extends Equatable {
  const TaskComment({
    required this.id,
    required this.taskId,
    required this.content,
    required this.author,
    required this.createdAt,
  });

  final int id;
  final int taskId;
  final String content;
  final UserRef? author;
  final DateTime? createdAt;

  @override
  List<Object?> get props => [id, taskId, content, author, createdAt];
}
