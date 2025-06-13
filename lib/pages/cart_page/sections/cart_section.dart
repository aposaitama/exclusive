import 'package:exclusive_web/pages/cart_page/widgets/cart_total.dart';
import 'package:exclusive_web/widgets/custom_transparent_button.dart';
import 'package:flutter/material.dart';

class CartSection extends StatelessWidget {
  const CartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 1170.0,
      ),
      child: Column(
        children: [
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
