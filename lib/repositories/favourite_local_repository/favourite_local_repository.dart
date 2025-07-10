import 'package:dio/dio.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/hive_models/hive_product_model/hive_product_model.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:hive/hive.dart';

class FavouriteLocalRepository {
  final Box<HiveProductModel> box;

  FavouriteLocalRepository(this.box);

  final Dio _dio = locator<Dio>();

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

  Future<List<ProductLightModel>> getRelatedItems(
    String categoryName,
  ) async {
    try {
      final response = await _dio.get(
        '/products?populate=reviews&populate[]=product_colors.mainProductImage&populate[][]=product_colors.galleryProductImages&filters[category][categoryName][\$eq]=$categoryName&pagination[limit]=4',
      );

      if (response.isSuccess) {
        return (response.data['data'] as List)
            .map(
              (json) => ProductLightModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<String> getCategoryItemName(
    String documentId,
  ) async {
    try {
      final response = await _dio.get(
        '/products/$documentId?populate=category',
      );

      if (response.isSuccess) {
        return response.data['data']['category']['categoryName'] ?? '';
      } else {
        return '';
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> clearWishlist() async {
    await box.clear();
  }
}
