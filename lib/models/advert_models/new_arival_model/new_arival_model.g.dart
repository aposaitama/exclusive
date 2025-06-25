// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_arival_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewArivalModelImpl _$$NewArivalModelImplFromJson(Map<String, dynamic> json) =>
    _$NewArivalModelImpl(
      id: (json['id'] as num).toInt(),
      productID: json['productID'] as String,
      advertBannerTitle: json['advertBannerTitle'] as String,
      advertBannerDescription: json['advertBannerDescription'] as String,
      advertBannerImage: ImageModel.fromJson(
          json['advertBannerImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewArivalModelImplToJson(
        _$NewArivalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productID': instance.productID,
      'advertBannerTitle': instance.advertBannerTitle,
      'advertBannerDescription': instance.advertBannerDescription,
      'advertBannerImage': instance.advertBannerImage,
    };
