import 'dart:math' as math;

// Гео-хелперы для AR (GPS + компас)
abstract final class GeoMath {
  static const earthRadiusM = 6371000.0;

  static double _toRad(double deg) => deg * math.pi / 180.0;
  static double _toDeg(double rad) => rad * 180.0 / math.pi;

  static double distanceMeters({
    required double lat1,
    required double lng1,
    required double lat2,
    required double lng2,
  }) {
    final dLat = _toRad(lat2 - lat1);
    final dLng = _toRad(lng2 - lng1);
    final a = math.sin(dLat / 2) * math.sin(dLat / 2) + math.cos(_toRad(lat1)) * math.cos(_toRad(lat2)) * math.sin(dLng / 2) * math.sin(dLng / 2);
    final c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a));
    return earthRadiusM * c;
  }

  // Азимут от точки 1 к точке 2, градусы 0...360 (0 = север)
  static double bearingDegrees({
    required double lat1,
    required double lng1,
    required double lat2,
    required double lng2,
  }) {
    final lat1Rad = _toRad(lat1);
    final lat2Rad = _toRad(lat2);
    final dLng = _toRad(lng2 - lng1);
    final y = math.sin(dLng) * math.cos(lat2Rad);
    final x = math.cos(lat1Rad) * math.sin(lat2Rad) - math.sin(lat1Rad) * math.cos(lat2Rad) * math.cos(dLng);
    return (_toDeg(math.atan2(y, x)) + 360) % 360;
  }

  // relative = bearing − heading, нормализовано в −180...180.
  static double relativeBearing(double bearingDeg, double headingDeg) {
    var d = bearingDeg - headingDeg;
    while (d > 180) {
      d -= 360;
    }

    while (d < -180) {
      d += 360;
    }
    
    return d;
  }

  // Смещение точки на [distanceM] метров по азимуту [bearingDeg]
  static (double lat, double lng) offsetMeters({
    required double lat,
    required double lng,
    required double distanceM,
    required double bearingDeg,
  }) {
    final angularDist = distanceM / earthRadiusM;
    final bearing = _toRad(bearingDeg);
    final lat1 = _toRad(lat);
    final lng1 = _toRad(lng);
    final lat2 = math.asin(math.sin(lat1) * math.cos(angularDist) + math.cos(lat1) * math.sin(angularDist) * math.cos(bearing));
    final lng2 = lng1 + math.atan2(
      math.sin(bearing) * math.sin(angularDist) * math.cos(lat1),
      math.cos(angularDist) - math.sin(lat1) * math.sin(lat2),
    );

    return (_toDeg(lat2), (_toDeg(lng2) + 540) % 360 - 180);
  }

  static String formatDistance(double meters) {
    if (meters < 1000) {
      return '${meters.round()} м';
    }

    return '${(meters / 1000).toStringAsFixed(1)} км';
  }

  // Локальные метры ENU: X=восток, Y=север от origin -> point
  static (double x, double y) enuMeters({
    required double originLat,
    required double originLng,
    required double lat,
    required double lng,
  }) {
    const metersPerDegLat = 111320.0;
    final cosLat = math.cos(_toRad(originLat)).abs().clamp(0.01, 1.0);
    final y = (lat - originLat) * metersPerDegLat;
    final x = (lng - originLng) * metersPerDegLat * cosLat;
    return (x, y);
  }

  // Азимут по вектору ENU (восток, север), градусы 0...360
  static double bearingFromEnu(double eastM, double northM) {
    return (_toDeg(math.atan2(eastM, northM)) + 360) % 360;
  }

  static double hypot(double a, double b) => math.sqrt(a * a + b * b);
}
