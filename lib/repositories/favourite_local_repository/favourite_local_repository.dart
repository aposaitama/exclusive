import 'package:exclusive_web/models/hive_models/hive_product_model/hive_product_model.dart';
import 'package:hive/hive.dart';

class FavouriteLocalRepository {
  final Box<HiveProductModel> box;

  FavouriteLocalRepository(this.box);

  Future<void> addProduct(HiveProductModel product) async {
    final exists = box.values.any((element) => element.id == product.id);
    if (!exists) {
      await box.add(product);
    }
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

  Future<List<String>> getWishlistIds() async {
    final products = box.values.toList();
    final ids = products.map((product) => product.id).toList();
    return ids;
  }

  Future<void> clearWishlist() async {
    await box.clear();
  }
}
