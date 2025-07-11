import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/custom_transparent_button.dart';
import 'package:exclusive_web/widgets/product_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RelatedItemsSection extends StatefulWidget {
  final List<ProductLightModel> retaledItems;
  const RelatedItemsSection({
    super.key,
    required this.retaledItems,
  });

  @override
  State<RelatedItemsSection> createState() => _RelatedItemsSectionState();
}

class _RelatedItemsSectionState extends State<RelatedItemsSection> {
  @override
  Widget build(BuildContext context) {
    final responsive = ResponsiveBreakpoints.of(context);
    bool isMobileOrTablet = responsive.isMobile || responsive.isTablet;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1170.0,
      ),
      child: widget.retaledItems.isEmpty
          ? SizedBox.shrink()
          : Column(
              children: [
                SizedBox(
                  height: 80.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                          'Just For You',
                          style: AppFonts.poppingRegular.copyWith(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    CustomTransparentButton(
                      buttonTitle: 'See All',
                    )
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
                      height: isMobileOrTablet ? 250 : 370,
                      width: containerWidth,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.retaledItems.length,
                        separatorBuilder: (_, __) =>
                            SizedBox(width: itemSpacing),
                        itemBuilder: (context, index) {
                          final product = widget.retaledItems[index];
                          return SizedBox(
                            width: itemWidth,
                            child: ProductItemTile(
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
    );
  }
}
