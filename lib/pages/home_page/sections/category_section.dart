import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/category_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1170.0,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 80.0,
          ),
          Row(
            children: [
              Container(
                width: 20.0,
                height: 40.0,
                decoration: BoxDecoration(
                  color: AppColors.redColor,
                  borderRadius: BorderRadius.circular(
                    4.0,
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                'Categories',
                style: AppFonts.poppingSemiBold.copyWith(
                  fontSize: 16.0,
                  color: AppColors.redColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Browse By Category',
                style: AppFonts.poppingSemiBold.copyWith(
                  fontSize: 36.0,
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 46.0,
                    height: 46.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.lightGray,
                    ),
                    child: SvgPicture.asset(
                      fit: BoxFit.scaleDown,
                      Assets.icons.iconsArrowLeft,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    width: 46.0,
                    height: 46.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.lightGray,
                    ),
                    child: Transform.rotate(
                      angle: 3.14,
                      child: SvgPicture.asset(
                        fit: BoxFit.scaleDown,
                        Assets.icons.iconsArrowLeft,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 60.0,
          ),
          CategoryItemTile(
            iconPath: Assets.icons.categorySellPhone,
            categoryTitle: 'Phones',
          ),
          SizedBox(
            height: 70.0,
          ),
          Container(
            width: double.infinity,
            height: 0.5,
            color: Colors.black.withValues(
              alpha: 0.3,
            ),
          )
        ],
      ),
    );
  }
}
