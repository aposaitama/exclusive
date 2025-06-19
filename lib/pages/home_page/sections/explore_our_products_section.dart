import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/pages/product_details_page/product_details_screen.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/product_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExploreOurProductsSection extends StatefulWidget {
  final List<ProductLightModel> ourProducts;
  const ExploreOurProductsSection({
    super.key,
    required this.ourProducts,
  });

  @override
  State<ExploreOurProductsSection> createState() =>
      _ExploreOurProductsSectionState();
}

class _ExploreOurProductsSectionState extends State<ExploreOurProductsSection> {
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
                'Our Products',
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
                'Explore Our Products',
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
          // Row(
          //   children: [
          //     ProductItemTile(
          //       iconPath: Assets.images.xbox.path,
          //       productName: 'HAVIT HV-G92 Gamepad',
          //       productPrice: 120.0,
          //       productOriginPrice: 160.0,
          //     ),
          //     SizedBox(
          //       width: 20.0,
          //     ),
          //     ProductItemTile(
          //       iconPath: Assets.images.xbox.path,
          //       productName: 'HAVIT HV-G92 Gamepad',
          //       productPrice: 120.0,
          //       productSalePercent: 40.0,
          //     ),
          //     SizedBox(
          //       width: 20.0,
          //     ),
          //     ProductItemTile(
          //       iconPath: Assets.images.xbox.path,
          //       productName: 'HAVIT HV-G92 Gamepad',
          //       productPrice: 120.0,
          //     ),
          //     SizedBox(
          //       width: 20.0,
          //     ),
          //   ],
          // ),
          SizedBox(
            height: 760.0,
            child: GridView.builder(
              padding: EdgeInsets.all(
                0.0,
              ),
              scrollDirection: Axis.horizontal,
              itemCount: widget.ourProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 60.0,
                crossAxisSpacing: 0.0,
                childAspectRatio: 350 / 270,
              ),
              itemBuilder: (context, index) {
                final product = widget.ourProducts[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ProductDetailsScreen(),
                    ),
                  ),
                  child: ProductItemTile(
                    productColor: product.product_colors,
                    productName: product.productName,
                    productPrice: product.productPrice,
                    productOriginPrice: product.productOriginPrice,
                    productSalePercent: product.salePercent,
                  ),
                );
              },
            ),
          ),

          SizedBox(
            height: 60.0,
          ),
          CustomRedButton(
            buttonTitle: 'View All Products',
          ),
          SizedBox(
            height: 70.0,
          ),
        ],
      ),
    );
  }
}
