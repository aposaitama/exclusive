import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';

class CountTimeItemTile extends StatelessWidget {
  final String label;
  final String value;
  const CountTimeItemTile(
      {super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppFonts.poppingMedium.copyWith(
              fontSize: 12.0,
            ),
          ),
          Text(
            value,
            style: AppFonts.poppingSemiBold.copyWith(
              fontSize: 32.0,
            ),
          )
        ],
      ),
    );
  }
}
