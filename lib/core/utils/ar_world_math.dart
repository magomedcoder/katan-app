import 'dart:math' as math;

import 'package:equatable/equatable.dart';
import 'package:katan/core/utils/geo.dart';

enum ArTrackingQuality { good, weak, lost }

class ArWorldPose extends Equatable {
  const ArWorldPose({
    required this.eastM,
    required this.northM,
    required this.upM,
    required this.yawDeg,
    required this.pitchDeg,
    this.rollDeg = 0,
    this.quality = ArTrackingQuality.weak,
    this.sigmaCm = 80,
  });

  final double eastM;
  final double northM;
  final double upM;
  final double yawDeg;
  final double pitchDeg;
  final double rollDeg;
  final ArTrackingQuality quality;
  final double sigmaCm;

  bool get canPlace => quality != ArTrackingQuality.lost;

  String get hudLabel {
    return switch (quality) {
      ArTrackingQuality.good => 'трекинг ±${sigmaCm.round()} см',
      ArTrackingQuality.weak => 'трекинг слабо ±${sigmaCm.round()} см',
      ArTrackingQuality.lost => 'трекинг потерян',
    };
  }

  @override
  List<Object?> get props => [
    eastM,
    northM,
    upM,
    yawDeg,
    pitchDeg,
    rollDeg,
    quality,
    sigmaCm,
  ];
}

class ArScreenHit {
  const ArScreenHit({
    required this.x,
    required this.y,
    required this.depthM,
    required this.inView,
    required this.behind,
  });

  final double x;
  final double y;
  final double depthM;
  final bool inView;
  final bool behind;
}

class ArPlacementPoint {
  const ArPlacementPoint({
    required this.localX,
    required this.localY,
    required this.localZ,
    required this.headingDeg,
    required this.plane,
  });

  final double localX;
  final double localY;
  final double localZ;
  final double headingDeg;
  final String plane;
}

abstract final class ArWorldMath {
  static const eyeHeightM = 1.55;
  static const hfovDeg = 60.0;
  static const vfovDeg = 48.0;
  static const snapM = 0.1;
  static const snapHeading = 5.0;

  static double _rad(double deg) => deg * math.pi / 180.0;

  static double _deg(double rad) => rad * 180.0 / math.pi;

  static double snapMeters(double v) => (v / snapM).round() * snapM;

  static double snapHeadingDeg(double deg) {
    var h = (deg / snapHeading).round() * snapHeading;
    while (h < 0) {
      h += 360;
    }

    while (h >= 360) {
      h -= 360;
    }

    return h.toDouble();
  }

  static ArScreenHit project({
    required ArWorldPose camera,
    required double eastM,
    required double northM,
    required double upM,
    required double width,
    required double height,
  }) {
    final dx = eastM - camera.eastM;
    final dy = northM - camera.northM;
    final dz = upM - camera.upM;
    final yaw = _rad(camera.yawDeg);
    final pitch = _rad(camera.pitchDeg);

    final fwdE = math.sin(yaw);
    final fwdN = math.cos(yaw);
    final rightE = math.cos(yaw);
    final rightN = -math.sin(yaw);

    var camFwd = dx * fwdE + dy * fwdN;
    final camRight = dx * rightE + dy * rightN;
    var camUp = dz;

    final cp = math.cos(pitch);
    final sp = math.sin(pitch);
    final depth = camFwd * cp + camUp * sp;
    camUp = -camFwd * sp + camUp * cp;
    camFwd = depth;

    final behind = camFwd < 0.15;
    final hfov = _rad(hfovDeg / 2);
    final vfov = _rad(vfovDeg / 2);
    final nx = (camRight / math.max(camFwd, 0.15)) / math.tan(hfov);
    final ny = (camUp / math.max(camFwd, 0.15)) / math.tan(vfov);
    final x = (0.5 + nx * 0.5) * width;
    final y = (0.5 - ny * 0.5) * height;
    final inView = !behind && nx.abs() <= 1.15 && ny.abs() <= 1.25;
    return ArScreenHit(
      x: x,
      y: y,
      depthM: math.sqrt(dx * dx + dy * dy + dz * dz),
      inView: inView,
      behind: behind,
    );
  }

  static ArPlacementPoint hitTest({
    required ArWorldPose camera,
    double floorZ = 0,
    double ceilingZ = 2.6,
  }) {
    final yaw = _rad(camera.yawDeg);
    final pitch = _rad(camera.pitchDeg);
    final fx = math.sin(yaw) * math.cos(pitch);
    final fy = math.cos(yaw) * math.cos(pitch);
    final fz = math.sin(pitch);

    ArPlacementPoint? hit;
    if (fz.abs() > 0.04) {
      final tFloor = (floorZ - camera.upM) / fz;
      if (tFloor > 0.4 && tFloor < 25) {
        hit = _point(camera, fx, fy, fz, tFloor, 'пол');
      } else {
        final tCeil = (ceilingZ - camera.upM) / fz;
        if (tCeil > 0.4 && tCeil < 12) {
          hit = _point(camera, fx, fy, fz, tCeil, 'потолок');
        }
      }
    }

    hit ??= _point(camera, fx, fy, fz, 2.0, 'стена');
    return ArPlacementPoint(
      localX: snapMeters(hit.localX),
      localY: snapMeters(hit.localY),
      localZ: snapMeters(hit.localZ.clamp(0, 8)),
      headingDeg: snapHeadingDeg(camera.yawDeg),
      plane: hit.plane,
    );
  }

  static ArPlacementPoint _point(
    ArWorldPose camera,
    double fx,
    double fy,
    double fz,
    double t,
    String plane,
  ) {
    return ArPlacementPoint(
      localX: camera.eastM + fx * t,
      localY: camera.northM + fy * t,
      localZ: camera.upM + fz * t,
      headingDeg: camera.yawDeg,
      plane: plane,
    );
  }

  static (double east, double north, double up) objectEnu({
    required bool indoor,
    required bool covered,
    required double localX,
    required double localY,
    required double localZ,
    required double lat,
    required double lng,
    required double originLat,
    required double originLng,
    required double userLat,
    required double userLng,
  }) {
    if (indoor && covered) {
      return (localX, localY, localZ);
    }

    final originLa = indoor ? originLat : userLat;
    final originLn = indoor ? originLng : userLng;
    final en = GeoMath.enuMeters(
      originLat: originLa,
      originLng: originLn,
      lat: lat,
      lng: lng,
    );
    return (en.$1, en.$2, 1.2);
  }

  static double pitchFromGravity({
    required double x,
    required double y,
    required double z,
  }) {
    final g = math.sqrt(x * x + y * y + z * z);
    if (g < 2) {
      return 0;
    }
    return _deg(math.atan2(-z, y)).clamp(-80.0, 80.0);
  }
}
