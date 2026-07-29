import 'package:equatable/equatable.dart';

class Account extends Equatable {
  const Account({
    required this.fullName,
    required this.username,
    required this.permissions,
  });

  final String fullName;
  final String username;
  final List<String> permissions;

  @override
  List<Object?> get props => [fullName, username, permissions];
}
