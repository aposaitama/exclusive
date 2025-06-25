import 'package:exclusive_web/models/image_model/image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_arival_model.freezed.dart';
part 'new_arival_model.g.dart';

@freezed
class NewArivalModel with _$NewArivalModel {
  const factory NewArivalModel({
    required int id,
    required String productID,
    required String advertBannerTitle,
    required String advertBannerDescription,
    required ImageModel advertBannerImage,
  }) = _NewArivalModel;

  factory NewArivalModel.fromJson(Map<String, dynamic> json) =>
      _$NewArivalModelFromJson(json);
}
