import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/utils/ar_world_math.dart';
import 'package:katan/core/utils/geo.dart';
import 'package:katan/domain/entities/ar_object.dart';
import 'package:katan/presentation/cubit/ar_session_cubit.dart';

class ArCameraOverlay extends StatelessWidget {
  const ArCameraOverlay({
    super.key,
    required this.nearby,
    required this.headingDegrees,
    required this.userLat,
    required this.userLng,
    required this.pose,
    required this.indoor,
    required this.originLat,
    required this.originLng,
    this.placement,
    this.selected,
    this.polygons = const [],
  });

  final List<ArNearbyItem> nearby;
  final double headingDegrees;
  final double userLat;
  final double userLng;
  final ArWorldPose pose;
  final bool indoor;
  final double originLat;
  final double originLng;
  final ArPlacementDraft? placement;
  final ArNearbyItem? selected;
  final List<ArMapObject> polygons;

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
              polygons: polygons,
              pose: pose,
              indoor: indoor,
              originLat: originLat,
              originLng: originLng,
              userLat: userLat,
              userLng: userLng,
              size: size,
            ),
          ),
          for (final item in nearby.take(20))
            if (item.object.kind != ArObjectKind.coverage)
              ..._marker(item, size),
          if (placement != null) _ghost(placement!, size),
        ],
      ),
    );
  }

  List<Widget> _marker(ArNearbyItem item, Size size) {
    final enu = ArWorldMath.objectEnu(
      indoor: indoor,
      covered: item.object.coveredInside,
      localX: item.object.localX,
      localY: item.object.localY,
      localZ: item.object.localZ,
      lat: item.object.lat,
      lng: item.object.lng,
      originLat: originLat,
      originLng: originLng,
      userLat: userLat,
      userLng: userLng,
    );
    final hit = ArWorldMath.project(
      camera: pose,
      eastM: enu.$1,
      northM: enu.$2,
      upM: enu.$3,
      width: size.width,
      height: size.height,
    );
    if (!hit.inView && !item.object.coveredInside) {
      return const [];
    }
    if (!hit.inView && item.object.coveredInside && hit.behind) {
      return [
        Positioned(
          left: (hit.x.clamp(24, size.width - 24)) - 48,
          top: 72,
          child: _MarkerBubble(item: item, occluded: true, axes: selected?.object.ref == item.object.ref),
        ),
      ];
    }
    return [
      Positioned(
        left: hit.x.clamp(8, size.width - 104),
        top: hit.y.clamp(48, size.height - 160),
        child: _MarkerBubble(
          item: item,
          occluded: hit.behind,
          axes: selected?.object.ref == item.object.ref && item.object.coveredInside,
        ),
      ),
    ];
  }

  Widget _ghost(ArPlacementDraft draft, Size size) {
    final hit = ArWorldMath.project(
      camera: pose,
      eastM: draft.localX,
      northM: draft.localY,
      upM: draft.localZ,
      width: size.width,
      height: size.height,
    );
    return Positioned(
      left: hit.x.clamp(8, size.width - 140),
      top: hit.y.clamp(48, size.height - 180),
      child: Opacity(
        opacity: 0.9,
        child: Container(
          width: 132,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.amber.shade800.withValues(alpha: 0.82),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white, width: 1.5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.blur_on, color: Colors.white, size: 20),
              Text(
                'Призрак ${draft.plane}',
                style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w700),
              ),
              Text(
                draft.xyzLabel,
                style: const TextStyle(color: Colors.white, fontSize: 11),
              ),
              Text(
                '${draft.headingDeg.round()}°',
                style: const TextStyle(color: Colors.white70, fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CableLinePainter extends CustomPainter {
  _CableLinePainter({
    required this.nearby,
    required this.polygons,
    required this.pose,
    required this.indoor,
    required this.originLat,
    required this.originLng,
    required this.userLat,
    required this.userLng,
    required this.size,
  });

  final List<ArNearbyItem> nearby;
  final List<ArMapObject> polygons;
  final ArWorldPose pose;
  final bool indoor;
  final double originLat;
  final double originLng;
  final double userLat;
  final double userLng;
  final Size size;

  @override
  void paint(Canvas canvas, Size size) {
    _drawLines(canvas, size, [
      for (final item in nearby) item.object,
      ...polygons,
    ]);
  }

  void _drawLines(Canvas canvas, Size size, List<ArMapObject> objects) {
    for (final object in objects) {
      final pts = object.linePoints;
      if (pts.length < 2) {
        continue;
      }

      final color = _parseColor(object.colorHex) ?? AppColors.danger;
      final isCoverage = object.kind == ArObjectKind.coverage;
      final paint = Paint()
        ..color = color.withValues(alpha: isCoverage ? 0.45 : 0.85)
        ..strokeWidth = isCoverage
          ? 2
          : object.subtitle.contains('план')
            ? 2
            : 3
        ..style = PaintingStyle.stroke;

      final path = Path();
      var started = false;
      for (final (lat, lng) in pts) {
        final en = GeoMath.enuMeters(
          originLat: indoor ? originLat : userLat,
          originLng: indoor ? originLng : userLng,
          lat: lat,
          lng: lng,
        );
        final hit = ArWorldMath.project(
          camera: pose,
          eastM: en.$1,
          northM: en.$2,
          upM: 0.4,
          width: size.width,
          height: size.height,
        );
        if (!hit.inView) {
          started = false;
          continue;
        }
        if (!started) {
          path.moveTo(hit.x, hit.y);
          started = true;
        } else {
          path.lineTo(hit.x, hit.y);
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
    return oldDelegate.nearby != nearby ||
      oldDelegate.polygons != polygons ||
      oldDelegate.pose != pose;
  }
}

class _MarkerBubble extends StatelessWidget {
  const _MarkerBubble({
    required this.item,
    this.occluded = false,
    this.axes = false,
  });

  final ArNearbyItem item;
  final bool occluded;
  final bool axes;

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
      ArObjectKind.reserve => Icons.more,
      ArObjectKind.task => Icons.task_alt,
      ArObjectKind.coverage => Icons.radar,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: occluded ? 0.45 : 1,
      child: Container(
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
            if (axes)
              const Text(
                'X восток  Y север  Z вверх',
                style: TextStyle(color: Colors.white54, fontSize: 8),
              ),
            if (item.isCluster)
              Text(
                '*${item.clusterSize}',
                style: TextStyle(color: _color, fontSize: 11, fontWeight: FontWeight.w700),
              ),
          ],
        ),
      ),
    );
  }
}
