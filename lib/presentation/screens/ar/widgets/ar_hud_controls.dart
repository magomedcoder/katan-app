import 'package:flutter/material.dart';
import 'package:katan/domain/entities/ar_object.dart';
import 'package:katan/presentation/cubit/ar_session_cubit.dart';

class ArHudControls extends StatelessWidget {
  const ArHudControls({
    super.key,
    required this.radiusMeters,
    required this.allowed,
    required this.enabled,
    required this.soloKind,
    required this.onRadius,
    required this.onToggle,
    required this.onSolo,
    required this.onEnableAll,
  });

  final double radiusMeters;
  final Set<ArObjectKind> allowed;
  final Set<ArObjectKind> enabled;
  final ArObjectKind? soloKind;
  final ValueChanged<double> onRadius;
  final ValueChanged<ArObjectKind> onToggle;
  final ValueChanged<ArObjectKind> onSolo;
  final VoidCallback onEnableAll;

  @override
  Widget build(BuildContext context) {
    final kinds = ArObjectKind.values.where(allowed.contains).toList();
    if (kinds.isEmpty) {
      return const SizedBox.shrink();
    }

    final enabledCount = kinds.where(enabled.contains).length;
    final layersLabel = soloKind != null ? '${soloKind!.label} только' : 'Слои $enabledCount';

    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      child: Row(
        children: [
          _ArHudDropdownChip(
            icon: Icons.radar,
            label: _radiusLabel(radiusMeters),
            onOpen: (ctx) => _pickRadius(ctx),
          ),
          const SizedBox(width: 8),
          _ArHudDropdownChip(
            icon: Icons.layers_outlined,
            label: layersLabel,
            onOpen: (ctx) => _pickLayers(ctx, kinds),
          ),
        ],
      ),
    );
  }

  Future<void> _pickRadius(BuildContext context) async {
    final i = await _showHudMenu(
      context,
      items: [
        for (var n = 0; n < ArSessionCubit.radiusPresetsM.length; n++)
          _HudMenuOption(
            index: n,
            label: _radiusLabel(ArSessionCubit.radiusPresetsM[n]),
            checked: (radiusMeters - ArSessionCubit.radiusPresetsM[n]).abs() < 0.5,
          ),
      ],
    );

    if (i == null) {
      return;
    }

    onRadius(ArSessionCubit.radiusPresetsM[i]);
  }

  Future<void> _pickLayers(BuildContext context, List<ArObjectKind> kinds) async {
    final options = <_HudMenuOption>[
      for (var n = 0; n < kinds.length; n++)
        _HudMenuOption(
          index: n,
          label: kinds[n].label,
          checked: enabled.contains(kinds[n]),
          solo: soloKind == kinds[n],
        ),
      _HudMenuOption(
        index: kinds.length,
        label: 'Все слои',
        checked: soloKind == null && enabled.length == kinds.length,
        dividerBefore: true,
      ),
      for (var n = 0; n < kinds.length; n++)
        _HudMenuOption(
          index: kinds.length + 1 + n,
          label: 'Только ${kinds[n].label.toLowerCase()}',
          checked: soloKind == kinds[n],
          solo: soloKind == kinds[n],
        ),
    ];

    final i = await _showHudMenu(context, items: options);
    if (i == null) {
      return;
    }

    if (i < kinds.length) {
      onToggle(kinds[i]);
    } else if (i == kinds.length) {
      onEnableAll();
    } else {
      onSolo(kinds[i - kinds.length - 1]);
    }
  }

  Future<int?> _showHudMenu(
    BuildContext context, {
    required List<_HudMenuOption> items,
  }) {
    final chipContext = context;
    final box = chipContext.findRenderObject() as RenderBox?;
    if (box == null) {
      return Future.value(null);
    }

    final origin = box.localToGlobal(Offset.zero);
    final entries = <PopupMenuEntry<int>>[];
    for (final opt in items) {
      if (opt.dividerBefore && entries.isNotEmpty) {
        entries.add(const PopupMenuDivider(height: 8));
      }

      entries.add(
        PopupMenuItem<int>(
          value: opt.index,
          height: 44,
          child: Row(
            children: [
              SizedBox(
                width: 22,
                child: opt.checked
                  ? Icon(
                    Icons.check,
                    size: 18,
                    color: opt.solo ? Colors.amber.shade800 : Colors.black87,
                  )
                  : null,
              ),
              Expanded(
                child: Text(
                  opt.label,
                  style: TextStyle(
                    fontWeight: opt.checked ? FontWeight.w600 : FontWeight.w500,
                    color: opt.solo ? Colors.amber.shade900 : Colors.black87,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return showMenu<int>(
      context: context,
      color: Colors.white.withValues(alpha: 0.96),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      position: RelativeRect.fromLTRB(
        origin.dx,
        origin.dy + box.size.height + 4,
        origin.dx + box.size.width,
        origin.dy,
      ),
      items: entries,
    );
  }

  static String _radiusLabel(double meters) {
    if (meters >= 1000) {
      return '${(meters / 1000).toStringAsFixed(meters >= 2000 ? 0 : 1)} км';
    }

    return '${meters.round()} м';
  }
}

class _ArHudDropdownChip extends StatelessWidget {
  const _ArHudDropdownChip({
    required this.icon,
    required this.label,
    required this.onOpen,
  });

  final IconData icon;
  final String label;
  final void Function(BuildContext context) onOpen;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onOpen(context),
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.55),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 16, color: Colors.white),
              const SizedBox(width: 6),
              Text(
                label,
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
              const SizedBox(width: 2),
              const Icon(Icons.arrow_drop_down, size: 18, color: Colors.white70),
            ],
          ),
        ),
      ),
    );
  }
}

class _HudMenuOption {
  const _HudMenuOption({
    required this.index,
    required this.label,
    required this.checked,
    this.solo = false,
    this.dividerBefore = false,
  });

  final int index;
  final String label;
  final bool checked;
  final bool solo;
  final bool dividerBefore;
}
