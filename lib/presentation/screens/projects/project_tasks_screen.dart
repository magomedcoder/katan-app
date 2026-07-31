import 'package:flutter/material.dart';
import 'package:katan/presentation/screens/tasks/tasks_screen.dart';

class ProjectTasksScreen extends StatelessWidget {
  const ProjectTasksScreen({
    super.key,
    required this.projectId,
    required this.projectTitle,
  });

  final int projectId;
  final String projectTitle;

  @override
  Widget build(BuildContext context) {
    return TasksScreen(
      projectId: projectId,
      projectTitle: projectTitle.isEmpty ? 'Проект' : projectTitle,
    );
  }
}
