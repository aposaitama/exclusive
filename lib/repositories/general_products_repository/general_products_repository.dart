import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:exclusive_web/repositories/product_repository/product_repository.dart';
import 'package:exclusive_web/services/product_service/product_service.dart';

abstract class GeneralViewAllRepository<T> {
  Future<List<ProductLightModel>> fetchItems({
    required int page,
    int pageSize = 6,
  });
}

final ProductService _productService = ProductService();

class FlashSalesProductsRepository
    implements GeneralViewAllRepository<ProductLightModel> {
  @override
  Future<List<ProductLightModel>> fetchItems({
    required int page,
    int pageSize = 6,
  }) {
    return _productService.getFlashSalesProductLightModel(
      page: page,
      pageSize: pageSize,
    );
  }
}

class BestSellingProductsRepository
    implements GeneralViewAllRepository<ProductLightModel> {
  @override
  Future<List<ProductLightModel>> fetchItems({
    required int page,
    int pageSize = 6,
  }) {
    return _productService.getBestSellingProductsPaginated(
      page: page,
      pageSize: pageSize,
    );
  }
}

class ExploreOurProductsRepository
    implements GeneralViewAllRepository<ProductLightModel> {
  @override
  Future<List<ProductLightModel>> fetchItems({
    required int page,
    int pageSize = 6,
  }) async {
    return _productService.getOurProductPaginated(
      page: page,
      pageSize: pageSize,
    );
  }
}

// class JustForYouProductsRepository
//     implements GeneralViewAllRepository<ProductLightModel> {
//   @override
//   Future<List<ProductLightModel>> fetchItems(
//       {int offset = 0, int limit = 6}) async {
//
//     return [];
//   }
// }
