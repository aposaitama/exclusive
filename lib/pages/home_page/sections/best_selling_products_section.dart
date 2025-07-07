import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/product_item_tile.dart';
import 'package:flutter/material.dart';

import 'package:responsive_framework/responsive_framework.dart';

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
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1210.0,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 80.0,
            ),
            Row(
              children: [
                Container(
                  width: isMobileOrTablet ? 10.0 : 20.0,
                  height: isMobileOrTablet ? 20.0 : 40.0,
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
                    fontSize: isMobileOrTablet ? 12.0 : 16.0,
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
                    fontSize: isMobileOrTablet ? 20.0 : 36.0,
                  ),
                ),
                CustomRedButton(
                  onButtonPressed: () => ProductsRoute(
                    type: ProductSectionType.bestSelling,
                    sectionName: 'Best Selling Products',
                  ).go(context),
                  buttonTitle: 'View All',
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                final containerWidth = constraints.maxWidth;

                final itemsPerPage = isMobileOrTablet ? 3 : 4;
                final itemSpacing = 20.0;
                final totalSpacing = itemSpacing * (itemsPerPage - 1);
                final itemWidth =
                    (containerWidth - totalSpacing) / itemsPerPage;

                return SizedBox(
                  height: isMobileOrTablet ? (itemWidth + 110) : 380,
                  width: containerWidth,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.bestSellingProducts.length,
                    separatorBuilder: (_, __) => SizedBox(width: itemSpacing),
                    itemBuilder: (context, index) {
                      final product = widget.bestSellingProducts[index];
                      return SizedBox(
                        width: itemWidth,
                        child: ProductItemTile(
                          sizeHeight: itemWidth,
                          product: product,
                          onProductImageTap: () =>
                              ProductDetailsRoute(id: product.documentId)
                                  .go(context),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 140.0,
            ),
          ],
        ),
      ),
    );
  }
}
