import 'package:flutter/material.dart';

class ChatAvatar extends StatelessWidget {
  const ChatAvatar({
    super.key,
    required this.label,
    this.size = 40,
    this.online = false,
  });

  final String label;
  final double size;
  final bool online;

  static const _palette = <Color>[
    Color(0xFF8B5CF6),
    Color(0xFF3B82F6),
    Color(0xFF10B981),
    Color(0xFFF59E0B),
    Color(0xFFF43F5E),
    Color(0xFF06B6D4),
    Color(0xFF6366F1),
    Color(0xFF14B8A6),
    Color(0xFFF97316),
    Color(0xFFD946EF),
  ];

  static String initials(String label) {
    final parts = label.trim().split(RegExp(r'\s+')).where((p) => p.isNotEmpty).toList();
    if (parts.length >= 2) {
      final a = parts[0].isNotEmpty ? parts[0][0] : '';
      final b = parts[1].isNotEmpty ? parts[1][0] : '';
      return '$a$b'.toUpperCase();
    }

    if (parts.length == 1) {
      final value = parts[0];
      return value.substring(0, value.length.clamp(0, 2)).toUpperCase();
    }

    return '?';
  }

  static Color colorFor(String seed) {
    var hash = 0;
    for (final code in seed.codeUnits) {
      hash = code + ((hash << 5) - hash);
    }
    return _palette[hash.abs() % _palette.length];
  }

  @override
  Widget build(BuildContext context) {
    final seed = label.trim().isEmpty ? '?' : label.trim();
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            radius: size / 2,
            backgroundColor: colorFor(seed),
            child: Text(
              initials(seed),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: size * 0.32,
              ),
            ),
          ),
          if (online)
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: size * 0.28,
                height: size * 0.28,
                decoration: BoxDecoration(
                  color: const Color(0xFF10B981),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.surface,
                    width: 2,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
