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

String statusLabel(String status) {
  return switch (status) {
    'open' || 'todo' => 'Открыта',
    'in_progress' || 'progress' => 'В работе',
    'done' || 'closed' || 'completed' => 'Завершена',
    'paused' => 'Пауза',
    '' => 'Без статуса',
    _ => status,
  };
}
