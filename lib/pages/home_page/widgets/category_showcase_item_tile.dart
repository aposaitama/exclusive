import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryShowcaseItemTile extends StatelessWidget {
  final String categoryName;
  final bool showArrow;
  const CategoryShowcaseItemTile(
      {super.key, this.showArrow = false, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          categoryName,
          style: AppFonts.poppingRegular.copyWith(
            fontSize: 16.0,
          ),
        ),
        if (showArrow)
          SvgPicture.asset(
            Assets.icons.smallArrow,
            fit: BoxFit.scaleDown,
          )
      ],
    );
  }
}
