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

  bool hasPermission(String permission) {
    return permissions.contains('-1') || permissions.contains(permission);
  }

  bool get canReadChat => hasPermission('chat|read') || hasPermission('chat|write');

  bool get canWriteChat => hasPermission('chat|write');
}
