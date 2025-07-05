import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BenefitsItemTile extends StatelessWidget {
  final String iconPath;
  final String benefitsTitle;
  final String benefetsDescription;
  const BenefitsItemTile({
    super.key,
    required this.iconPath,
    required this.benefitsTitle,
    required this.benefetsDescription,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    return Column(
      children: [
        Container(
          width: isMobileOrTablet ? 50.0 : 80.0,
          height: isMobileOrTablet ? 50.0 : 80.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.gunmetal,
          ),
          child: Center(
            child: Container(
              width: isMobileOrTablet ? 38.0 : 58.0,
              height: isMobileOrTablet ? 38.0 : 58.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(isMobileOrTablet ? 5.0 : 1.0),
                  child: SvgPicture.asset(
                    iconPath,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: isMobileOrTablet ? 10.0 : 24.0,
        ),
        Text(
          benefitsTitle,
          textAlign: isMobileOrTablet ? TextAlign.center : TextAlign.start,
          style: AppFonts.poppingSemiBold.copyWith(
            fontSize: isMobileOrTablet ? 14.0 : 20.0,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          benefetsDescription,
          textAlign: isMobileOrTablet ? TextAlign.center : TextAlign.start,
          style: AppFonts.poppingRegular.copyWith(
            fontSize: isMobileOrTablet ? 12.0 : 14.0,
          ),
        ),
      ],
    );
  }
}
