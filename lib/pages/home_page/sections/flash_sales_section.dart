import 'package:exclusive_web/gen/assets.gen.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/pages/product_details_page/product_details_screen.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/product_item_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FlashSalesSection extends StatefulWidget {
  final List<ProductLightModel> flashSalesProducts;
  const FlashSalesSection({
    super.key,
    required this.flashSalesProducts,
  });

  @override
  State<FlashSalesSection> createState() => _FlashSalesSectionState();
}

class _FlashSalesSectionState extends State<FlashSalesSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1170.0,
              ),
              child: Column(
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
                        'Today\'s',
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
                        'Flash Sales',
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
                    height: 40.0,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 350.0,
                  width: (MediaQuery.of(context).size.width / 2) + 585.0,
                  child:
                      // Row(
                      //   children: [
                      //     GestureDetector(
                      //       onTap: () => Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //           builder: (context) => const ProductDetailsScreen(),
                      //         ),
                      //       ),
                      //       child: ProductItemTile(
                      //         iconPath: Assets.images.xbox.path,
                      //         productName: 'HAVIT HV-G92 Gamepad',
                      //         productPrice: 120.0,
                      //         productOriginPrice: 160.0,
                      //       ),
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
                      ListView.separated(
                    // controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.flashSalesProducts.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 20.0),
                    itemBuilder: (context, index) {
                      final product = widget.flashSalesProducts[index];
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
              ],
            ),
            SizedBox(
              height: 60.0,
            ),
            CustomRedButton(
              buttonTitle: 'View All Products',
            ),
            SizedBox(
              height: 60.0,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1170.0,
              ),
              child: Container(
                width: double.infinity,
                height: 0.5,
                color: Colors.black.withValues(
                  alpha: 0.3,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
