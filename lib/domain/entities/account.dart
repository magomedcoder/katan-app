import 'package:equatable/equatable.dart';
import 'package:katan/domain/entities/ar_object.dart';

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

  bool get canReadTask => hasPermission('task|read') || hasPermission('task|write');

  bool get canWriteTask => hasPermission('task|write');

  bool get canDeleteTask => hasPermission('task|delete') || hasPermission('-1');

  Set<ArObjectKind> get arAllowedKinds {
    final kinds = <ArObjectKind>{};
    if (hasPermission('node|read') || hasPermission('node|write')) {
      kinds.add(ArObjectKind.node);
    }

    if (hasPermission('device|read') || hasPermission('device|write')) {
      kinds.add(ArObjectKind.device);
    }

    if (hasPermission('cable|read') || hasPermission('cable|write')) {
      kinds.add(ArObjectKind.cable);
    }

    if (hasPermission('customer|read') || hasPermission('customer|write')) {
      kinds.add(ArObjectKind.customer);
    }

    return kinds;
  }
}
