import 'package:flutter/material.dart';
import 'package:parentia/core/presentation/widgets/back_button.dart';

class SlidingTitleHeaderDelegate extends SliverPersistentHeaderDelegate {
  SlidingTitleHeaderDelegate({
    required this.title,
    this.onBack,
    this.expandedHeight = 140,
    this.collapsedHeight = kToolbarHeight,
    this.backgroundColor,
  });

  final String title;
  final VoidCallback? onBack;
  final double expandedHeight;
  final double collapsedHeight;
  final Color? backgroundColor;

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => collapsedHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final t = (shrinkOffset / (maxExtent - minExtent)).clamp(0.0, 1.0);
    final curvedT = Curves.easeOut.transform(t);

    final theme = Theme.of(context);
    final bigStyle =
        theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700) ??
        const TextStyle(fontSize: 28, fontWeight: FontWeight.w700);
    final smallStyle =
        theme.textTheme.titleMedium ??
        const TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
    final blendedStyle = TextStyle.lerp(bigStyle, smallStyle, curvedT)!;

    return Material(
      color: backgroundColor ?? theme.scaffoldBackgroundColor,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          const leftPadExpanded = 0.0;
          const rightPad = 16.0;
          const gapAfterBack = 16.0;
          const backButtonWidth = 56.0;

          final fromRect = Rect.fromLTWH(
            leftPadExpanded,
            kToolbarHeight + 32.0,
            width - leftPadExpanded - rightPad,
            maxExtent - kToolbarHeight - 16.0,
          );
          final toRect = Rect.fromLTWH(
            backButtonWidth + gapAfterBack,
            0.0,
            width - (backButtonWidth + gapAfterBack) - rightPad,
            kToolbarHeight,
          );

          final current = Rect.lerp(fromRect, toRect, curvedT)!;
          final currentAlign = Alignment.lerp(
            Alignment.topLeft,
            Alignment.centerLeft,
            curvedT,
          )!;

          return Stack(
            children: [
              Positioned(
                left: current.left,
                top: current.top,
                width: current.width,
                height: current.height,
                child: Align(
                  alignment: currentAlign,
                  child: DefaultTextStyle(
                    style: blendedStyle,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    child: Text(title),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                height: kToolbarHeight,
                child: Row(
                  children: [
                    CustomBackButton(),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SlidingTitleHeaderDelegate old) {
    return title != old.title ||
        expandedHeight != old.expandedHeight ||
        collapsedHeight != old.collapsedHeight ||
        backgroundColor != old.backgroundColor;
  }
}
