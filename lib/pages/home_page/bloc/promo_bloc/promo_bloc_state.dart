import 'package:exclusive_web/models/advert_models/advert_card_model/advert_card_model.dart';
import 'package:exclusive_web/models/advert_models/new_arival_model/new_arival_model.dart';
import 'package:exclusive_web/models/advert_models/promo_slider_model/promo_slider_model.dart';
import 'package:exclusive_web/models/image_model/image_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_bloc_state.freezed.dart';

@freezed
class PromoBlocState with _$PromoBlocState {
  const factory PromoBlocState({
    @Default([]) List<PromoSliderModel> promoSliderItems,
    @Default([]) List<NewArivalModel> newArivalItems,
    @Default(
      AdvertCardModel(
        id: 0,
        productID: '',
        advertCardTitle: '',
        advertCardCategoryName: '',
        advertCardImage: ImageModel(
          url: '',
        ),
      ),
    )
    AdvertCardModel advertCardItem,
  }) = _PromoBlocState;
}
