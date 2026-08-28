import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/utils/geo.dart';
import 'package:katan/domain/entities/ar_object.dart';

class ArNearbySheet extends StatelessWidget {
  const ArNearbySheet({
    super.key,
    required this.items,
    required this.onTap,
  });

  final List<ArNearbyItem> items;
  final ValueChanged<ArNearbyItem> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.96),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
            child: Text(
              items.isEmpty ? 'Рядом ничего нет' : 'Рядом (${items.length})',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          if (items.isEmpty)
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Text(
                'Включите слои или подойдите ближе к объектам',
                style: TextStyle(color: AppColors.textSecondary, fontSize: 13),
              ),
            )
          else
            SizedBox(
              height: 168,
              child: ListView.separated(
                padding: const EdgeInsets.only(bottom: 8),
                itemCount: items.length,
                separatorBuilder: (_, _) => const Divider(height: 1),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    dense: true,
                    leading: Icon(_icon(item.object.kind), color: AppColors.primary),
                    title: Text(item.object.title, maxLines: 1, overflow: TextOverflow.ellipsis),
                    subtitle: Text(item.object.coveredInside
                      ? '${item.object.localXyzLabel} ${item.object.headingDeg.round()} ${GeoMath.formatDistance(item.distanceMeters)}'
                      : item.object.canEnterInside
                        ? 'внутри ${item.object.coveredCount} ${GeoMath.formatDistance(item.distanceMeters)} ${item.directionHint}'
                        : '${item.object.kind.label} ${GeoMath.formatDistance(item.distanceMeters)} ${item.directionHint}',
                    ),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => onTap(item),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }

  IconData _icon(ArObjectKind kind) {
    return switch (kind) {
      ArObjectKind.node => Icons.cell_tower,
      ArObjectKind.device => Icons.router,
      ArObjectKind.cable => Icons.cable,
      ArObjectKind.customer => Icons.home_outlined,
    };
  }
}
