import 'package:equatable/equatable.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/entities/user_ref.dart';

class KanbanTaskCard extends Equatable {
  const KanbanTaskCard({
    required this.id,
    required this.title,
    required this.assignee,
    required this.position,
    required this.storyPoints,
  });

  final int id;
  final String title;
  final UserRef? assignee;
  final int position;
  final int storyPoints;

  @override
  List<Object?> get props => [id, title, assignee, position, storyPoints];
}

class KanbanColumn extends Equatable {
  const KanbanColumn({
    required this.id,
    required this.title,
    required this.sortOrder,
    required this.color,
    required this.tasks,
  });

  final int id;
  final String title;
  final int sortOrder;
  final String color;
  final List<KanbanTaskCard> tasks;

  @override
  List<Object?> get props => [id, title, sortOrder, color, tasks];
}

class ProjectKanban extends Equatable {
  const ProjectKanban({
    required this.project,
    required this.columns,
  });

  final ProjectSummary project;
  final List<KanbanColumn> columns;

  @override
  List<Object?> get props => [project, columns];
}
