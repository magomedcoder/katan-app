import 'package:katan/domain/entities/task_tag.dart';
import 'package:katan/domain/repositories/task_repository.dart';

class CreateTaskLabelUseCase {
  const CreateTaskLabelUseCase(this._repository);

  final TaskRepository _repository;

  Future<TaskLabel> call({
    required String name,
    String color = '#409eff',
    int projectId = 0,
  }) => _repository.createTaskLabel(name: name, color: color, projectId: projectId);
}
