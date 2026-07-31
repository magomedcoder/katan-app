import 'package:equatable/equatable.dart';
import 'package:katan/domain/entities/user_ref.dart';

class ProjectSummary extends Equatable {
  const ProjectSummary({
    required this.id,
    required this.title,
    required this.description,
    required this.status,
    required this.tasksCount,
    required this.owner,
    required this.closedAt,
  });

  final int id;
  final String title;
  final String description;
  final String status;
  final int tasksCount;
  final UserRef? owner;
  final DateTime? closedAt;

  bool get isClosed => closedAt != null || status == 'closed';

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    status,
    tasksCount,
    owner,
    closedAt,
  ];
}
