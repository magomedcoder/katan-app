import 'package:equatable/equatable.dart';

class UserRef extends Equatable {
  const UserRef({
    required this.id,
    required this.username,
    required this.name,
    required this.surname,
  });

  final int id;
  final String username;
  final String name;
  final String surname;

  String get displayName {
    final full = '$name $surname'.trim();
    if (full.isNotEmpty) {
      return full;
    }

    if (username.isNotEmpty) {
      return '@$username';
    }
    return '';
  }

  bool get isEmpty => id == 0 && username.isEmpty && name.isEmpty && surname.isEmpty;

  @override
  List<Object?> get props => [id, username, name, surname];
}
