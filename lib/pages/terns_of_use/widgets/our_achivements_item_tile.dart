import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class OurAchivementsItemTile extends StatelessWidget {
  final String iconPath;
  final String achivementsTitle;
  final String achivementsDescription;
  final bool isRed;
  const OurAchivementsItemTile({
    super.key,
    required this.iconPath,
    required this.achivementsTitle,
    required this.achivementsDescription,
    this.isRed = false,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    final bool isMobile = responsive.isMobile;
    final bool isTablet = responsive.isTablet;
    final bool isMobileOrTablet = isMobile || isTablet;
    return Container(
      width: 270,
      height: 230,
      padding: EdgeInsets.only(
        top: isMobileOrTablet ? 10.0 : 30.0,
      ),
      decoration: BoxDecoration(
        color: isRed ? AppColors.redColor : Colors.white,
        borderRadius: BorderRadius.circular(
          4.0,
        ),
        border: Border.all(
          width: 1.0,
          color: isRed
              ? Colors.transparent
              : Colors.black.withValues(
                  alpha: 0.3,
                ),
        ),
        boxShadow: [
          if (isRed)
            BoxShadow(
              color: Colors.black.withValues(
                alpha: 0.05,
              ),
              offset: Offset(
                0,
                1,
              ),
              blurRadius: 13.0,
            ),
        ],
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            iconPath,
          ),
          SizedBox(
            height: isMobileOrTablet ? 10.0 : 24.0,
          ),
          Text(
            achivementsTitle,
            style: AppFonts.poppingSemiBold.copyWith(
              fontSize: isMobileOrTablet ? 20.0 : 32.0,
              color: !isRed ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            textAlign: TextAlign.center,
            achivementsDescription,
            style: AppFonts.poppingRegular.copyWith(
              fontSize: isMobileOrTablet ? 12.0 : 16.0,
              color: !isRed ? Colors.black : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
