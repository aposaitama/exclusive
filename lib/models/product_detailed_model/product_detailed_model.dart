import 'package:exclusive_web/models/product_color_model/product_color_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detailed_model.freezed.dart';
part 'product_detailed_model.g.dart';

@freezed
class ProductDetailedModel with _$ProductDetailedModel {
  const factory ProductDetailedModel({
    required String productName,
    required double productPrice,
    double? productOriginPrice,
    required int ratingCount,
    required double totalRating,
    double? salePercent,
    required int saleCount,
    required List<ProductColorModel> product_colors,
  }) = _ProductDetailedModel;

  factory ProductDetailedModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailedModelFromJson(json);
}
