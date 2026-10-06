import 'dart:async';
import 'dart:math' as math;

import 'package:katan/core/utils/ar_world_math.dart';
import 'package:katan/core/utils/geo.dart';
import 'package:sensors_plus/sensors_plus.dart';

class ArWorldTracker {
  ArWorldPose pose = const ArWorldPose(
    eastM: 0,
    northM: 0,
    upM: ArWorldMath.eyeHeightM,
    yawDeg: 0,
    pitchDeg: 0,
  );

  StreamSubscription<AccelerometerEvent>? _accSub;
  DateTime? _lastStepAt;
  double _stepFilter = 0;
  bool _running = false;
  bool sensorsLive = false;

  Future<void> start() async {
    if (_running) {
      return;
    }

    _running = true;
    try {
      _accSub = accelerometerEventStream(
        samplingPeriod: SensorInterval.uiInterval,
      ).listen((event) {
        sensorsLive = true;
        final pitch = ArWorldMath.pitchFromGravity(x: event.x, y: event.y, z: event.z);
        pose = ArWorldPose(
          eastM: pose.eastM,
          northM: pose.northM,
          upM: pose.upM,
          yawDeg: pose.yawDeg,
          pitchDeg: _lerp(pose.pitchDeg, pitch, 0.18),
          quality: pose.quality,
          sigmaCm: pose.sigmaCm,
        );
        _maybeStep(event);
      });
    } catch (_) {
      sensorsLive = false;
    }
  }

  void updateHeading(double yawDeg) {
    pose = ArWorldPose(
      eastM: pose.eastM,
      northM: pose.northM,
      upM: pose.upM,
      yawDeg: yawDeg,
      pitchDeg: pose.pitchDeg,
      quality: pose.quality,
      sigmaCm: pose.sigmaCm,
    );
  }

  void setEnu({
    required double eastM,
    required double northM,
    required double upM,
    required ArTrackingQuality quality,
    required double sigmaCm,
  }) {
    pose = ArWorldPose(
      eastM: _lerp(pose.eastM, eastM, quality == ArTrackingQuality.good ? 0.35 : 0.12),
      northM: _lerp(pose.northM, northM, quality == ArTrackingQuality.good ? 0.35 : 0.12),
      upM: _lerp(pose.upM, upM, 0.2),
      yawDeg: pose.yawDeg,
      pitchDeg: pose.pitchDeg,
      quality: quality,
      sigmaCm: sigmaCm,
    );
  }

  void snapEnu({
    required double eastM,
    required double northM,
    required double upM,
    ArTrackingQuality quality = ArTrackingQuality.good,
    double sigmaCm = 15,
  }) {
    pose = ArWorldPose(
      eastM: eastM,
      northM: northM,
      upM: upM,
      yawDeg: pose.yawDeg,
      pitchDeg: pose.pitchDeg,
      quality: quality,
      sigmaCm: sigmaCm,
    );
  }

  void applyGpsEnu({
    required double originLat,
    required double originLng,
    required double lat,
    required double lng,
    required double accuracyM,
    double altitudeDeltaM = 0,
  }) {
    final en = GeoMath.enuMeters(
      originLat: originLat,
      originLng: originLng,
      lat: lat,
      lng: lng,
    );
    final quality = accuracyM <= 8
      ? ArTrackingQuality.good
      : accuracyM <= 25
        ? ArTrackingQuality.weak
        : ArTrackingQuality.lost;
    final sigma = math.max(12.0, accuracyM * 100);
    if (accuracyM <= 22) {
      setEnu(
        eastM: en.$1,
        northM: en.$2,
        upM: ArWorldMath.eyeHeightM + altitudeDeltaM.clamp(-4, 12),
        quality: quality,
        sigmaCm: sigma,
      );
    } else {
      pose = ArWorldPose(
        eastM: pose.eastM,
        northM: pose.northM,
        upM: pose.upM,
        yawDeg: pose.yawDeg,
        pitchDeg: pose.pitchDeg,
        quality: sensorsLive ? ArTrackingQuality.weak : ArTrackingQuality.lost,
        sigmaCm: math.max(pose.sigmaCm, sigma),
      );
    }
  }

  void _maybeStep(AccelerometerEvent event) {
    final mag = math.sqrt(event.x * event.x + event.y * event.y + event.z * event.z);
    _stepFilter = _lerp(_stepFilter, mag, 0.2);
    final now = DateTime.now();
    if ((mag - _stepFilter).abs() < 1.8) {
      return;
    }

    if (_lastStepAt != null && now.difference(_lastStepAt!).inMilliseconds < 380) {
      return;
    }

    _lastStepAt = now;
    final yaw = pose.yawDeg * math.pi / 180;
    const stride = 0.7;
    snapEnu(
      eastM: pose.eastM + math.sin(yaw) * stride,
      northM: pose.northM + math.cos(yaw) * stride,
      upM: pose.upM,
      quality: pose.quality == ArTrackingQuality.lost ? ArTrackingQuality.weak : pose.quality,
      sigmaCm: math.min(120, pose.sigmaCm + 4),
    );
  }

  Future<void> stop() async {
    _running = false;
    await _accSub?.cancel();
    _accSub = null;
  }

  static double _lerp(double a, double b, double t) => a + (b - a) * t;
}
