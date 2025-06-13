import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
    return Container(
      width: 270,
      height: 230,
      padding: EdgeInsets.only(
        top: 30.0,
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
            height: 24.0,
          ),
          Text(
            achivementsTitle,
            style: AppFonts.poppingSemiBold.copyWith(
              fontSize: 32.0,
              color: !isRed ? Colors.black : Colors.white,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            achivementsDescription,
            style: AppFonts.poppingRegular.copyWith(
              fontSize: 16.0,
              color: !isRed ? Colors.black : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
