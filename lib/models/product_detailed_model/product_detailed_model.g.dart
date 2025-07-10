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
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => ProductReviewsModel.fromJson(e as Map<String, dynamic>))
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
      'reviews': instance.reviews,
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

_$ProductReviewsModelImpl _$$ProductReviewsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductReviewsModelImpl(
      userName: json['userName'] as String,
      reviewText: json['reviewText'] as String,
      userID: json['userID'] as String,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$ProductReviewsModelImplToJson(
        _$ProductReviewsModelImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'reviewText': instance.reviewText,
      'userID': instance.userID,
      'rating': instance.rating,
    };
