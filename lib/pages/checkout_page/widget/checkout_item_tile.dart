import 'package:exclusive_web/models/cart_product_model/cart_product_model.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:flutter/material.dart';

class CheckoutItemTile extends StatelessWidget {
  final CartProductModel product;

  const CheckoutItemTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 32.0,
      ),
      child: Row(
        children: [
          Image.network(
            product.mainProductImage.url.toImageUrl(),
            width: 54.0,
            height: 52.0,
            fit: BoxFit.scaleDown,
          ),
          const SizedBox(
            width: 24.0,
          ),
          Expanded(
            child: Text(
              product.productName,
              style: AppFonts.poppingRegular.copyWith(
                fontSize: 16.0,
              ),
            ),
          ),
          Text(
            '\$${(product.productPrice * product.quantity).toStringAsFixed(2)}',
            style: AppFonts.poppingRegular.copyWith(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
