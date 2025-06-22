// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartProductModelImpl _$$CartProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CartProductModelImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
      productName: json['productName'] as String,
      colorsSelectedId: (json['colorsSelectedId'] as num).toInt(),
      mainProductImage:
          ImageModel.fromJson(json['mainProductImage'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num).toInt(),
      productSize: json['productSize'] as String?,
      productPrice: (json['productPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$CartProductModelImplToJson(
        _$CartProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'productName': instance.productName,
      'colorsSelectedId': instance.colorsSelectedId,
      'mainProductImage': instance.mainProductImage,
      'quantity': instance.quantity,
      'productSize': instance.productSize,
      'productPrice': instance.productPrice,
    };
