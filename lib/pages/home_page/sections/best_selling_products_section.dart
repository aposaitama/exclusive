import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/category_item_tile.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/product_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BestSellingProductsSection extends StatelessWidget {
  const BestSellingProductsSection({super.key});

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
                'This Month',
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
                'Best Selling Products',
                style: AppFonts.poppingSemiBold.copyWith(
                  fontSize: 36.0,
                ),
              ),
              CustomRedButton(
                buttonTitle: 'View All',
              ),
            ],
          ),
          SizedBox(
            height: 60.0,
          ),
          Row(
            children: [
              ProductItemTile(
                iconPath: Assets.images.xbox.path,
                productName: 'HAVIT HV-G92 Gamepad',
                productPrice: 120.0,
                productOriginPrice: 160.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              ProductItemTile(
                iconPath: Assets.images.xbox.path,
                productName: 'HAVIT HV-G92 Gamepad',
                productPrice: 120.0,
                productSalePercent: 40.0,
              ),
              SizedBox(
                width: 20.0,
              ),
              ProductItemTile(
                iconPath: Assets.images.xbox.path,
                productName: 'HAVIT HV-G92 Gamepad',
                productPrice: 120.0,
              ),
              SizedBox(
                width: 20.0,
              ),
            ],
          ),
          SizedBox(
            height: 70.0,
          ),
        ],
      ),
    );
  }
}
