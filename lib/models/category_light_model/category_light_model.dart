import 'package:exclusive_web/models/image_model/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_light_model.freezed.dart';

part 'category_light_model.g.dart';

@freezed
class CategoryLightModel with _$CategoryLightModel {
  factory CategoryLightModel({
    required int id,
    required String documentId,
    required String categoryName,
    required ImageModel categoryIcon,
  }) = _CategoryLightModel;

  factory CategoryLightModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryLightModelFromJson(json);
}
