import 'package:flutter/material.dart';
import 'package:katan/app/theme.dart';

class ListSkeleton extends StatefulWidget {
  const ListSkeleton({
    super.key,
    this.itemCount = 5,
    this.itemHeight = 92,
  });

  final int itemCount;
  final double itemHeight;

  @override
  State<ListSkeleton> createState() => _ListSkeletonState();
}

class _ListSkeletonState extends State<ListSkeleton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1100),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        final alpha = 0.35 + (_controller.value * 0.35);
        return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 24),
          itemCount: widget.itemCount,
          itemBuilder: (context, index) => _SkeletonCard(
            height: widget.itemHeight,
            alpha: alpha,
          ),
        );
      },
    );
  }
}

class _SkeletonCard extends StatelessWidget {
  const _SkeletonCard({
    required this.height,
    required this.alpha,
  });

  final double height;
  final double alpha;

  @override
  Widget build(BuildContext context) {
    final base = AppColors.border.withValues(alpha: alpha);
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      padding: const EdgeInsets.fromLTRB(14, 14, 14, 14),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _bar(base, widthFactor: 0.7, height: 14),
          const SizedBox(height: 10),
          _bar(base, widthFactor: 0.35, height: 12),
          const SizedBox(height: 10),
          _bar(base, widthFactor: 0.5, height: 10),
        ],
      ),
    );
  }

  Widget _bar(Color color, {required double widthFactor, required double height}) {
    return FractionallySizedBox(
      alignment: Alignment.centerLeft,
      widthFactor: widthFactor,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
