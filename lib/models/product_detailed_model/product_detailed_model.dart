import 'package:exclusive_web/models/product_color_model/product_color_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_detailed_model.freezed.dart';
part 'product_detailed_model.g.dart';

@freezed
class ProductDetailedModel with _$ProductDetailedModel {
  const factory ProductDetailedModel({
    required int id,
    required String documentId,
    required String productName,
    required String productDescription,
    required double productPrice,
    double? productOriginPrice,
    required int ratingCount,
    required double totalRating,
    double? salePercent,
    required int saleCount,
    required List<ProductColorModel> product_colors,
    List<ProductSizeModel>? productSizeList,
    required List<ProductReviewsModel> reviews,
  }) = _ProductDetailedModel;

  factory ProductDetailedModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailedModelFromJson(json);
}

@freezed
class ProductSizeModel with _$ProductSizeModel {
  const factory ProductSizeModel({
    required String size,
    required bool isAvaliable,
  }) = _ProductSizeModel;

  factory ProductSizeModel.fromJson(Map<String, dynamic> json) =>
      _$ProductSizeModelFromJson(json);
}

@freezed
class ProductReviewsModel with _$ProductReviewsModel {
  const factory ProductReviewsModel({
    required String userName,
    required String reviewText,
    required String userID,
    required double rating,
  }) = _ProductReviewsModel;

  factory ProductReviewsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewsModelFromJson(json);
}
