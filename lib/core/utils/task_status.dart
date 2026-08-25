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
