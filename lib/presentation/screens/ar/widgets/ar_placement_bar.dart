import 'package:flutter/material.dart';
import 'package:katan/presentation/cubit/ar_session_cubit.dart';

class ArPlacementBar extends StatelessWidget {
  const ArPlacementBar({
    super.key,
    required this.draft,
    required this.onHit,
    required this.onNudge,
    required this.onCommit,
    required this.onCancel,
  });

  final ArPlacementDraft draft;
  final VoidCallback onHit;
  final void Function({double dx, double dy, double dz, double dHeading}) onNudge;
  final VoidCallback onCommit;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.72),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '${draft.reposition ? 'Переставить' : 'Закрыть'} ${draft.xyzLabel}  ${draft.headingDeg.round()}°  ${draft.plane}',
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 13),
            ),
            const SizedBox(height: 8),
            Wrap(
              spacing: 6,
              runSpacing: 6,
              children: [
                _btn('X−', () => onNudge(dx: -0.1)),
                _btn('X+', () => onNudge(dx: 0.1)),
                _btn('Y−', () => onNudge(dy: -0.1)),
                _btn('Y+', () => onNudge(dy: 0.1)),
                _btn('Z−', () => onNudge(dz: -0.1)),
                _btn('Z+', () => onNudge(dz: 0.1)),
                _btn('−5°', () => onNudge(dHeading: -5)),
                _btn('+5°', () => onNudge(dHeading: 5)),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                TextButton(onPressed: onHit, child: const Text('Луч')),
                TextButton(onPressed: onCancel, child: const Text('Отмена')),
                const Spacer(),
                FilledButton(onPressed: onCommit, child: const Text('Записать')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _btn(String label, VoidCallback onTap) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white24),
        visualDensity: VisualDensity.compact,
        padding: const EdgeInsets.symmetric(horizontal: 8),
      ),
      child: Text(label, style: const TextStyle(fontSize: 12)),
    );
  }
}
