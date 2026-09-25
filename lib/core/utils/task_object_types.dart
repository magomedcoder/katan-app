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
