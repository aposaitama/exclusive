import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required int id,
    required String documentId,
    String? firstName,
    String? lastName,
    String? userEmail,
    String? address,
    List<AddressModel>? addresses,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class AddressModel with _$AddressModel {
  const factory AddressModel({
    required int id,
    required String documentId,
    required String firstName,
    required String lastName,
    required String streetAddress,
    required String city,
    required String phoneNumber,
    required String emailAddress,
    required bool isDefault,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
