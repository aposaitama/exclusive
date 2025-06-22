import 'package:exclusive_web/models/cart_product_model/cart_product_model.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:flutter/material.dart';

class CartItemTile extends StatelessWidget {
  final CartProductModel product;

  const CartItemTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Image.network(
            product.mainProductImage.url.toImageUrl(),
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.productName,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 4),
                if (product.productSize != null)
                  Text('Size: ${product.productSize}'),
                Text('Quantity: ${product.quantity}'),
              ],
            ),
          ),
          Text(
            '\$${(product.productPrice * product.quantity).toStringAsFixed(2)}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
