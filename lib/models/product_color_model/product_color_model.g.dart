// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_color_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductColorModelImpl _$$ProductColorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductColorModelImpl(
      id: (json['id'] as num).toInt(),
      colorCode: json['colorCode'] as String?,
      mainProductImage:
          ImageModel.fromJson(json['mainProductImage'] as Map<String, dynamic>),
      isAvaliable: json['isAvaliable'] as bool,
      galleryProductImages: (json['galleryProductImages'] as List<dynamic>)
          .map((e) => ImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductColorModelImplToJson(
        _$ProductColorModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'colorCode': instance.colorCode,
      'mainProductImage': instance.mainProductImage,
      'isAvaliable': instance.isAvaliable,
      'galleryProductImages': instance.galleryProductImages,
    };
