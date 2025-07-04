// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_light_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductLightModelImpl _$$ProductLightModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductLightModelImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
      productName: json['productName'] as String,
      productPrice: (json['productPrice'] as num).toDouble(),
      productOriginPrice: (json['productOriginPrice'] as num?)?.toDouble(),
      ratingCount: (json['ratingCount'] as num).toInt(),
      totalRating: (json['totalRating'] as num).toDouble(),
      salePercent: (json['salePercent'] as num?)?.toDouble(),
      saleCount: (json['saleCount'] as num).toInt(),
      category: json['category'] == null
          ? null
          : CategoryLightModel.fromJson(
              json['category'] as Map<String, dynamic>),
      product_colors: (json['product_colors'] as List<dynamic>)
          .map((e) => ProductColorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductLightModelImplToJson(
        _$ProductLightModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'productName': instance.productName,
      'productPrice': instance.productPrice,
      'productOriginPrice': instance.productOriginPrice,
      'ratingCount': instance.ratingCount,
      'totalRating': instance.totalRating,
      'salePercent': instance.salePercent,
      'saleCount': instance.saleCount,
      'category': instance.category,
      'product_colors': instance.product_colors,
    };
