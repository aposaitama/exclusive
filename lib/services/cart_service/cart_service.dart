import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/cart_product_model/cart_product_model.dart';
import 'package:exclusive_web/models/hive_models/hive_cart_model/hive_cart_product_model.dart';
import 'package:exclusive_web/repositories/cart_local_repository/cart_local_repository.dart';
import 'package:exclusive_web/repositories/product_repository/product_repository.dart';

class CartService {
  final CartLocalRepository _cartRepository;

  CartService(this._cartRepository);

  final ProductRepository _productRepository = locator<ProductRepository>();

  Future<void> addToCart(
    HiveCartProductModel product,
  ) async {
    await _cartRepository.addProduct(
      product,
    );
  }

  Future<void> removeFromCart(
    String productId,
  ) async {
    await _cartRepository.removeProduct(
      productId,
    );
  }

  Future<void> increaseProductQuantity(
    String productId,
  ) async {
    await _cartRepository.increaseQuantity(
      productId,
    );
  }

  Future<void> decreaseProductQuantity(
    String productId,
  ) async {
    await _cartRepository.decreaseQuantity(
      productId,
    );
  }

  Future<List<CartProductModel>> getCartProducts() async {
    final hiveItems = await _cartRepository.getCartlistProducts();

    final List<CartProductModel> result = [];

    for (final hiveItem in hiveItems) {
      final product = await _productRepository.fetchConcreteProductById(
        hiveItem.id,
      );
      if (product != null) {
        final selectedColor = product.product_colors.firstWhere(
          (color) => color.id.toString() == hiveItem.colorId,
          orElse: () => throw Exception(
            "Color not found",
          ),
        );

        final CartProductModel model = CartProductModel(
          id: product.id,
          documentId: product.documentId,
          productName: product.productName,
          colorsSelectedId: selectedColor.id,
          mainProductImage: selectedColor.mainProductImage,
          quantity: hiveItem.count,
          productSize: null,
          productPrice: product.productPrice,
        );

        result.add(
          model,
        );
      }
    }

    return result;
  }

  Future<void> clearCart() async {
    await _cartRepository.clearCartlist();
  }
}
