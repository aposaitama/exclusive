import 'package:dio/dio.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/utils/extensions.dart';

class ProductRepository {
  final Dio _dio = locator<Dio>();

  Future<List<ProductLightModel>> fetchProductsOnFlashSale() async {
    try {
      const url =
          '/products?populate[product_colors][populate]=galleryProductImages&populate[product_colors][populate]=mainProductImage&filters[isOnFleshSales]=true';

      final response = await _dio.get(url);

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

  Future<List<ProductLightModel>> fetchOurProducts() async {
    try {
      const url =
          '/products?populate[product_colors][populate]=galleryProductImages&populate[product_colors][populate]=mainProductImage&filters[isOurProduct]=true';

      final response = await _dio.get(url);

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

  Future<List<ProductLightModel>> fetchBestSellingProducts() async {
    try {
      const url =
          '/products?filters[saleCount][\$gt]=0&sort[0]=saleCount:desc&populate[product_colors][populate]=galleryProductImages&populate[product_colors][populate]=mainProductImage';

      final response = await _dio.get(url);

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
}
