import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CategoryItemTile extends StatefulWidget {
  final String iconPath;
  final String categoryTitle;
  const CategoryItemTile({
    super.key,
    required this.iconPath,
    required this.categoryTitle,
  });

  @override
  State<CategoryItemTile> createState() => _CategoryItemTileState();
}

class _CategoryItemTileState extends State<CategoryItemTile> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    bool isTablet = responsive.isMobile || responsive.isTablet;
    return MouseRegion(
      onEnter: (event) => setState(
        () {
          isHover = true;
        },
      ),
      onExit: (event) => setState(
        () {
          isHover = false;
        },
      ),
      child: Container(
        width: isMobileOrTablet ? 150.0 : 170.0,
        height: isMobileOrTablet ? 121.0 : 145.0,
        padding: EdgeInsets.symmetric(
          vertical: 25.0,
        ),
        decoration: BoxDecoration(
          color: isHover ? AppColors.redColor : Colors.white,
          borderRadius: BorderRadius.circular(
            4.0,
          ),
          border: Border.all(
            width: 1.0,
            color: Colors.black.withValues(
              alpha: 0.3,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.network(
              widget.iconPath,
              colorFilter: ColorFilter.mode(
                isHover ? Colors.white : Colors.black,
                BlendMode.srcIn,
              ),
            ),
            Text(
              widget.categoryTitle,
              style: AppFonts.poppingRegular.copyWith(
                fontSize: isMobileOrTablet ? 10.0 : 16.0,
                color: isHover ? Colors.white : Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
