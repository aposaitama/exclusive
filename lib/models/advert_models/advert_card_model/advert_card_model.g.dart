// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advert_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdvertCardModelImpl _$$AdvertCardModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AdvertCardModelImpl(
      id: (json['id'] as num).toInt(),
      productID: json['productID'] as String,
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      advertCardTitle: json['advertCardTitle'] as String,
      advertCardCategoryName: json['advertCardCategoryName'] as String,
      advertCardImage:
          ImageModel.fromJson(json['advertCardImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdvertCardModelImplToJson(
        _$AdvertCardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productID': instance.productID,
      'endDate': instance.endDate?.toIso8601String(),
      'advertCardTitle': instance.advertCardTitle,
      'advertCardCategoryName': instance.advertCardCategoryName,
      'advertCardImage': instance.advertCardImage,
    };
