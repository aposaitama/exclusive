import 'package:exclusive_web/models/hive_models/hive_cart_model/hive_cart_product_model.dart';
import 'package:hive/hive.dart';

class CartLocalRepository {
  final Box<HiveCartProductModel> box;

  CartLocalRepository(this.box);

  Future<void> addProduct(HiveCartProductModel product) async {
    final existingKey = box.keys.firstWhere(
      (key) => box.get(key)?.id == product.id,
      orElse: () => null,
    );

    if (existingKey == null) {
      await box.add(product);
    } else {
      final existingProduct = box.get(existingKey);
      if (existingProduct != null) {
        final updatedProduct = existingProduct.copyWith(
          count: existingProduct.count + 1,
        );
        await box.put(existingKey, updatedProduct);
      }
    }
    print(box.length);
  }

  Future<void> removeProduct(String productId) async {
    final key = box.keys.firstWhere(
      (key) => box.get(key)?.id == productId,
      orElse: () => null,
    );
    if (key != null) {
      await box.delete(key);
    }
  }

  Future<void> increaseQuantity(String productId) async {
    final existingKey = box.keys.firstWhere(
      (key) => box.get(key)?.id == productId,
      orElse: () => null,
    );

    if (existingKey != null) {
      final product = box.get(
        existingKey,
      );
      if (product != null) {
        final updatedProduct = product.copyWith(
          count: product.count + 1,
        );
        await box.put(
          existingKey,
          updatedProduct,
        );
      }
    }
  }

  Future<void> decreaseQuantity(String productId) async {
    final existingKey = box.keys.firstWhere(
      (key) => box.get(key)?.id == productId,
      orElse: () => null,
    );

    if (existingKey != null) {
      final product = box.get(existingKey);
      if (product != null) {
        if (product.count > 1) {
          final updatedProduct = product.copyWith(
            count: product.count - 1,
          );
          await box.put(
            existingKey,
            updatedProduct,
          );
        } else {
          await box.delete(
            existingKey,
          );
        }
      }
    }
  }

  Future<List<HiveCartProductModel>> getCartlistProducts() async {
    return box.values.toList();
  }

  Future<void> clearCartlist() async {
    await box.clear();
  }
}
