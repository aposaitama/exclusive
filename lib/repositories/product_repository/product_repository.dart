import 'package:dio/dio.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/flash_sale_model/flash_sale_model.dart';
import 'package:exclusive_web/models/product_detailed_model/product_detailed_model.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/utils/extensions.dart';

class ProductRepository {
  final Dio _dio = locator<Dio>();

  Future<FlashSaleModel?> fetchProductsOnFlashSale(
      //   {
      //   required int page,
      //   int pageSize = 6,
      // }
      ) async {
    try {
      const url =
          '/flash-sales?populate=products.product_colors.mainProductImage&populate[]=products.product_colors.galleryProductImages';

      final response = await _dio.get(
        url,
        // queryParameters: {
        //   'pagination[page]': page,
        //   'pagination[pageSize]': pageSize,
        // }
      );

      if (response.isSuccess) {
        final dataList = response.data['data'] as List<dynamic>?;

        if (dataList != null && dataList.isNotEmpty) {
          final first = dataList.first as Map<String, dynamic>;
          return FlashSaleModel.fromJson(first);
        } else {
          return null;
        }
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ProductLightModel>> fetchProductsOnFlashSaleLightModel({
    required int page,
    int pageSize = 6,
  }) async {
    try {
      const url =
          '/products?populate[product_colors][populate]=galleryProductImages&populate[product_colors][populate]=mainProductImage&filters[isOnFleshSales]=true';

      final response = await _dio.get(url, queryParameters: {
        'pagination[page]': page,
        'pagination[pageSize]': pageSize,
      });

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
          '/products?populate[product_colors][populate]=galleryProductImages&populate[product_colors][populate]=mainProductImage&filters[isOurProduct]=true&pagination[page]=1&pagination[pageSize]=8';

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

  Future<List<ProductLightModel>> fetchOurProductsPaginated({
    required int page,
    int pageSize = 6,
  }) async {
    try {
      final url =
          '/products?populate[product_colors][populate]=galleryProductImages&populate[product_colors][populate]=mainProductImage&pagination[page]=$page&pagination[pageSize]=$pageSize&filters[isOurProduct]=true';

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

  Future<List<ProductLightModel>> fetchFilteredProductsByCategoriesPaginated({
    required int page,
    int pageSize = 6,
    String? categoryName,
  }) async {
    try {
      final url =
          '/products?populate[product_colors][populate]=galleryProductImages&populate[product_colors][populate]=mainProductImage&pagination[page]=$page&pagination[pageSize]=$pageSize&filters[category][categoryName][\$eq]=$categoryName';

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

  Future<List<ProductLightModel>> fetchFilteredProductsByDepartmentPaginated({
    required int page,
    int pageSize = 6,
    String? categoryName,
  }) async {
    try {
      final url =
          '/departments?populate=categories.products&populate[]=categories.products.product_colors.galleryProductImages&populate[][]=categories.products.product_colors.mainProductImage&pagination[page]=$page&pagination[pageSize]=$pageSize&filters[departmentName][\$eq]=$categoryName';

      final response = await _dio.get(url);

      if (response.isSuccess) {
        final List<ProductLightModel> result = [];

        final departments = response.data['data'] as List;

        for (final department in departments) {
          final categories = (department['categories'] as List?) ?? [];

          for (final category in categories) {
            final products = (category['products'] as List?) ?? [];

            for (final product in products) {
              result.add(ProductLightModel.fromJson(product));
            }
          }
        }

        return result;
      } else {
        return [];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ProductLightModel>> searchProducts({
    required String query,
    required int page,
    int pageSize = 6,
  }) async {
    try {
      final url =
          '/products?populate[product_colors][populate]=galleryProductImages&populate[product_colors][populate]=mainProductImage&pagination[page]=$page&pagination[pageSize]=$pageSize&filters[productName][\$contains]=$query';

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

  Future<List<ProductLightModel>> fetchBestSellingProductsPaginated({
    required int page,
    int pageSize = 6,
  }) async {
    try {
      final url =
          '/products?filters[saleCount][\$gt]=0&sort[0]=saleCount:desc&populate[product_colors][populate]=galleryProductImages&populate[product_colors][populate]=mainProductImage&pagination[page]=$page&pagination[pageSize]=$pageSize';

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

  Future<ProductDetailedModel?> fetchDetailedProductInfo(
    String productId,
  ) async {
    try {
      final url =
          '/products/$productId?populate[product_colors][populate]=galleryProductImages&populate[product_colors][populate]=mainProductImage&populate=productSizeList';

      final response = await _dio.get(url);

      if (response.isSuccess) {
        final data = response.data['data'] as Map<String, dynamic>?;

        if (data != null && data.isNotEmpty) {
          return ProductDetailedModel.fromJson(data);
        } else {
          return null;
        }
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<ProductLightModel?> fetchConcreteProductById(String productId) async {
    try {
      final queryParameters = <String, dynamic>{};

      queryParameters['filters[id][\$in][0]'] = productId;

      queryParameters['populate'] = 'product_colors.mainProductImage';
      queryParameters['populate[]'] = 'product_colors.galleryProductImages';

      final uri =
          Uri.parse('/products').replace(queryParameters: queryParameters);

      final response = await _dio.get(uri.toString());

      if (response.isSuccess) {
        final dataList = response.data['data'] as List;

        if (dataList.isNotEmpty) {
          return ProductLightModel.fromJson(
              dataList.first as Map<String, dynamic>);
        } else {
          return null;
        }
      } else {
        return null;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ProductLightModel>> fetchProductsByIds(
      List<String> productIds) async {
    if (productIds.isEmpty) return [];

    try {
      final queryParameters = <String, dynamic>{};

      for (int i = 0; i < productIds.length; i++) {
        queryParameters['filters[id][\$in][$i]'] = productIds[i];
      }

      queryParameters['populate'] = 'product_colors.mainProductImage';
      queryParameters['populate[]'] = 'product_colors.galleryProductImages';

      final uri =
          Uri.parse('/products').replace(queryParameters: queryParameters);

      final response = await _dio.get(uri.toString());

      if (response.isSuccess) {
        return (response.data['data'] as List)
            .map(
              (json) =>
                  ProductLightModel.fromJson(json as Map<String, dynamic>),
            )
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<String> fetchProductNameById(String documentId) async {
    if (documentId.isEmpty) return '';

    try {
      final uri = Uri.parse('/products/$documentId');

      final response = await _dio.get(uri.toString());

      if (response.isSuccess) {
        return response.data['data']['productName'];
      } else {
        return '';
      }
    } catch (e) {
      rethrow;
    }
  }
}
