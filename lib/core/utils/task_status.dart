import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';

abstract final class TaskStatuses {
  static const all = '';
  static const neu = 'new';
  static const inProgress = 'in_progress';
  static const complete = 'complete';
  static const postpone = 'postpone';
  static const noProject = 'no_project';

  static const filterOptions = <({String value, String label})>[
    (value: all, label: 'Все'),
    (value: neu, label: 'Новые'),
    (value: inProgress, label: 'В работе'),
    (value: complete, label: 'Завершённые'),
    (value: postpone, label: 'Отложенные'),
    (value: noProject, label: 'Без проекта'),
  ];
}

String taskStatusLabel(String status, {String? columnTitle}) {
  return switch (status) {
    TaskStatuses.neu => 'Новая',
    TaskStatuses.inProgress => 'В работе',
    TaskStatuses.complete => 'Завершена',
    TaskStatuses.postpone => 'Отложена',
    TaskStatuses.noProject => 'Без проекта',
    'open' || 'todo' => 'Открыта',
    'done' || 'closed' || 'completed' => 'Завершена',
    'paused' => 'Пауза',
    '' => columnTitle?.trim().isNotEmpty == true ? columnTitle!.trim() : 'Без статуса',
    _ => columnTitle?.trim().isNotEmpty == true ? columnTitle!.trim() : status,
  };
}

Color taskStatusForeground(String status) {
  return switch (status) {
    TaskStatuses.neu => const Color(0xFF1D4ED8),
    TaskStatuses.inProgress => const Color(0xFFB45309),
    TaskStatuses.complete => const Color(0xFF047857),
    TaskStatuses.postpone => AppColors.textRegular,
    TaskStatuses.noProject => AppColors.textSecondary,
    _ => AppColors.textRegular,
  };
}

Color taskStatusBackground(String status) {
  return switch (status) {
    TaskStatuses.neu => const Color(0xFFEFF6FF),
    TaskStatuses.inProgress => const Color(0xFFFFFBEB),
    TaskStatuses.complete => const Color(0xFFECFDF5),
    TaskStatuses.postpone => const Color(0xFFF1F5F9),
    TaskStatuses.noProject => const Color(0xFFF8FAFC),
    _ => AppColors.fill,
  };
}

String detectTaskStatusFromColumn(String? columnTitle) {
  final title = (columnTitle ?? '').trim().toLowerCase();
  if (title.isEmpty) {
    return '';
  }

  if (title.contains('отлож')) {
    return TaskStatuses.postpone;
  }

  if (title.contains('готов') || title.contains('заверш') || title.contains('done') || title.contains('complete')) {
    return TaskStatuses.complete;
  }

  if (title.contains('работ')) {
    return TaskStatuses.inProgress;
  }

  if (title.contains('нов')) {
    return TaskStatuses.neu;
  }

  return '';
}

String taskHistoryActionLabel(String action) {
  return switch (action) {
    'created' => 'Создание',
    'updated' => 'Изменение',
    'comment_added' => 'Комментарий',
    'comment_deleted' => 'Удаление комментария',
    'moved' => 'Перемещение',
    'deleted' => 'Удаление',
    _ => action,
  };
}

int taskWorkSeconds({
  required int timeSpentSeconds,
  DateTime? workStartedAt,
  DateTime? now,
}) {
  var total = timeSpentSeconds;
  if (workStartedAt != null) {
    final current = now ?? DateTime.now();
    final delta = current.difference(workStartedAt).inSeconds;
    total += delta > 0 ? delta : 0;
  }

  return total < 0 ? 0 : total;
}

String formatWorkDuration(int totalSeconds) {
  final seconds = totalSeconds < 0 ? 0 : totalSeconds;
  final hours = seconds ~/ 3600;
  final minutes = (seconds % 3600) ~/ 60;
  final rest = seconds % 60;

  if (hours > 0) {
    return '$hours:${minutes.toString().padLeft(2, '0')}:${rest.toString().padLeft(2, '0')}';
  }

  return '$minutes:${rest.toString().padLeft(2, '0')}';
}
