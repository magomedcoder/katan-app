import 'package:equatable/equatable.dart';

class TaskTag extends Equatable {
  const TaskTag({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}

class TaskLabel extends Equatable {
  const TaskLabel({
    required this.id,
    required this.name,
    required this.color,
  });

  final int id;
  final String name;
  final String color;

  @override
  List<Object?> get props => [id, name, color];
}
