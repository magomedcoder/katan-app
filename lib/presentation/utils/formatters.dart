import 'package:intl/intl.dart';

final _dateFormat = DateFormat('dd.MM.yyyy HH:mm');

String formatDateTime(DateTime? value) {
  if (value == null) {
    return '';
  }

  return _dateFormat.format(value);
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
