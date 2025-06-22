import 'package:exclusive_web/models/image_model/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_color_model.freezed.dart';
part 'product_color_model.g.dart';

@freezed
class ProductColorModel with _$ProductColorModel {
  const factory ProductColorModel({
    required int id,
    required String colorCode,
    required ImageModel mainProductImage,
    required List<ImageModel> galleryProductImages,
  }) = _ProductColorModel;

  factory ProductColorModel.fromJson(Map<String, dynamic> json) =>
      _$ProductColorModelFromJson(json);
}
