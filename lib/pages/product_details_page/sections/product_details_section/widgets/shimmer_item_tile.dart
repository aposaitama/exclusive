import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerItemTile extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;

  const ShimmerItemTile({
    super.key,
    this.width = double.infinity,
    this.height = 16.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(4.0)),
  });

  @override
  Widget build(BuildContext context) {
    final shimmerBase = Colors.grey.shade300;
    final shimmerHighlight = Colors.grey.shade100;

    return Shimmer.fromColors(
      baseColor: shimmerBase,
      highlightColor: shimmerHighlight,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: shimmerBase,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
