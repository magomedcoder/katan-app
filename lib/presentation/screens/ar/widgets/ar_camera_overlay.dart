import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/utils/geo.dart';
import 'package:katan/domain/entities/ar_object.dart';

class ArCameraOverlay extends StatelessWidget {
  const ArCameraOverlay({
    super.key,
    required this.nearby,
    required this.headingDegrees,
    required this.userLat,
    required this.userLng,
  });

  final List<ArNearbyItem> nearby;
  final double headingDegrees;
  final double userLat;
  final double userLng;

  static const _fovHalf = 35.0;
  static const _indoorFovHalf = 70.0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return IgnorePointer(
      child: Stack(
        children: [
          CustomPaint(
            size: size,
            painter: _CableLinePainter(
              nearby: nearby,
              headingDegrees: headingDegrees,
              userLat: userLat,
              userLng: userLng,
              size: size,
            ),
          ),
          for (final item in nearby.take(20))
            if (_visibleOnCamera(item))
              Positioned(
                left: _xFor(
                  item.relativeDegrees.clamp(
                    item.object.coveredInside ? -_indoorFovHalf : -_fovHalf,
                    item.object.coveredInside ? _indoorFovHalf : _fovHalf,
                  ),
                  size.width,
                  halfFov: item.object.coveredInside ? _indoorFovHalf : _fovHalf,
                ) - 48,
                top: _yFor(
                  item.distanceMeters,
                  size.height,
                  indoor: item.object.coveredInside,
                ) - 28,
                child: _MarkerBubble(item: item),
              ),
        ],
      ),
    );
  }

  bool _visibleOnCamera(ArNearbyItem item) {
    if (item.object.coveredInside) {
      return true;
    }

    return item.relativeDegrees.abs() <= _fovHalf;
  }

  static double _xFor(
    double relativeDeg,
    double width, {
    double halfFov = _fovHalf,
  }) {
    final t = (relativeDeg + halfFov) / (halfFov * 2);
    return t.clamp(0.05, 0.95) * width;
  }

  static double _yFor(double distanceM, double height, {bool indoor = false}) {
    final scale = indoor ? 40.0 : 120.0;
    final near = (distanceM / scale).clamp(0.0, 1.0);
    return height * (0.28 + near * 0.42);
  }
}

class _CableLinePainter extends CustomPainter {
  _CableLinePainter({
    required this.nearby,
    required this.headingDegrees,
    required this.userLat,
    required this.userLng,
    required this.size,
  });

  final List<ArNearbyItem> nearby;
  final double headingDegrees;
  final double userLat;
  final double userLng;
  final Size size;

  @override
  void paint(Canvas canvas, Size size) {
    for (final item in nearby) {
      final pts = item.object.linePoints;
      if (pts.length < 2) {
        continue;
      }

      final color = _parseColor(item.object.colorHex) ?? AppColors.danger;
      final paint = Paint()
        ..color = color.withValues(alpha: 0.85)
        ..strokeWidth = item.object.subtitle.contains('план') ? 2 : 3
        ..style = PaintingStyle.stroke;

      final path = Path();
      var started = false;

      for (final (lat, lng) in pts) {
        final dist = GeoMath.distanceMeters(
          lat1: userLat,
          lng1: userLng,
          lat2: lat,
          lng2: lng,
        );
        final bearing = GeoMath.bearingDegrees(
          lat1: userLat,
          lng1: userLng,
          lat2: lat,
          lng2: lng,
        );
        final rel = GeoMath.relativeBearing(bearing, headingDegrees);
        if (rel.abs() > ArCameraOverlay._fovHalf + 15) {
          started = false;
          continue;
        }

        final x = ArCameraOverlay._xFor(rel, size.width);
        final y = ArCameraOverlay._yFor(dist, size.height);
        if (!started) {
          path.moveTo(x, y);
          started = true;
        } else {
          path.lineTo(x, y);
        }
      }
      canvas.drawPath(path, paint);
    }
  }

  Color? _parseColor(String? hex) {
    if (hex == null || hex.length < 7) {
      return null;
    }

    try {
      return Color(int.parse(hex.replaceFirst('#', '0xFF')));
    } catch (_) {
      return null;
    }
  }

  @override
  bool shouldRepaint(covariant _CableLinePainter oldDelegate) {
    return oldDelegate.nearby != nearby || oldDelegate.headingDegrees != headingDegrees || oldDelegate.userLat != userLat || oldDelegate.userLng != userLng;
  }
}

class _MarkerBubble extends StatelessWidget {
  const _MarkerBubble({required this.item});

  final ArNearbyItem item;

  Color get _color {
    final hex = item.object.colorHex;
    if (hex == null || hex.length < 7) {
      return AppColors.primary;
    }

    try {
      return Color(int.parse(hex.replaceFirst('#', '0xFF')));
    } catch (_) {
      return AppColors.primary;
    }
  }

  IconData get _icon {
    return switch (item.object.kind) {
      ArObjectKind.node => Icons.cell_tower,
      ArObjectKind.device => Icons.router,
      ArObjectKind.cable => Icons.cable,
      ArObjectKind.customer => Icons.home_outlined,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.65),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: _color, width: 1.5),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(_icon, color: _color, size: 18),
          const SizedBox(height: 2),
          Text(
            item.object.title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            item.object.coveredInside
              ? item.object.localXyzLabel
              : item.object.canEnterInside && item.object.coveredCount > 0
                ? 'внутри ${item.object.coveredCount} ${GeoMath.formatDistance(item.distanceMeters)}'
                : GeoMath.formatDistance(item.distanceMeters),
            style: const TextStyle(color: Colors.white70, fontSize: 10),
          ),
          if (item.isCluster)
            Text('*${item.clusterSize}', style: TextStyle(
              color: _color,
              fontSize: 11,
              fontWeight: FontWeight.w700,
            )),
        ],
      ),
    );
  }
}
