// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_light_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryLightModelImpl _$$CategoryLightModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryLightModelImpl(
      id: (json['id'] as num).toInt(),
      documentId: json['documentId'] as String,
      categoryName: json['categoryName'] as String,
      categoryIcon:
          ImageModel.fromJson(json['categoryIcon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryLightModelImplToJson(
        _$CategoryLightModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'documentId': instance.documentId,
      'categoryName': instance.categoryName,
      'categoryIcon': instance.categoryIcon,
    };
