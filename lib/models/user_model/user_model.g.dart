// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      userEmail: json['userEmail'] as String?,
      address: json['address'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => AddressModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'userEmail': instance.userEmail,
      'address': instance.address,
      'addresses': instance.addresses,
    };

_$AddressModelImpl _$$AddressModelImplFromJson(Map<String, dynamic> json) =>
    _$AddressModelImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      streetAddress: json['streetAddress'] as String,
      city: json['city'] as String,
      phoneNumber: json['phoneNumber'] as String,
      emailAddress: json['emailAddress'] as String,
      isDefault: json['isDefault'] as bool,
    );

Map<String, dynamic> _$$AddressModelImplToJson(_$AddressModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'streetAddress': instance.streetAddress,
      'city': instance.city,
      'phoneNumber': instance.phoneNumber,
      'emailAddress': instance.emailAddress,
      'isDefault': instance.isDefault,
    };
