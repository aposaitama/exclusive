import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StarItem extends StatelessWidget {
  final int index;
  final double currentRating;
  final void Function(int) onHover;
  final void Function() onTap;
  final void Function() onExit;

  const StarItem({
    super.key,
    required this.index,
    required this.currentRating,
    required this.onHover,
    required this.onTap,
    required this.onExit,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;

    final isFilled = index < currentRating;

    return MouseRegion(
      onEnter: (_) => onHover(index),
      onExit: (_) => onExit(),
      child: GestureDetector(
        onTap: onTap,
        child: Icon(
          Icons.star,
          color: isFilled ? Colors.amber : Colors.grey,
          size: isMobileOrTablet ? 13.0 : 20,
        ),
      ),
    );
  }
}
