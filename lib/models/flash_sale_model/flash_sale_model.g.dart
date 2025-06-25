// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_sale_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FlashSaleModelImpl _$$FlashSaleModelImplFromJson(Map<String, dynamic> json) =>
    _$FlashSaleModelImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
      flashSaleDate: json['flashSaleDate'] == null
          ? null
          : DateTime.parse(json['flashSaleDate'] as String),
      products: (json['products'] as List<dynamic>)
          .map((e) => ProductLightModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FlashSaleModelImplToJson(
        _$FlashSaleModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'flashSaleDate': instance.flashSaleDate?.toIso8601String(),
      'products': instance.products,
    };
