import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/pages/product_details_page/product_details_screen.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/product_item_tile.dart';
import 'package:flutter/material.dart';

class BestSellingProductsSection extends StatefulWidget {
  final List<ProductLightModel> bestSellingProducts;
  const BestSellingProductsSection({
    super.key,
    required this.bestSellingProducts,
  });

  @override
  State<BestSellingProductsSection> createState() =>
      _BestSellingProductsSectionState();
}

class _BestSellingProductsSectionState
    extends State<BestSellingProductsSection> {
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
          SizedBox(
            height: 350.0,
            width: (MediaQuery.of(context).size.width / 2) + 585.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: widget.bestSellingProducts.length,
              separatorBuilder: (_, __) => const SizedBox(width: 20.0),
              itemBuilder: (context, index) {
                final product = widget.bestSellingProducts[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ProductDetailsScreen(
                        productId: '1',
                      ),
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
            height: 140.0,
          ),
        ],
      ),
    );
  }
}
