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
    final kinds = ArObjectKind.values.where((k) => k.isHudLayer && allowed.contains(k)).toList();
    if (kinds.isEmpty) {
      return const SizedBox.shrink();
    }

    final enabledCount = kinds.where(enabled.contains).length;
    final layersLabel = soloKind != null ? '${soloKind!.label} только' : 'Слои $enabledCount';

    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      child: Row(
        children: [
          Material(
            color: Colors.transparent,
            child: _RadiusMenu(
              radiusMeters: radiusMeters,
              onRadius: onRadius,
            ),
          ),
          const SizedBox(width: 8),
          Material(
            color: Colors.transparent,
            child: _LayersMenu(
              kinds: kinds,
              enabled: enabled,
              soloKind: soloKind,
              label: layersLabel,
              onToggle: onToggle,
              onSolo: onSolo,
              onEnableAll: onEnableAll,
            ),
          ),
        ],
      ),
    );
  }
}

class _RadiusMenu extends StatelessWidget {
  const _RadiusMenu({
    required this.radiusMeters,
    required this.onRadius,
  });

  final double radiusMeters;
  final ValueChanged<double> onRadius;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<double>(
      tooltip: 'Радиус поиска',
      color: Colors.white.withValues(alpha: 0.96),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      offset: const Offset(0, 36),
      onSelected: onRadius,
      itemBuilder: (context) {
        return [
          for (final meters in ArSessionCubit.radiusPresetsM)
            PopupMenuItem<double>(
              value: meters,
              child: _MenuRow(
                label: _radiusLabel(meters),
                checked: _isCurrentRadius(radiusMeters, meters),
              ),
            ),
        ];
      },
      child: _HudChip(
        icon: Icons.radar,
        label: _radiusLabel(radiusMeters),
      ),
    );
  }
}

class _LayersMenu extends StatelessWidget {
  const _LayersMenu({
    required this.kinds,
    required this.enabled,
    required this.soloKind,
    required this.label,
    required this.onToggle,
    required this.onSolo,
    required this.onEnableAll,
  });

  final List<ArObjectKind> kinds;
  final Set<ArObjectKind> enabled;
  final ArObjectKind? soloKind;
  final String label;
  final ValueChanged<ArObjectKind> onToggle;
  final ValueChanged<ArObjectKind> onSolo;
  final VoidCallback onEnableAll;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<_LayerAction>(
      tooltip: 'Слои AR',
      color: Colors.white.withValues(alpha: 0.96),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      offset: const Offset(0, 36),
      onSelected: (action) {
        switch (action.kind) {
          case _LayerActionKind.toggle:
            onToggle(action.layer!);
          case _LayerActionKind.all:
            onEnableAll();
          case _LayerActionKind.solo:
            onSolo(action.layer!);
        }
      },
      itemBuilder: (context) {
        return [
          for (final kind in kinds)
            PopupMenuItem<_LayerAction>(
              value: _LayerAction.toggle(kind),
              child: _MenuRow(
                label: kind.label,
                checked: enabled.contains(kind),
                solo: soloKind == kind,
              ),
            ),
          const PopupMenuDivider(height: 8),
          PopupMenuItem<_LayerAction>(
            value: const _LayerAction.all(),
            child: _MenuRow(
              label: 'Все слои',
              checked: soloKind == null && enabled.length == kinds.length,
            ),
          ),
          for (final kind in kinds)
            PopupMenuItem<_LayerAction>(
              value: _LayerAction.solo(kind),
              child: _MenuRow(
                label: 'Только ${kind.label.toLowerCase()}',
                checked: soloKind == kind,
                solo: soloKind == kind,
              ),
            ),
        ];
      },
      child: _HudChip(
        icon: Icons.layers_outlined,
        label: label,
      ),
    );
  }
}

class _HudChip extends StatelessWidget {
  const _HudChip({
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class _MenuRow extends StatelessWidget {
  const _MenuRow({
    required this.label,
    required this.checked,
    this.solo = false,
  });

  final String label;
  final bool checked;
  final bool solo;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 22,
          child: checked
            ? Icon(
              Icons.check,
              size: 18,
              color: solo ? Colors.amber.shade800 : Colors.black87,
            )
            : null,
        ),
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              fontWeight: checked ? FontWeight.w600 : FontWeight.w500,
              color: solo ? Colors.amber.shade900 : Colors.black87,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}

enum _LayerActionKind { toggle, all, solo }

class _LayerAction {
  const _LayerAction._(this.kind, this.layer);

  const _LayerAction.toggle(ArObjectKind layer) : this._(_LayerActionKind.toggle, layer);

  const _LayerAction.all() : this._(_LayerActionKind.all, null);

  const _LayerAction.solo(ArObjectKind layer) : this._(_LayerActionKind.solo, layer);

  final _LayerActionKind kind;
  final ArObjectKind? layer;
}

bool _isCurrentRadius(double current, double preset) => (current - preset).abs() < 0.5;

String _radiusLabel(double meters) {
  if (meters >= 1000) {
    return '${(meters / 1000).toStringAsFixed(meters % 1000 == 0 ? 0 : 1)} км';
  }

  return '${meters.round()} м';
}
