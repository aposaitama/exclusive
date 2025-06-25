import 'package:exclusive_web/models/image_model/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advert_card_model.freezed.dart';
part 'advert_card_model.g.dart';

@freezed
class AdvertCardModel with _$AdvertCardModel {
  const factory AdvertCardModel({
    required int id,
    required String productID,
    DateTime? endDate,
    required String advertCardTitle,
    required String advertCardCategoryName,
    required ImageModel advertCardImage,
  }) = _AdvertCardModel;

  factory AdvertCardModel.fromJson(Map<String, dynamic> json) =>
      _$AdvertCardModelFromJson(json);
}
