import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/category_light_model/category_light_model.dart';
import 'package:exclusive_web/repositories/categories_repository/categories_repository.dart';

class CategoriesService {
  final CategoriesRepository _categoriesRepository =
      locator<CategoriesRepository>();

  Future<List<CategoryLightModel>> getAllCategories() async {
    try {
      final categories = await _categoriesRepository.fetchCategories();

      return categories;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<CategoryLightModel>> getCategoriesPaginated(
    int page,
    int pageSize,
  ) async {
    try {
      final categories = await _categoriesRepository.getCategoriesPaginated(
        page: page,
        pageSize: pageSize,
      );

      return categories;
    } catch (e) {
      rethrow;
    }
  }
}
