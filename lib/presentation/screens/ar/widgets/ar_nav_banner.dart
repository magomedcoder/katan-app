import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/utils/geo.dart';
import 'package:katan/domain/entities/ar_object.dart';

class ArNavBanner extends StatelessWidget {
  const ArNavBanner({
    super.key,
    required this.target,
    required this.onCancel,
  });

  final ArNearbyItem target;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    final turn = target.relativeDegrees;
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.primary.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Transform.rotate(
            angle: turn * 3.1415926535 / 180,
            child: const Icon(
              Icons.navigation,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  target.object.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  '${GeoMath.formatDistance(target.distanceMeters)} ${target.directionHint}',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: onCancel,
            icon: const Icon(Icons.close, color: Colors.white),
            tooltip: 'Отменить',
          ),
        ],
      ),
    );
  }
}
