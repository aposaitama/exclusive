import 'package:dio/dio.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/advert_models/advert_card_model/advert_card_model.dart';
import 'package:exclusive_web/models/advert_models/new_arival_model/new_arival_model.dart';
import 'package:exclusive_web/models/advert_models/promo_slider_model/promo_slider_model.dart';
import 'package:exclusive_web/utils/extensions.dart';

class AdvertRepository {
  final Dio _dio = locator<Dio>();
  Future<List<PromoSliderModel>> fetchPromoSliderItems() async {
    try {
      const url =
          '/advert-banners?populate=bannerProductIcon&populate[]=advertBannerImage';

      final response = await _dio.get(url);

      if (response.isSuccess) {
        return (response.data['data'] as List)
            .map(
              (json) => PromoSliderModel.fromJson(
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

  Future<List<NewArivalModel>> fetchNewArivalItems() async {
    try {
      const url = '/new-arival-adverts?populate[]=advertBannerImage';

      final response = await _dio.get(url);

      if (response.isSuccess) {
        return (response.data['data'] as List)
            .map(
              (json) => NewArivalModel.fromJson(
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

  Future<AdvertCardModel?> fetchAdvertCardItem() async {
    try {
      const url = '/advert-carts?populate[]=advertCardImage';

      final response = await _dio.get(url);

      if (response.isSuccess) {
        final dataList = response.data['data'] as List<dynamic>?;

        if (dataList != null && dataList.isNotEmpty) {
          final first = dataList.first as Map<String, dynamic>;
          return AdvertCardModel.fromJson(first);
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
}
