import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Column(
      children: [
        Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.gunmetal,
          ),
          child: Center(
            child: Container(
              width: 58.0,
              height: 58.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: Center(
                child: SvgPicture.asset(
                  iconPath,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 24.0,
        ),
        Text(
          benefitsTitle,
          style: AppFonts.poppingSemiBold.copyWith(
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          benefetsDescription,
          style: AppFonts.poppingRegular.copyWith(
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
