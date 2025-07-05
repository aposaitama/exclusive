import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CountTimeItemTile extends StatelessWidget {
  final String label;
  final String value;
  const CountTimeItemTile(
      {super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppFonts.poppingMedium.copyWith(
              fontSize: isMobileOrTablet ? 10.0 : 12.0,
            ),
          ),
          Text(
            value,
            style: AppFonts.poppingSemiBold.copyWith(
              fontSize: isMobileOrTablet ? 20.0 : 32.0,
            ),
          )
        ],
      ),
    );
  }
}
