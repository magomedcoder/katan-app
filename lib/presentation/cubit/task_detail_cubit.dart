import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/core/error/failures.dart';
import 'package:katan/domain/entities/file_attachment.dart';
import 'package:katan/domain/entities/task.dart';
import 'package:katan/domain/entities/task_comment.dart';
import 'package:katan/domain/repositories/file_repository.dart';
import 'package:katan/domain/usecases/add_task_comment_usecase.dart';
import 'package:katan/domain/usecases/delete_task_file_usecase.dart';
import 'package:katan/domain/usecases/get_task_comments_usecase.dart';
import 'package:katan/domain/usecases/get_task_files_usecase.dart';
import 'package:katan/domain/usecases/get_task_usecase.dart';
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

class TaskDetailLoaded extends TaskDetailState {
  const TaskDetailLoaded({
    required this.task,
    required this.comments,
    required this.files,
    this.submittingComment = false,
    this.uploadingFile = false,
    this.actionError,
  });

  final TaskDetail task;
  final List<TaskComment> comments;
  final List<FileAttachment> files;
  final bool submittingComment;
  final bool uploadingFile;
  final String? actionError;

  TaskDetailLoaded copyWith({
    TaskDetail? task,
    List<TaskComment>? comments,
    List<FileAttachment>? files,
    bool? submittingComment,
    bool? uploadingFile,
    String? actionError,
    bool clearActionError = false,
  }) {
    return TaskDetailLoaded(
      task: task ?? this.task,
      comments: comments ?? this.comments,
      files: files ?? this.files,
      submittingComment: submittingComment ?? this.submittingComment,
      uploadingFile: uploadingFile ?? this.uploadingFile,
      actionError: clearActionError ? null : (actionError ?? this.actionError),
    );
  }

  @override
  List<Object?> get props => [
    task,
    comments,
    files,
    submittingComment,
    uploadingFile,
    actionError,
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
    required GetTaskFilesUseCase getTaskFilesUseCase,
    required UploadTaskFileUseCase uploadTaskFileUseCase,
    required DeleteTaskFileUseCase deleteTaskFileUseCase,
    required FileRepository fileRepository,
    required AuthCubit authCubit,
  })  : _getTaskUseCase = getTaskUseCase,
        _getTaskCommentsUseCase = getTaskCommentsUseCase,
        _addTaskCommentUseCase = addTaskCommentUseCase,
        _getTaskFilesUseCase = getTaskFilesUseCase,
        _uploadTaskFileUseCase = uploadTaskFileUseCase,
        _deleteTaskFileUseCase = deleteTaskFileUseCase,
        _fileRepository = fileRepository,
        _authCubit = authCubit,
        super(const TaskDetailInitial());

  final int taskId;
  final GetTaskUseCase _getTaskUseCase;
  final GetTaskCommentsUseCase _getTaskCommentsUseCase;
  final AddTaskCommentUseCase _addTaskCommentUseCase;
  final GetTaskFilesUseCase _getTaskFilesUseCase;
  final UploadTaskFileUseCase _uploadTaskFileUseCase;
  final DeleteTaskFileUseCase _deleteTaskFileUseCase;
  final FileRepository _fileRepository;
  final AuthCubit _authCubit;

  Future<void> load() async {
    emit(const TaskDetailLoading());
    try {
      final taskFuture = _getTaskUseCase(taskId);
      final commentsFuture = _getTaskCommentsUseCase(taskId);
      final filesFuture = _getTaskFilesUseCase(taskId);
      final task = await taskFuture;
      final comments = await commentsFuture;
      final files = await filesFuture;
      emit(TaskDetailLoaded(
        task: task,
        comments: comments,
        files: files.items,
      ));
    } on AuthFailure catch (e) {
      emit(TaskDetailFailure(e.message));
      await _authCubit.logout();
    } on Failure catch (e) {
      emit(TaskDetailFailure(e.message));
    } catch (e) {
      emit(TaskDetailFailure(e.toString()));
    }
  }

  Future<bool> addComment(String content) async {
    final current = state;
    if (current is! TaskDetailLoaded) {
      return false;
    }

    final trimmed = content.trim();
    if (trimmed.isEmpty) {
      return false;
    }

    emit(current.copyWith(submittingComment: true, clearActionError: true));
    try {
      await _addTaskCommentUseCase(taskId: taskId, content: trimmed);
      final comments = await _getTaskCommentsUseCase(taskId);
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(
          comments: comments,
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
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(
          submittingComment: false,
          actionError: e.message,
        ));
      }
      return false;
    } catch (e) {
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(
          submittingComment: false,
          actionError: e.toString(),
        ));
      }
      return false;
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
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(
          uploadingFile: false,
          actionError: e.message,
        ));
      }
    } catch (e) {
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(
          uploadingFile: false,
          actionError: e.toString(),
        ));
      }
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
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(actionError: e.message));
      }
    } catch (e) {
      final latest = state;
      if (latest is TaskDetailLoaded) {
        emit(latest.copyWith(actionError: e.toString()));
      }
    }
  }

  String downloadUrl(String fileUrl) => _fileRepository.downloadUrl(fileUrl);

  String viewUrl(String fileUrl) => _fileRepository.viewUrl(fileUrl);
}
