import 'package:exclusive_web/models/product_color_model/product_color_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_light_model.freezed.dart';
part 'product_light_model.g.dart';

@freezed
class ProductLightModel with _$ProductLightModel {
  const factory ProductLightModel({
    required int id,
    required String documentId,
    required String productName,
    required double productPrice,
    double? productOriginPrice,
    required int ratingCount,
    required double totalRating,
    double? salePercent,
    required int saleCount,
    required List<ProductColorModel> product_colors,
  }) = _ProductLightModel;

  factory ProductLightModel.fromJson(Map<String, dynamic> json) =>
      _$ProductLightModelFromJson(json);
}
