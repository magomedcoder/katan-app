import 'package:katan/domain/entities/kanban.dart';
import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/project.dart';

abstract class ProjectRepository {
  Future<PagedResult<ProjectSummary>> getProjects({
    required int page,
    required int limit,
    String query = '',
  });

  Future<ProjectSummary> getProject(int id);

  Future<ProjectKanban> getProjectKanban(int projectId);

  Future<void> moveTask({
    required int taskId,
    required int columnId,
    int position = 0,
  });

  Future<List<ProjectMember>> getProjectMembers(int projectId);

  Future<void> setProjectMembers({
    required int projectId,
    required List<ProjectMemberInput> members,
  });

  Future<int> createProject({
    required String title,
    required String description,
    int storyPoints = 0,
    List<ProjectMemberInput> members = const [],
  });

  Future<void> closeProject(int id);

  Future<void> deleteProject(int id);
}
