import 'package:flutter/material.dart';
import 'star_item.dart';

class StarRating extends StatefulWidget {
  final int maxRating;
  final double rating;
  final void Function(double) onRatingSelected;
  final bool isHoverEnabled;

  const StarRating({
    super.key,
    this.maxRating = 5,
    required this.rating,
    required this.onRatingSelected,
    this.isHoverEnabled = true,
  });

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  double? _hoverRating;

  void _handleHover(int index) {
    if (!widget.isHoverEnabled) return;
    setState(() {
      _hoverRating = index + 1.0;
    });
  }

  void _handleExit() {
    if (!widget.isHoverEnabled) return;
    setState(() {
      _hoverRating = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final displayRating = _hoverRating ?? widget.rating;

    return Row(
      children: List.generate(widget.maxRating, (index) {
        return StarItem(
          index: index,
          currentRating: displayRating,
          onHover: _handleHover,
          onTap: () => widget.onRatingSelected(
            index + 1.0,
          ),
          onExit: _handleExit,
        );
      }),
    );
  }
}
