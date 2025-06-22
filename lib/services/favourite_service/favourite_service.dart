import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/hive_models/hive_product_model/hive_product_model.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/repositories/favourite_local_repository/favourite_local_repository.dart';
import 'package:exclusive_web/repositories/product_repository/product_repository.dart';

class FavouriteService {
  final FavouriteLocalRepository localRepository;

  FavouriteService(this.localRepository);
  final ProductRepository _productRepository = locator<ProductRepository>();

  Future<void> addToWishlist(String productId) async {
    await localRepository.addProduct(
      HiveProductModel(id: productId),
    );
  }

  Future<void> addToCart(List<String> productIds) async {
    // await localRepository.addProductId(
    //   productId,
    // );
  }

  Future<void> removeFromWishlist(String productId) async {
    await localRepository.removeProduct(
      productId,
    );
  }

  Future<List<ProductLightModel>> getWishlist() async {
    final productsFromWishlistId = await localRepository.getWishlistIds();
    final products =
        await _productRepository.fetchProductsByIds(productsFromWishlistId);
    return products;
  }

  Future<void> clearWishlist() async {
    await localRepository.clearWishlist();
  }
}
