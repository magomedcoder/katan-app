import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:katan/app/theme.dart';
import 'package:katan/core/utils/geo.dart';
import 'package:katan/domain/entities/ar_object.dart';
import 'package:katan/presentation/cubit/ar_session_cubit.dart';

Future<void> showArPreviewSheet(BuildContext context, ArNearbyItem item) {
  final cubit = context.read<ArSessionCubit>();

  if (item.isCluster) {
    return showModalBottomSheet<void>(
      context: context,
      showDragHandle: true,
      builder: (sheetContext) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Рядом ${item.clusterSize} сооружений',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 220,
                child: ListView.separated(
                  itemCount: item.clusterItems.length,
                  separatorBuilder: (_, _) => const Divider(height: 1),
                  itemBuilder: (context, index) {
                    final member = item.clusterItems[index];
                    return ListTile(
                      dense: true,
                      leading: const Icon(Icons.cell_tower, color: AppColors.primary),
                      title: Text(member.object.title),
                      subtitle: Text('${GeoMath.formatDistance(member.distanceMeters)} ${member.directionHint}'),
                      onTap: () {
                        Navigator.pop(sheetContext);
                        cubit.select(member);
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    ).whenComplete(cubit.clearSelection);
  }

  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
    builder: (sheetContext) {
      final obj = item.object;
      final ready = cubit.state;
      final indoor = ready is ArSessionReady && ready.isIndoor;

      return Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 24 + MediaQuery.viewInsetsOf(sheetContext).bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(_icon(obj.kind), color: AppColors.primary, size: 28),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        obj.title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        obj.kind.label,
                        style: const TextStyle(color: AppColors.textSecondary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (obj.subtitle.isNotEmpty)
              Text(obj.subtitle, style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 8),
            Text(
              '${GeoMath.formatDistance(item.distanceMeters)} ${item.directionHint} азимут ${item.bearingDegrees.round()}',
              style: const TextStyle(color: AppColors.textRegular, fontSize: 13),
            ),
            if (obj.coveredInside) ...[
              const SizedBox(height: 4),
              Text(
                'XYZ ${obj.localXyzLabel} ${obj.headingDeg.round()}'
                '${obj.peerName.isNotEmpty ? ' ${obj.peerName}' : ''}',
                style: const TextStyle(color: AppColors.primary, fontSize: 13),
              ),
            ],
            if (obj.canEnterInside && obj.coveredCount > 0) ...[
              const SizedBox(height: 4),
              Text(
                'Внутри закрыто: ${obj.coveredCount}',
                style: const TextStyle(color: AppColors.primary, fontSize: 13),
              ),
            ],
            const SizedBox(height: 4),
            Text(
              'ID ${obj.ref.kind.wire}:${obj.ref.id}',
              style: const TextStyle(color: AppColors.textSecondary, fontSize: 12),
            ),
            const SizedBox(height: 16),
            if (obj.canEnterInside)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: FilledButton.tonalIcon(
                  onPressed: () {
                    Navigator.pop(sheetContext);
                    _runCoverAction(
                      cubit.enterIndoor(
                        peerType: 1,
                        peerId: obj.ref.id,
                        title: obj.title,
                        originLat: obj.lat,
                        originLng: obj.lng,
                      ),
                      context,
                      failLabel: 'Не удалось войти внутрь',
                    );
                  },
                  icon: const Icon(Icons.meeting_room_outlined, size: 18),
                  label: Text(obj.coveredCount > 0 ? 'Внутри (${obj.coveredCount})' : 'Внутрь'),
                ),
              ),
            if (obj.kind == ArObjectKind.device && !obj.coveredInside)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: FilledButton.tonalIcon(
                  onPressed: () {
                    Navigator.pop(sheetContext);
                    final peerType = indoor ? ready.indoorPeerType : 0;
                    final peerId = indoor ? ready.indoorPeerId : 0;
                    _runCoverAction(
                      cubit.coverDevice(
                        deviceId: obj.ref.id,
                        peerType: peerType,
                        peerId: peerId,
                      ),
                      context,
                      okLabel: 'Закрыто - смотрите внутри по XYZ',
                      failLabel: 'Не удалось закрыть',
                    );
                  },
                  icon: const Icon(Icons.lock_outline, size: 18),
                  label: const Text('Закрыть здесь'),
                ),
              ),
            if (obj.kind == ArObjectKind.device && obj.coveredInside) ...[
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: FilledButton.tonalIcon(
                  onPressed: () {
                    Navigator.pop(sheetContext);
                    _runCoverAction(
                      cubit.coverDevice(
                        deviceId: obj.ref.id,
                        peerType: obj.peerType,
                        peerId: obj.peerId,
                      ),
                      context,
                      okLabel: 'Переставлено: новые (X,Y,Z)',
                      failLabel: 'Не удалось переставить',
                    );
                  },
                  icon: const Icon(Icons.swap_horiz, size: 18),
                  label: const Text('Переставить здесь'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(sheetContext);
                    _runCoverAction(
                      cubit.uncoverDevice(obj.ref.id),
                      context,
                      okLabel: 'Устройство снова снаружи',
                      failLabel: 'Не удалось открыть наружу',
                    );
                  },
                  icon: const Icon(Icons.lock_open, size: 18),
                  label: const Text('Открыть наружу'),
                ),
              ),
            ],
            FilledButton.icon(
              onPressed: () {
                Navigator.pop(sheetContext);
                cubit.startNavigation(item);
              },
              icon: const Icon(Icons.navigation, size: 18),
              label: const Text('Вести сюда'),
            ),
          ],
        ),
      );
    },
  ).whenComplete(cubit.clearSelection);
}

Future<void> _runCoverAction(
  Future<void> action,
  BuildContext context, {
  String? okLabel,
  required String failLabel,
}) async {
  try {
    await action;
    if (okLabel != null && context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(okLabel)));
    }
  } catch (_) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(failLabel)));
    }
  }
}

IconData _icon(ArObjectKind kind) {
  return switch (kind) {
    ArObjectKind.node => Icons.cell_tower,
    ArObjectKind.device => Icons.router,
    ArObjectKind.cable => Icons.cable,
    ArObjectKind.customer => Icons.home_outlined,
  };
}
