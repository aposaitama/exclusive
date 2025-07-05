import 'package:exclusive_web/models/cart_product_model/cart_product_model.dart';
import 'package:exclusive_web/pages/cart_page/widgets/cart_product_item_tile.dart';
import 'package:exclusive_web/pages/cart_page/widgets/cart_total.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_transparent_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CartSection extends StatefulWidget {
  final List<CartProductModel> cartProducts;
  final void Function(String productId)? onIncreaseArrowPressed;
  final void Function(String productId)? onDecreaseArrowPressed;
  final void Function(String productId)? onDeletePressed;
  const CartSection({
    super.key,
    required this.cartProducts,
    this.onIncreaseArrowPressed,
    this.onDecreaseArrowPressed,
    this.onDeletePressed,
  });

  @override
  State<CartSection> createState() => _CartSectionState();
}

class _CartSectionState extends State<CartSection> {
  double get subTotalSum {
    return widget.cartProducts.fold(0.0, (sum, product) {
      return sum + (product.productPrice * product.quantity);
    });
  }

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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(
                      alpha: 0.05,
                    ),
                    offset: Offset(
                      0,
                      1,
                    ),
                    blurRadius: 13.0,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobileOrTablet ? 10.0 : 40.0,
                  vertical: 24.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Product',
                        style: AppFonts.poppingRegular.copyWith(
                          fontSize: isMobileOrTablet ? 12.0 : 16.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Price',
                        style: AppFonts.poppingRegular.copyWith(
                          fontSize: isMobileOrTablet ? 12.0 : 16.0,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Quantity',
                        style: AppFonts.poppingRegular.copyWith(
                          fontSize: isMobileOrTablet ? 12.0 : 16.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 75.0,
                      child: Text(
                        'Subtotal',
                        style: AppFonts.poppingRegular.copyWith(
                          fontSize: isMobileOrTablet ? 12.0 : 16.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            if (widget.cartProducts.isEmpty)
              Padding(
                padding: EdgeInsets.only(
                  top: isMobileOrTablet ? 10.0 : 40.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(
                          alpha: 0.05,
                        ),
                        offset: Offset(
                          0,
                          1,
                        ),
                        blurRadius: 13.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isMobileOrTablet ? 10.0 : 40.0,
                      vertical: isMobileOrTablet ? 10.0 : 34.0,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'There are no products in the cart.',
                          style: AppFonts.poppingSemiBold.copyWith(
                            fontSize: isMobileOrTablet ? 15.0 : 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ...widget.cartProducts.map(
              (product) => CartProductItemTile(
                onDecreaseArrowPressed: widget.onDecreaseArrowPressed,
                onDeletePressed: widget.onDeletePressed,
                onIncreaseArrowPressed: widget.onIncreaseArrowPressed,
                product: product,
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomTransparentButton(
                  onButtonPressed: () => context.pop(),
                  buttonTitle: 'Return To Shop',
                ),
                // CustomTransparentButton(
                //   buttonTitle: 'Update Cart',
                // ),
              ],
            ),
            SizedBox(
              height: isMobileOrTablet ? 50.0 : 80.0,
            ),
            CartTotal(
              subTotalSumm: subTotalSum,
              totalSumm: subTotalSum,
            ),
            SizedBox(
              height: isMobileOrTablet ? 60.0 : 140.0,
            ),
          ],
        ),
      ),
    );
  }
}
