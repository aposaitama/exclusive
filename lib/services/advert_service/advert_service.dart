import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/advert_models/advert_card_model/advert_card_model.dart';
import 'package:exclusive_web/models/advert_models/new_arival_model/new_arival_model.dart';
import 'package:exclusive_web/models/advert_models/promo_slider_model/promo_slider_model.dart';
import 'package:exclusive_web/repositories/advert_repository/advert_repository.dart';

class AdvertService {
  final AdvertRepository _advertRepository = locator<AdvertRepository>();

  Future<List<PromoSliderModel>> getPromoSlidersItem() async {
    try {
      final promoSliders = await _advertRepository.fetchPromoSliderItems();

      return promoSliders;
    } catch (e) {
      rethrow;
    }
  }

  Future<List<NewArivalModel>> getNewArivalsItem() async {
    try {
      final newArivalItems = await _advertRepository.fetchNewArivalItems();

      return newArivalItems;
    } catch (e) {
      rethrow;
    }
  }

  Future<AdvertCardModel?> getAdvertCardItem() async {
    try {
      final advertCardItem = await _advertRepository.fetchAdvertCardItem();

      return advertCardItem;
    } catch (e) {
      rethrow;
    }
  }
}
