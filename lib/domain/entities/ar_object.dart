import 'package:equatable/equatable.dart';

enum ArObjectKind {
  node,
  device,
  cable,
  customer,
  reserve,
  task,
  coverage;

  String get wire {
    return switch (this) {
      ArObjectKind.node => 'node',
      ArObjectKind.device => 'device',
      ArObjectKind.cable => 'cable',
      ArObjectKind.customer => 'customer',
      ArObjectKind.reserve => 'reserve',
      ArObjectKind.task => 'task',
      ArObjectKind.coverage => 'coverage',
    };
  }

  String get label {
    return switch (this) {
      ArObjectKind.node => 'Сооружение',
      ArObjectKind.device => 'Устройство',
      ArObjectKind.cable => 'Кабель',
      ArObjectKind.customer => 'Абонент',
      ArObjectKind.reserve => 'Запас',
      ArObjectKind.task => 'Задача',
      ArObjectKind.coverage => 'Покрытие',
    };
  }

  bool get isHudLayer {
    return switch (this) {
      ArObjectKind.node ||
      ArObjectKind.device ||
      ArObjectKind.cable ||
      ArObjectKind.customer ||
      ArObjectKind.task => true,
      _ => false,
    };
  }

  ArObjectKind get filterKind {
    return switch (this) {
      ArObjectKind.reserve => ArObjectKind.cable,
      ArObjectKind.coverage => ArObjectKind.node,
      _ => this,
    };
  }

  static ArObjectKind? tryParse(String raw) {
    return switch (raw.trim().toLowerCase()) {
      'node' => ArObjectKind.node,
      'device' => ArObjectKind.device,
      'cable' => ArObjectKind.cable,
      'customer' => ArObjectKind.customer,
      'reserve' => ArObjectKind.reserve,
      'task' => ArObjectKind.task,
      'coverage' => ArObjectKind.coverage,
      _ => null,
    };
  }
}

class ArObjectRef extends Equatable {
  const ArObjectRef({
    required this.kind,
    required this.id,
  });

  final ArObjectKind kind;
  final int id;

  String get token => 'katan:v1:${kind.wire}:$id';

  String path({String origin = ''}) {
    final base = origin.replaceAll(RegExp(r'/$'), '');
    return '$base/o/${kind.wire}/$id';
  }

  static ArObjectRef? tryParse(String raw) {
    final text = raw.trim();
    final token = RegExp(r'^katan:v1:([a-z]+):(\d+)$', caseSensitive: false).firstMatch(text);
    if (token != null) {
      final kind = ArObjectKind.tryParse(token.group(1)!);
      final id = int.tryParse(token.group(2)!);
      if (kind != null && id != null && id > 0) {
        return ArObjectRef(kind: kind, id: id);
      }
    }

    String path = text;
    try {
      if (text.startsWith('http://') || text.startsWith('https://')) {
        path = Uri.parse(text).path;
      }
    } catch (_) {
      return null;
    }

    final m = RegExp(r'^/?o/([a-z]+)/(\d+)/?$', caseSensitive: false).firstMatch(path);
    if (m == null) {
      return null;
    }
    
    final kind = ArObjectKind.tryParse(m.group(1)!);
    final id = int.tryParse(m.group(2)!);
    if (kind == null || id == null || id <= 0) {
      return null;
    }

    return ArObjectRef(kind: kind, id: id);
  }

  static String? unsupportedKindHint(String raw) {
    final text = raw.trim();
    var kindRaw = '';
    final token = RegExp(r'^katan:v1:([a-z]+):(\d+)$', caseSensitive: false).firstMatch(text);
    if (token != null) {
      kindRaw = token.group(1)!;
    } else {
      var path = text;
      try {
        if (text.startsWith('http://') || text.startsWith('https://')) {
          path = Uri.parse(text).path;
        }
      } catch (_) {}
      final pathMatch = RegExp(r'^/?o/([a-z]+)/(\d+)/?$', caseSensitive: false).firstMatch(path);
      if (pathMatch != null) {
        kindRaw = pathMatch.group(1)!;
      }
    }
    return switch (kindRaw.toLowerCase()) {
      'building' => 'QR здания пока не открывается в AR',
      _ => null,
    };
  }

  @override
  List<Object?> get props => [kind, id];
}

class ArMapObject extends Equatable {
  const ArMapObject({
    required this.ref,
    required this.title,
    required this.lat,
    required this.lng,
    this.subtitle = '',
    this.colorHex,
    this.linePoints = const [],
    this.headingDeg = 0,
    this.coveredInside = false,
    this.peerType = 0,
    this.peerId = 0,
    this.peerName = '',
    this.coveredCount = 0,
    this.localX = 0,
    this.localY = 0,
    this.localZ = 0,
  });

  final ArObjectRef ref;
  final String title;
  final String subtitle;
  final double lat;
  final double lng;
  final String? colorHex;
  final List<(double, double)> linePoints;
  final double headingDeg;
  final bool coveredInside;
  final int peerType;
  final int peerId;
  final String peerName;
  final int coveredCount;
  final double localX;
  final double localY;
  final double localZ;

  ArObjectKind get kind => ref.kind;

  bool get canEnterInside => kind == ArObjectKind.node;

  bool get isOutage => (colorHex ?? '').toLowerCase().contains('ff0000') || subtitle.toLowerCase().contains('авария');

  String get localXyzLabel => '(${localX.toStringAsFixed(1)}, ${localY.toStringAsFixed(1)}, ${localZ.toStringAsFixed(1)})';

  @override
  List<Object?> get props => [
    ref,
    title,
    subtitle,
    lat,
    lng,
    colorHex,
    linePoints,
    headingDeg,
    coveredInside,
    peerType,
    peerId,
    peerName,
    coveredCount,
    localX,
    localY,
    localZ,
  ];
}

class ArNearbyItem extends Equatable {
  const ArNearbyItem({
    required this.object,
    required this.distanceMeters,
    required this.bearingDegrees,
    required this.relativeDegrees,
    this.clusterSize = 1,
    this.clusterItems = const [],
    this.screenX = 0,
    this.screenY = 0,
    this.inView = true,
    this.behind = false,
    this.worldLocked = false,
  });

  final ArMapObject object;
  final double distanceMeters;
  final double bearingDegrees;
  final double relativeDegrees;
  final int clusterSize;
  final List<ArNearbyItem> clusterItems;
  final double screenX;
  final double screenY;
  final bool inView;
  final bool behind;
  final bool worldLocked;

  bool get isCluster => clusterSize > 1;

  String get directionHint {
    final a = relativeDegrees.abs();
    if (a < 25) {
      return 'впереди';
    }

    if (a > 155) {
      return 'сзади';
    }

    return relativeDegrees > 0 ? 'справа' : 'слева';
  }

  @override
  List<Object?> get props => [
    object,
    distanceMeters,
    bearingDegrees,
    relativeDegrees,
    clusterSize,
    clusterItems,
    screenX,
    screenY,
    inView,
    behind,
    worldLocked,
  ];
}
