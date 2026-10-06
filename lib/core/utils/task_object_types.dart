import 'package:katan/domain/entities/ar_object.dart';

abstract final class TaskObjectTypes {
  static const node = 12;
  static const building = 34;
  static const device = 4;
  static const customer = 35;
  static const cable = 7;

  static const options = <({int value, String label})>[
    (value: node, label: 'Сооружения'),
    (value: building, label: 'Здания'),
    (value: device, label: 'Оборудование'),
    (value: customer, label: 'Абоненты'),
    (value: cable, label: 'Кабельные линии'),
  ];

  static ArObjectKind? arKindForTaskObject(int objectType) {
    return switch (objectType) {
      node => ArObjectKind.node,
      device => ArObjectKind.device,
      cable => ArObjectKind.cable,
      customer => ArObjectKind.customer,
      _ => null,
    };
  }

  static int? taskTypeForArKind(ArObjectKind kind) {
    return switch (kind) {
      ArObjectKind.node => node,
      ArObjectKind.device => device,
      ArObjectKind.cable => cable,
      ArObjectKind.customer => customer,
      ArObjectKind.reserve => cable,
      ArObjectKind.task || ArObjectKind.coverage => null,
    };
  }

  static String label(int objectType) {
    for (final option in options) {
      if (option.value == objectType) {
        return option.label;
      }
    }

    return '';
  }
}

String taskObjectLinkLabel({
  required int objectType,
  required int objectId,
  String objectName = '',
}) {
  if (objectType == 0) {
    return '';
  }

  final typeLabel = TaskObjectTypes.label(objectType);
  final name = objectName.trim();
  if (name.isNotEmpty) {
    return '$typeLabel: $name';
  }

  if (objectId > 0) {
    return '$typeLabel #$objectId';
  }

  return typeLabel;
}
