import 'dart:async';
import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/domain/entities/file_attachment.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart';
import 'package:katan/domain/entities/task_history_entry.dart';
import 'package:katan/domain/entities/task_tag.dart';
import 'package:katan/domain/repositories/file_repository.dart';
import 'package:katan/domain/usecases/add_task_comment_usecase.dart';
import 'package:katan/domain/usecases/create_task_label_usecase.dart';
import 'package:katan/domain/usecases/delete_task_comment_usecase.dart';
import 'package:katan/domain/usecases/delete_task_file_usecase.dart';
import 'package:katan/domain/usecases/delete_task_label_usecase.dart';
import 'package:katan/domain/usecases/delete_task_usecase.dart';
import 'package:katan/domain/usecases/get_task_comments_usecase.dart';
import 'package:katan/domain/usecases/get_task_files_usecase.dart';
import 'package:katan/domain/usecases/get_task_history_usecase.dart';
import 'package:katan/domain/usecases/get_task_labels_usecase.dart';
import 'package:katan/domain/usecases/get_task_usecase.dart';
import 'package:katan/domain/usecases/run_task_workflow_action_usecase.dart';
import 'package:katan/domain/usecases/set_task_assignee_usecase.dart';
import 'package:katan/domain/usecases/set_task_observers_usecase.dart';
import 'package:katan/domain/usecases/set_task_tags_usecase.dart';
import 'package:katan/domain/usecases/update_task_usecase.dart';
import 'package:katan/domain/usecases/upload_task_file_usecase.dart';
import 'package:katan/presentation/cubit/auth_cubit.dart';

sealed class TaskDetailState extends Equatable {
  const TaskDetailState();

  @override
  List<Object?> get props => [];
}

class TaskDetailInitial extends TaskDetailState {
  const TaskDetailInitial();
}

class TaskDetailLoading extends TaskDetailState {
  const TaskDetailLoading();
}

class TaskDetailDeleted extends TaskDetailState {
  const TaskDetailDeleted();
}

class TaskDetailLoaded extends TaskDetailState {
  const TaskDetailLoaded({
    required this.task,
    required this.comments,
    required this.files,
    required this.history,
    this.commentFiles = const {},
    this.submittingComment = false,
    this.uploadingFile = false,
    this.historyLoading = false,
    this.runningAction,
    this.actionError,
    this.actionMessage,
    this.tick = 0,
  });

  final TaskDetail task;
  final List<TaskComment> comments;
  final List<FileAttachment> files;
  final List<TaskHistoryEntry> history;
  final Map<int, List<FileAttachment>> commentFiles;
  final bool submittingComment;
  final bool uploadingFile;
  final bool historyLoading;
  final String? runningAction;
  final String? actionError;
  final String? actionMessage;
  final int tick;

  bool get busy => runningAction != null;

  TaskDetailLoaded copyWith({
    TaskDetail? task,
    List<TaskComment>? comments,
    List<FileAttachment>? files,
    List<TaskHistoryEntry>? history,
    Map<int, List<FileAttachment>>? commentFiles,
    bool? submittingComment,
    bool? uploadingFile,
    bool? historyLoading,
    String? runningAction,
    bool clearRunningAction = false,
    String? actionError,
    bool clearActionError = false,
    String? actionMessage,
    bool clearActionMessage = false,
    int? tick,
  }) {
    return TaskDetailLoaded(
      task: task ?? this.task,
      comments: comments ?? this.comments,
      files: files ?? this.files,
      history: history ?? this.history,
      commentFiles: commentFiles ?? this.commentFiles,
      submittingComment: submittingComment ?? this.submittingComment,
      uploadingFile: uploadingFile ?? this.uploadingFile,
      historyLoading: historyLoading ?? this.historyLoading,
      runningAction: clearRunningAction ? null : (runningAction ?? this.runningAction),
      actionError: clearActionError ? null : (actionError ?? this.actionError),
      actionMessage: clearActionMessage ? null : (actionMessage ?? this.actionMessage),
      tick: tick ?? this.tick,
    );
  }

  @override
  List<Object?> get props => [
    task,
    comments,
    files,
    history,
    commentFiles,
    submittingComment,
    uploadingFile,
    historyLoading,
    runningAction,
    actionError,
    actionMessage,
    tick,
  ];
}

class TaskDetailFailure extends TaskDetailState {
  const TaskDetailFailure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class TaskDetailCubit extends Cubit<TaskDetailState> {
  TaskDetailCubit({
    required this.taskId,
    required GetTaskUseCase getTaskUseCase,
    required GetTaskCommentsUseCase getTaskCommentsUseCase,
    required AddTaskCommentUseCase addTaskCommentUseCase,
    required DeleteTaskCommentUseCase deleteTaskCommentUseCase,
    required GetTaskHistoryUseCase getTaskHistoryUseCase,
    required GetTaskFilesUseCase getTaskFilesUseCase,
    required UploadTaskFileUseCase uploadTaskFileUseCase,
    required DeleteTaskFileUseCase deleteTaskFileUseCase,
    required UpdateTaskUseCase updateTaskUseCase,
    required DeleteTaskUseCase deleteTaskUseCase,
    required RunTaskWorkflowActionUseCase runTaskWorkflowActionUseCase,
    required SetTaskAssigneeUseCase setTaskAssigneeUseCase,
    required SetTaskObserversUseCase setTaskObserversUseCase,
    required SetTaskTagsUseCase setTaskTagsUseCase,
    required GetTaskLabelsUseCase getTaskLabelsUseCase,
    required CreateTaskLabelUseCase createTaskLabelUseCase,
    required DeleteTaskLabelUseCase deleteTaskLabelUseCase,
    required FileRepository fileRepository,
    required AuthCubit authCubit,
  })  : _getTaskUseCase = getTaskUseCase,
        _getTaskCommentsUseCase = getTaskCommentsUseCase,
        _addTaskCommentUseCase = addTaskCommentUseCase,
        _deleteTaskCommentUseCase = deleteTaskCommentUseCase,
        _getTaskHistoryUseCase = getTaskHistoryUseCase,
        _getTaskFilesUseCase = getTaskFilesUseCase,
        _uploadTaskFileUseCase = uploadTaskFileUseCase,
        _deleteTaskFileUseCase = deleteTaskFileUseCase,
        _updateTaskUseCase = updateTaskUseCase,
        _deleteTaskUseCase = deleteTaskUseCase,
        _runTaskWorkflowActionUseCase = runTaskWorkflowActionUseCase,
        _setTaskAssigneeUseCase = setTaskAssigneeUseCase,
        _setTaskObserversUseCase = setTaskObserversUseCase,
        _setTaskTagsUseCase = setTaskTagsUseCase,
        _getTaskLabelsUseCase = getTaskLabelsUseCase,
        _createTaskLabelUseCase = createTaskLabelUseCase,
        _deleteTaskLabelUseCase = deleteTaskLabelUseCase,
        _fileRepository = fileRepository,
        _authCubit = authCubit,
        super(const TaskDetailInitial());

  final int taskId;
  final GetTaskUseCase _getTaskUseCase;
  final GetTaskCommentsUseCase _getTaskCommentsUseCase;
  final AddTaskCommentUseCase _addTaskCommentUseCase;
  final DeleteTaskCommentUseCase _deleteTaskCommentUseCase;
  final GetTaskHistoryUseCase _getTaskHistoryUseCase;
  final GetTaskFilesUseCase _getTaskFilesUseCase;
  final UploadTaskFileUseCase _uploadTaskFileUseCase;
  final DeleteTaskFileUseCase _deleteTaskFileUseCase;
  final UpdateTaskUseCase _updateTaskUseCase;
  final DeleteTaskUseCase _deleteTaskUseCase;
  final RunTaskWorkflowActionUseCase _runTaskWorkflowActionUseCase;
  final SetTaskAssigneeUseCase _setTaskAssigneeUseCase;
  final SetTaskObserversUseCase _setTaskObserversUseCase;
  final SetTaskTagsUseCase _setTaskTagsUseCase;
  final GetTaskLabelsUseCase _getTaskLabelsUseCase;
  final CreateTaskLabelUseCase _createTaskLabelUseCase;
  final DeleteTaskLabelUseCase _deleteTaskLabelUseCase;
  final FileRepository _fileRepository;
  final AuthCubit _authCubit;

  Timer? _workTimer;

  @override
  Future<void> close() {
    _workTimer?.cancel();
    return super.close();
  }

  Future<void> load() async {
    emit(const TaskDetailLoading());
    try {
      final task = await _getTaskUseCase(taskId);
      final comments = await _getTaskCommentsUseCase(taskId);
      final files = await _getTaskFilesUseCase(taskId);
      final history = await _safeHistory();
      final commentFiles = await _loadCommentFiles(comments);

      emit(TaskDetailLoaded(
        task: task,
        comments: _sortComments(comments),
        files: files.items,
        history: history,
        commentFiles: commentFiles,
      ));
      _syncWorkTimer(task);
    } on AuthFailure catch (e) {
      emit(TaskDetailFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(TaskDetailFailure(e.message));
    } catch (e) {
      emit(TaskDetailFailure(e.toString()));
    }
  }

  Future<void> refreshTask() async {
    final current = state;
    if (current is! TaskDetailLoaded) {
      return;
    }

    try {
      final task = await _getTaskUseCase(taskId);
      final history = await _safeHistory();
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(task: task, history: history));
        _syncWorkTimer(task);
      }
    } on AuthFailure catch (e) {
      emit(TaskDetailFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      _fail(e.message);
    } catch (e) {
      _fail(e.toString());
    }
  }

  Future<bool> runWorkflowAction(String action) async {
    final current = state;
    if (current is! TaskDetailLoaded || current.busy) {
      return false;
    }

    emit(current.copyWith(
      runningAction: action,
      clearActionError: true,
      clearActionMessage: true,
    ));

    try {
      final result = await _runTaskWorkflowActionUseCase(
        taskId: taskId,
        action: action,
      );

      if (!result.changed) {
        final latest = state;
        if (latest is TaskDetailLoaded) {
          emit(latest.copyWith(
            clearRunningAction: true,
            actionMessage: result.message.trim().isEmpty
              ? 'Изменений не требуется'
              : result.message.trim(),
          ));
        }
        return false;
      }

      final history = await _safeHistory();
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(
          task: result.task,
          history: history,
          clearRunningAction: true,
          actionMessage: _workflowSuccessMessage(action, result.task),
        ));
        _syncWorkTimer(result.task);
      }
      return true;
    } on AuthFailure catch (e) {
      emit(TaskDetailFailure(e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      _fail(e.message, clearRunningAction: true);
      return false;
    } catch (e) {
      _fail(e.toString(), clearRunningAction: true);
      return false;
    }
  }

  Future<bool> updateTask({
    required String title,
    required String description,
    DateTime? dueAt,
    int storyPoints = 0,
  }) async {
    final current = state;
    if (current is! TaskDetailLoaded) {
      return false;
    }

    emit(current.copyWith(runningAction: 'update', clearActionError: true));
    try {
      final task = await _updateTaskUseCase(
        taskId: taskId,
        title: title,
        description: description,
        dueAt: dueAt,
        storyPoints: storyPoints,
      );
      final history = await _safeHistory();
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(
          task: task,
          history: history,
          clearRunningAction: true,
          actionMessage: 'Сохранено',
        ));
      }
      return true;
    } on AuthFailure catch (e) {
      emit(TaskDetailFailure(e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      _fail(e.message, clearRunningAction: true);
      return false;
    } catch (e) {
      _fail(e.toString(), clearRunningAction: true);
      return false;
    }
  }

  Future<bool> deleteTask() async {
    final current = state;
    if (current is! TaskDetailLoaded) {
      return false;
    }

    emit(current.copyWith(runningAction: 'delete', clearActionError: true));
    try {
      await _deleteTaskUseCase(taskId);
      emit(const TaskDetailDeleted());
      return true;
    } on AuthFailure catch (e) {
      emit(TaskDetailFailure(e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      _fail(e.message, clearRunningAction: true);
      return false;
    } catch (e) {
      _fail(e.toString(), clearRunningAction: true);
      return false;
    }
  }

  Future<bool> setAssignee(int assigneeId) async {
    return _mutate('assignee', () async {
      await _setTaskAssigneeUseCase(
          taskId: taskId,
          assigneeId: assigneeId,
      );
    }, successMessage: assigneeId > 0 ? 'Исполнитель назначен' : 'Исполнитель снят');
  }

  Future<bool> setObservers(List<int> observerIds) async {
    return _mutate('observers', () async {
      await _setTaskObserversUseCase(
          taskId: taskId,
          observerIds: observerIds,
      );
    }, successMessage: 'Наблюдатели сохранены');
  }

  Future<bool> setTags(List<int> tagIds) async {
    return _mutate('tags', () async {
      await _setTaskTagsUseCase(
          taskId: taskId,
          tagIds: tagIds,
      );
    }, successMessage: 'Теги сохранены');
  }

  Future<List<TaskLabel>> loadLabels(int projectId) => _getTaskLabelsUseCase(projectId: projectId);

  Future<TaskLabel> createLabel({
    required String name,
    required int projectId,
  }) => _createTaskLabelUseCase(name: name, projectId: projectId);

  Future<void> deleteLabel(int labelId) => _deleteTaskLabelUseCase(labelId);

  Future<bool> addComment(
    String content, {
    List<({String fileName, Uint8List bytes})> attachments = const [],
  }) async {
    final current = state;
    if (current is! TaskDetailLoaded) {
      return false;
    }

    final trimmed = content.trim();
    if (trimmed.isEmpty && attachments.isEmpty) {
      return false;
    }

    emit(current.copyWith(submittingComment: true, clearActionError: true));
    try {
      final comment = await _addTaskCommentUseCase(
        taskId: taskId,
        content: trimmed.isEmpty ? 'Вложение' : trimmed,
      );

      for (final attachment in attachments) {
        await _fileRepository.uploadFile(
          objectType: FileObjectType.taskComment,
          objectId: comment.id,
          fileName: attachment.fileName,
          bytes: attachment.bytes,
        );
      }

      final comments = await _getTaskCommentsUseCase(taskId);
      final commentFiles = await _loadCommentFiles(comments);
      final history = await _safeHistory();
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(
          comments: _sortComments(comments),
          commentFiles: commentFiles,
          history: history,
          submittingComment: false,
          clearActionError: true,
        ));
      }
      return true;
    } on AuthFailure catch (e) {
      emit(TaskDetailFailure(e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      _fail(e.message, submittingComment: false);
      return false;
    } catch (e) {
      _fail(e.toString(), submittingComment: false);
      return false;
    }
  }

  Future<void> deleteComment(int commentId) async {
    final current = state;
    if (current is! TaskDetailLoaded) {
      return;
    }

    try {
      await _deleteTaskCommentUseCase(commentId);
      final comments = await _getTaskCommentsUseCase(taskId);
      final commentFiles = await _loadCommentFiles(comments);
      final history = await _safeHistory();
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(
          comments: _sortComments(comments),
          commentFiles: commentFiles,
          history: history,
          actionMessage: 'Комментарий удалён',
        ));
      }
    } on AuthFailure catch (e) {
      emit(TaskDetailFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      _fail(e.message);
    } catch (e) {
      _fail(e.toString());
    }
  }

  Future<void> uploadFile({
    required String fileName,
    required Uint8List bytes,
  }) async {
    final current = state;
    if (current is! TaskDetailLoaded) {
      return;
    }

    emit(current.copyWith(uploadingFile: true, clearActionError: true));
    try {
      await _uploadTaskFileUseCase(
        taskId: taskId,
        fileName: fileName,
        bytes: bytes,
      );
      final files = await _getTaskFilesUseCase(taskId);
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(
          files: files.items,
          uploadingFile: false,
          clearActionError: true,
        ));
      }
    } on AuthFailure catch (e) {
      emit(TaskDetailFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      _fail(e.message, uploadingFile: false);
    } catch (e) {
      _fail(e.toString(), uploadingFile: false);
    }
  }

  Future<void> deleteFile(int attachmentId) async {
    final current = state;
    if (current is! TaskDetailLoaded) {
      return;
    }

    try {
      await _deleteTaskFileUseCase(attachmentId);
      final files = await _getTaskFilesUseCase(taskId);
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(
            files: files.items,
            clearActionError: true,
        ));
      }
    } on AuthFailure catch (e) {
      emit(TaskDetailFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      _fail(e.message);
    } catch (e) {
      _fail(e.toString());
    }
  }

  void consumeMessages() {
    final current = state;
    if (current is TaskDetailLoaded) {
      emit(current.copyWith(clearActionError: true, clearActionMessage: true));
    }
  }

  String downloadUrl(String fileUrl) => _fileRepository.downloadUrl(fileUrl);

  String viewUrl(String fileUrl) => _fileRepository.viewUrl(fileUrl);

  Future<bool> _mutate(
    String action,
    Future<void> Function() run, {
    String? successMessage,
  }) async {
    final current = state;
    if (current is! TaskDetailLoaded || current.busy) {
      return false;
    }

    emit(current.copyWith(runningAction: action, clearActionError: true));
    try {
      await run();
      final task = await _getTaskUseCase(taskId);
      final history = await _safeHistory();
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(
          task: task,
          history: history,
          clearRunningAction: true,
          actionMessage: successMessage,
        ));
      }
      return true;
    } on AuthFailure catch (e) {
      emit(TaskDetailFailure(e.message));
      await _authCubit.logout();
      return false;
    } on Failure catch (e) {
      _fail(e.message, clearRunningAction: true);
      return false;
    } catch (e) {
      _fail(e.toString(), clearRunningAction: true);
      return false;
    }
  }

  void _fail(
    String message, {
    bool clearRunningAction = false,
    bool? submittingComment,
    bool? uploadingFile,
  }) {
    final latest = state;
    if (latest is TaskDetailLoaded) {
      emit(latest.copyWith(
        actionError: message,
        clearRunningAction: clearRunningAction,
        submittingComment: submittingComment,
        uploadingFile: uploadingFile,
      ));
    }
  }

  String _workflowSuccessMessage(String action, TaskDetail task) {
    if (action == TaskWorkflowActions.start && task.workPauses.isNotEmpty) {
      return 'Работа возобновлена';
    }

    return switch (action) {
      TaskWorkflowActions.start => 'Задача взята в работу',
      TaskWorkflowActions.pause => 'Работа поставлена на паузу',
      TaskWorkflowActions.complete => 'Задача завершена',
      TaskWorkflowActions.postpone => 'Задача отложена',
      TaskWorkflowActions.reopen => 'Задача возобновлена',
      _ => 'Готово',
    };
  }

  List<TaskComment> _sortComments(List<TaskComment> comments) {
    final sorted = [...comments]..sort((a, b) {
      final left = a.createdAt;
      final right = b.createdAt;
      if (left == null || right == null) {
        return b.id.compareTo(a.id);
      }
      return right.compareTo(left);
    });

    return sorted;
  }

  Future<List<TaskHistoryEntry>> _safeHistory() async {
    try {
      return await _getTaskHistoryUseCase(taskId);
    } on AuthFailure {
      rethrow;
    } catch (_) {
      return const [];
    }
  }

  Future<Map<int, List<FileAttachment>>> _loadCommentFiles(
    List<TaskComment> comments,
  ) async {
    final result = <int, List<FileAttachment>>{};
    for (final comment in comments) {
      try {
        final files = await _fileRepository.getFiles(
          objectType: FileObjectType.taskComment,
          objectId: comment.id,
        );
        if (files.items.isNotEmpty) {
          result[comment.id] = files.items;
        }
      } catch (_) {}
    }

    return result;
  }

  void _syncWorkTimer(TaskDetail task) {
    _workTimer?.cancel();
    _workTimer = null;

    final hasOpenPause = task.workPauses.any((pause) => pause.isOpen);
    if (!task.isRunning && !hasOpenPause) {
      return;
    }

    _workTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      final current = state;
      if (current is! TaskDetailLoaded) {
        return;
      }
      emit(current.copyWith(tick: current.tick + 1));
    });
  }
}
