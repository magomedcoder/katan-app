import 'package:equatable/equatable.dart';
import 'package:katan/domain/entities/user_ref.dart';

class TaskHistoryEntry extends Equatable {
  const TaskHistoryEntry({
    required this.id,
    required this.user,
    required this.action,
    required this.message,
    required this.fieldName,
    required this.oldValue,
    required this.newValue,
    required this.createdAt,
  });

  final int id;
  final UserRef? user;
  final String action;
  final String message;
  final String fieldName;
  final String oldValue;
  final String newValue;
  final DateTime? createdAt;

  @override
  List<Object?> get props => [
    id,
    user,
    action,
    message,
    fieldName,
    oldValue,
    newValue,
    createdAt,
  ];
}
