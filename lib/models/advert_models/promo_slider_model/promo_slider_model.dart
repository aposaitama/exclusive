import 'package:exclusive_web/models/image_model/image_model.dart';
import 'package:exclusive_web/models/product_color_model/product_color_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_slider_model.freezed.dart';
part 'promo_slider_model.g.dart';

@freezed
class PromoSliderModel with _$PromoSliderModel {
  const factory PromoSliderModel({
    required int id,
    required String productID,
    required String bannerProductName,
    required String advertBannerTitle,
    required ImageModel bannerProductIcon,
    required ImageModel advertBannerImage,
  }) = _PromoSliderModel;

  factory PromoSliderModel.fromJson(Map<String, dynamic> json) =>
      _$PromoSliderModelFromJson(json);
}
