import 'package:intl/intl.dart';

final _dateFormat = DateFormat('dd.MM.yyyy HH:mm');
final _timeFormat = DateFormat('HH:mm');
final _shortDateTimeFormat = DateFormat('dd.MM HH:mm');

String formatDateTime(DateTime? value) {
  if (value == null) {
    return '';
  }

  return _dateFormat.format(value);
}

String formatChatTime(DateTime? value) {
  if (value == null) {
    return '';
  }

  final now = DateTime.now();
  if (now.year == value.year && now.month == value.month && now.day == value.day) {
    return _timeFormat.format(value);
  }

  return _shortDateTimeFormat.format(value);
}

String formatChatDateDivider(DateTime? value) {
  if (value == null) {
    return '';
  }

  final now = DateTime.now();
  final today = DateTime(now.year, now.month, now.day);
  final day = DateTime(value.year, value.month, value.day);

  if (day == today) {
    return 'Сегодня';
  }

  final yesterday = today.subtract(const Duration(days: 1));
  if (day == yesterday) {
    return 'Вчера';
  }

  if (value.year == now.year) {
    return DateFormat('d MMMM').format(value);
  }

  return DateFormat('d MMMM yyyy').format(value);
}

String statusLabel(String status) {
  return switch (status) {
    'new' => 'Новая',
    'in_progress' || 'progress' => 'В работе',
    'complete' || 'done' || 'closed' || 'completed' => 'Завершена',
    'postpone' => 'Отложена',
    'no_project' => 'Без проекта',
    'open' || 'todo' => 'Открыта',
    'paused' => 'Пауза',
    '' => 'Без статуса',
    _ => status,
  };
}
