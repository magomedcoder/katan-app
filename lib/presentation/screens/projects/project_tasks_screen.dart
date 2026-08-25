import 'package:flutter/material.dart';
import 'package:katan/presentation/screens/tasks/tasks_screen.dart';

class ProjectTasksScreen extends StatelessWidget {
  const ProjectTasksScreen({
    super.key,
    required this.projectId,
    required this.projectTitle,
    this.canWriteTask = true,
  });

  final int projectId;
  final String projectTitle;
  final bool canWriteTask;

  @override
  Widget build(BuildContext context) {
    return TasksScreen(
      projectId: projectId,
      projectTitle: projectTitle.isEmpty ? 'Проект' : projectTitle,
      canWriteTask: canWriteTask,
    );
  }
}
