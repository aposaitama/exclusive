import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/product_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

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
    final responsive = ResponsiveBreakpoints.of(context);
    final isMobileOrTablet = responsive.isMobile || responsive.isTablet;
    final isMobile = responsive.isMobile;
    final isTablet = responsive.isTablet;
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
                  'Our Products',
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
                  'Explore Our Products',
                  style: AppFonts.poppingSemiBold.copyWith(
                    fontSize: isMobileOrTablet ? 20.0 : 36.0,
                  ),
                ),
                //
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
            // SizedBox(
            //   height: 760.0,
            //   child: GridView.builder(
            //     padding: EdgeInsets.all(
            //       0.0,
            //     ),
            //     scrollDirection: Axis.horizontal,
            //     itemCount: widget.ourProducts.length,
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 2,
            //       mainAxisSpacing: 0.0,
            //       crossAxisSpacing: 0.0,
            //       childAspectRatio: 350 / 270,
            //     ),
            //     itemBuilder: (context, index) {
            //       final product = widget.ourProducts[index];
            //       return ProductItemTile(
            //         product: product,
            //         onProductImageTap: () =>
            //             ProductDetailsRoute(id: product.documentId).go(context),
            //       );
            //     },
            //   ),
            // ),
            LayoutBuilder(
              builder: (context, constraints) {
                final screenWidth = MediaQuery.of(context).size.width;
                final isMaxWidth = screenWidth >= 1210;
                final containerWidth = constraints.maxWidth;

                final itemsPerPage = isMobile
                    ? 3
                    : isTablet
                        ? 3.5
                        : 5;
                final itemSpacing = 20.0;
                final totalSpacing = itemSpacing * (itemsPerPage - 1);
                final itemWidth =
                    (containerWidth - totalSpacing) / itemsPerPage;

                int tilesPerRow =
                    (constraints.maxWidth / (itemWidth + 20)).floor();

                return Wrap(
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: widget.ourProducts.map((product) {
                    return SizedBox(
                      height: isMobileOrTablet ? (itemWidth + 112) : 380,
                      width: (constraints.maxWidth - ((tilesPerRow - 1) * 20)) /
                          tilesPerRow,
                      child: ProductItemTile(
                        sizeHeight: itemWidth,
                        product: product,
                        onProductImageTap: () {
                          ProductDetailsRoute(id: product.documentId)
                              .go(context);
                        },
                      ),
                    );
                  }).toList(),
                );
              },
            ),

            SizedBox(
              height: 60.0,
            ),
            CustomRedButton(
              onButtonPressed: () => ProductsRoute(
                type: ProductSectionType.explore,
                sectionName: 'Our Peoducts',
              ).go(context),
              buttonTitle: 'View All Products',
            ),
            SizedBox(
              height: 70.0,
            ),
          ],
        ),
      ),
    );
  }
}
