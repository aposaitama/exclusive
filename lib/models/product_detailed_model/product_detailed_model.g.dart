// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detailed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailedModelImpl _$$ProductDetailedModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailedModelImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
      productName: json['productName'] as String,
      productDescription: json['productDescription'] as String,
      productPrice: (json['productPrice'] as num).toDouble(),
      productOriginPrice: (json['productOriginPrice'] as num?)?.toDouble(),
      ratingCount: (json['ratingCount'] as num).toInt(),
      totalRating: (json['totalRating'] as num).toDouble(),
      salePercent: (json['salePercent'] as num?)?.toDouble(),
      saleCount: (json['saleCount'] as num).toInt(),
      product_colors: (json['product_colors'] as List<dynamic>)
          .map((e) => ProductColorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      productSizeList: (json['productSizeList'] as List<dynamic>?)
          ?.map((e) => ProductSizeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductDetailedModelImplToJson(
        _$ProductDetailedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'productPrice': instance.productPrice,
      'productOriginPrice': instance.productOriginPrice,
      'ratingCount': instance.ratingCount,
      'totalRating': instance.totalRating,
      'salePercent': instance.salePercent,
      'saleCount': instance.saleCount,
      'product_colors': instance.product_colors,
      'productSizeList': instance.productSizeList,
    };

_$ProductSizeModelImpl _$$ProductSizeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductSizeModelImpl(
      size: json['size'] as String,
      isAvaliable: json['isAvaliable'] as bool,
    );

Map<String, dynamic> _$$ProductSizeModelImplToJson(
        _$ProductSizeModelImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'isAvaliable': instance.isAvaliable,
    };
