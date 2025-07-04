import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/flash_sale_model/flash_sale_model.dart';
import 'package:exclusive_web/models/product_detailed_model/product_detailed_model.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/repositories/product_repository/product_repository.dart';

class ProductService {
  final ProductRepository _productRepository = locator<ProductRepository>();

  Future<FlashSaleModel?> getFlashSalesProduct(
      //   {
      //   required int page,
      //   int pageSize = 6,
      // }
      ) async {
    try {
      final products = await _productRepository.fetchProductsOnFlashSale(
          // page: page,
          // pageSize: pageSize,
          );

      return products;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ProductLightModel>> getFlashSalesProductLightModel({
    required int page,
    int pageSize = 6,
  }) async {
    try {
      final products =
          await _productRepository.fetchProductsOnFlashSaleLightModel(
        page: page,
        pageSize: pageSize,
      );

      return products;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ProductLightModel>> getOurProduct() async {
    try {
      final products = await _productRepository.fetchOurProducts();

      return products;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ProductLightModel>> getOurProductPaginated({
    required int page,
    int pageSize = 6,
  }) async {
    try {
      final products = await _productRepository.fetchOurProductsPaginated(
        page: page,
        pageSize: pageSize,
      );

      return products;
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
      final products = await _productRepository.searchProducts(
        query: query,
        page: page,
        pageSize: pageSize,
      );

      return products;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ProductLightModel>> getBestSellingProducts() async {
    try {
      final products = await _productRepository.fetchBestSellingProducts();

      return products;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ProductLightModel>> getBestSellingProductsPaginated({
    required int page,
    int pageSize = 6,
  }) async {
    try {
      final products =
          await _productRepository.fetchBestSellingProductsPaginated(
        page: page,
        pageSize: pageSize,
      );

      return products;
    } catch (e) {
      rethrow;
    }
  }

  Future<ProductDetailedModel?> getDetailedProductInfo(
    String productId,
  ) async {
    try {
      final product = await _productRepository.fetchDetailedProductInfo(
        productId,
      );

      return product;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<ProductLightModel>> getProductsById(
      List<String> productsID) async {
    try {
      final product = await _productRepository.fetchProductsByIds(
        productsID,
      );

      return product;
    } catch (e) {
      rethrow;
    }
  }
}
