import 'package:exclusive_web/models/product_detailed_model/product_detailed_model.dart';
import 'package:exclusive_web/models/product_light_model/product_light_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flash_sale_model.freezed.dart';
part 'flash_sale_model.g.dart';

@freezed
class FlashSaleModel with _$FlashSaleModel {
  const factory FlashSaleModel({
    required int id,
    required String documentId,
    DateTime? flashSaleDate,
    required List<ProductLightModel> products,
  }) = _FlashSaleModel;

  factory FlashSaleModel.fromJson(Map<String, dynamic> json) =>
      _$FlashSaleModelFromJson(json);
}
