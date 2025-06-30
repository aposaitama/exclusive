import 'package:dio/dio.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/category_light_model/category_light_model.dart';
import 'package:exclusive_web/utils/extensions.dart';

class CategoriesRepository {
  final Dio _dio = locator<Dio>();
  Future<List<CategoryLightModel>> fetchCategories() async {
    try {
      const url = '/categories?populate=categoryIcon';

      final response = await _dio.get(url);

      if (response.isSuccess) {
        return (response.data['data'] as List)
            .map(
              (json) => CategoryLightModel.fromJson(
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

  Future<List<CategoryLightModel>> getCategoriesPaginated({
    required int page,
    required int pageSize,
  }) async {
    final response = await _dio.get(
      '/categories?pagination[page]=$page&pagination[pageSize]=$pageSize&populate=categoryIcon',
    );

    if (response.isSuccess) {
      return (response.data['data'] as List)
          .map((json) => CategoryLightModel.fromJson(json))
          .toList();
    } else {
      return [];
    }
  }
}
