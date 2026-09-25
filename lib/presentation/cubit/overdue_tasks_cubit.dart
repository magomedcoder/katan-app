import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/utils/task_status.dart';
import 'package:katan/domain/usecases/get_tasks_usecase.dart';

class OverdueTasksCubit extends Cubit<int> {
  OverdueTasksCubit({
    required GetTasksUseCase getTasksUseCase,
    required this.username,
  })  : _getTasksUseCase = getTasksUseCase,
        super(0);

  static const _scanLimit = 100;

  final GetTasksUseCase _getTasksUseCase;
  final String username;

  Future<void> load() async {
    final me = username.trim().toLowerCase();

    try {
      final result = await _getTasksUseCase(page: 1, limit: _scanLimit);
      final count = result.items.where((task) {
        if (!task.isOverdue || task.status == TaskStatuses.complete) {
          return false;
        }

        if (me.isEmpty) {
          return true;
        }
        return task.assignee?.username.trim().toLowerCase() == me;
      }).length;

      if (!isClosed) {
        emit(count);
      }
    } catch (_) {}
  }
}
