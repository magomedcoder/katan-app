import 'package:katan/data/data_sources/remote/project_remote_datasource.dart';
import 'package:katan/domain/entities/kanban.dart';
import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/entities/project.dart';
import 'package:katan/domain/repositories/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  ProjectRepositoryImpl(this._remote);

  final ProjectRemoteDataSource _remote;

  @override
  Future<PagedResult<ProjectSummary>> getProjects({
    required int page,
    required int limit,
    String query = '',
  }) => _remote.getProjects(
      page: page,
      limit: limit,
      query: query
  );

  @override
  Future<ProjectSummary> getProject(int id) => _remote.getProject(id);

  @override
  Future<ProjectKanban> getProjectKanban(int projectId) => _remote.getProjectKanban(projectId);

  @override
  Future<void> moveTask({
    required int taskId,
    required int columnId,
    int position = 0,
  }) => _remote.moveTask(
    taskId: taskId,
    columnId: columnId,
    position: position,
  );

  @override
  Future<List<ProjectMember>> getProjectMembers(int projectId) => _remote.getProjectMembers(projectId);

  @override
  Future<void> setProjectMembers({
    required int projectId,
    required List<ProjectMemberInput> members,
  }) => _remote.setProjectMembers(projectId: projectId, members: members);

  @override
  Future<int> createProject({
    required String title,
    required String description,
    int storyPoints = 0,
    List<ProjectMemberInput> members = const [],
  }) => _remote.createProject(
    title: title,
    description: description,
    storyPoints: storyPoints,
    members: members,
  );

  @override
  Future<void> closeProject(int id) => _remote.closeProject(id);

  @override
  Future<void> deleteProject(int id) => _remote.deleteProject(id);
}
