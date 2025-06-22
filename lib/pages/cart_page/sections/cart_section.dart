import 'package:exclusive_web/models/cart_product_model/cart_product_model.dart';
import 'package:exclusive_web/pages/cart_page/widgets/cart_test_item.dart';
import 'package:exclusive_web/pages/cart_page/widgets/cart_total.dart';
import 'package:exclusive_web/widgets/custom_transparent_button.dart';
import 'package:flutter/material.dart';

class CartSection extends StatefulWidget {
  final List<CartProductModel> cartProducts;
  const CartSection({
    super.key,
    required this.cartProducts,
  });

  @override
  State<CartSection> createState() => _CartSectionState();
}

class _CartSectionState extends State<CartSection> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1170.0,
      ),
      child: Column(
        children: [
          ...widget.cartProducts
              .map((product) => CartItemTile(product: product)),
          const SizedBox(height: 16),
          CartTotal(
            subTotalSumm: 1750,
            totalSumm: 1750,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTransparentButton(
                buttonTitle: 'Return To Shop',
              ),
              CustomTransparentButton(
                buttonTitle: 'Update Cart',
              ),
            ],
          )
        ],
      ),
    );
  }
}
