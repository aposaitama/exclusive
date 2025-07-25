import 'package:exclusive_web/models/category_light_model/category_light_model.dart';
import 'package:exclusive_web/models/product_color_model/product_color_model.dart';
import 'package:exclusive_web/models/product_detailed_model/product_detailed_model.dart';
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
    CategoryLightModel? category,
    required List<ProductColorModel> product_colors,
    List<ProductReviewsModel>? reviews,
  }) = _ProductLightModel;

  factory ProductLightModel.fromJson(Map<String, dynamic> json) =>
      _$ProductLightModelFromJson(json);
}
