import 'package:exclusive_web/models/image_model/image_model.dart';
import 'package:exclusive_web/models/product_color_model/product_color_model.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_product_model.freezed.dart';
part 'cart_product_model.g.dart';

@freezed
class CartProductModel with _$CartProductModel {
  const factory CartProductModel({
    required int id,
    required String documentId,
    required String productName,
    required int colorsSelectedId,
    required ImageModel mainProductImage,
    required int quantity,
    String? productSize,
    required double productPrice,
  }) = _CartProductModel;

  factory CartProductModel.fromJson(Map<String, dynamic> json) =>
      _$CartProductModelFromJson(json);
}
