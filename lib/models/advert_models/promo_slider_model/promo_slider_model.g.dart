// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_slider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromoSliderModelImpl _$$PromoSliderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PromoSliderModelImpl(
      id: (json['id'] as num).toInt(),
      productID: json['productID'] as String,
      bannerProductName: json['bannerProductName'] as String,
      advertBannerTitle: json['advertBannerTitle'] as String,
      bannerProductIcon: ImageModel.fromJson(
          json['bannerProductIcon'] as Map<String, dynamic>),
      advertBannerImage: ImageModel.fromJson(
          json['advertBannerImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PromoSliderModelImplToJson(
        _$PromoSliderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productID': instance.productID,
      'bannerProductName': instance.bannerProductName,
      'advertBannerTitle': instance.advertBannerTitle,
      'bannerProductIcon': instance.bannerProductIcon,
      'advertBannerImage': instance.advertBannerImage,
    };
