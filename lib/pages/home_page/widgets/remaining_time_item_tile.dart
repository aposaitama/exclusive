import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RemainingTimeItemTile extends StatelessWidget {
  final String tileTitle;
  final String remainingTime;
  const RemainingTimeItemTile({
    super.key,
    required this.tileTitle,
    required this.remainingTime,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return Container(
      width: isMobileOrTablet ? 40.0 : 62.0,
      height: isMobileOrTablet ? 40.0 : 62.0,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            remainingTime,
            style: AppFonts.poppingSemiBold.copyWith(
              fontSize: isMobileOrTablet ? 12.0 : 16.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 1.0,
          ),
          Text(
            tileTitle,
            style: AppFonts.poppingRegular.copyWith(
              fontSize: isMobileOrTablet ? 8.0 : 11.0,
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
