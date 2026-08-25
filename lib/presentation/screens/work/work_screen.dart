import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/presentation/screens/projects/projects_screen.dart';
import 'package:katan/presentation/screens/tasks/tasks_screen.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({
    super.key,
    this.canWriteTask = true,
  });

  final bool canWriteTask;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColors.fill,
        appBar: AppBar(
          title: const Text('Задачи'),
          bottom: const TabBar(
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.textSecondary,
            indicatorColor: AppColors.primary,
            indicatorWeight: 3,
            labelStyle: TextStyle(fontWeight: FontWeight.w600),
            tabs: [
              Tab(text: 'Все задачи'),
              Tab(text: 'Проекты'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TasksScreen(embedded: true, canWriteTask: canWriteTask),
            const ProjectsScreen(embedded: true),
          ],
        ),
      ),
    );
  }
}
