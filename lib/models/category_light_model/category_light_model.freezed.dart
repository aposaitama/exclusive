// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_light_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryLightModel _$CategoryLightModelFromJson(Map<String, dynamic> json) {
  return _CategoryLightModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryLightModel {
  int get id => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  ImageModel get categoryIcon => throw _privateConstructorUsedError;

  /// Serializes this CategoryLightModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryLightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryLightModelCopyWith<CategoryLightModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryLightModelCopyWith<$Res> {
  factory $CategoryLightModelCopyWith(
          CategoryLightModel value, $Res Function(CategoryLightModel) then) =
      _$CategoryLightModelCopyWithImpl<$Res, CategoryLightModel>;
  @useResult
  $Res call(
      {int id,
      String documentId,
      String categoryName,
      ImageModel categoryIcon});

  $ImageModelCopyWith<$Res> get categoryIcon;
}

/// @nodoc
class _$CategoryLightModelCopyWithImpl<$Res, $Val extends CategoryLightModel>
    implements $CategoryLightModelCopyWith<$Res> {
  _$CategoryLightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryLightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? categoryName = null,
    Object? categoryIcon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIcon: null == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ) as $Val);
  }

  /// Create a copy of CategoryLightModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res> get categoryIcon {
    return $ImageModelCopyWith<$Res>(_value.categoryIcon, (value) {
      return _then(_value.copyWith(categoryIcon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryLightModelImplCopyWith<$Res>
    implements $CategoryLightModelCopyWith<$Res> {
  factory _$$CategoryLightModelImplCopyWith(_$CategoryLightModelImpl value,
          $Res Function(_$CategoryLightModelImpl) then) =
      __$$CategoryLightModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String documentId,
      String categoryName,
      ImageModel categoryIcon});

  @override
  $ImageModelCopyWith<$Res> get categoryIcon;
}

/// @nodoc
class __$$CategoryLightModelImplCopyWithImpl<$Res>
    extends _$CategoryLightModelCopyWithImpl<$Res, _$CategoryLightModelImpl>
    implements _$$CategoryLightModelImplCopyWith<$Res> {
  __$$CategoryLightModelImplCopyWithImpl(_$CategoryLightModelImpl _value,
      $Res Function(_$CategoryLightModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryLightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? categoryName = null,
    Object? categoryIcon = null,
  }) {
    return _then(_$CategoryLightModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIcon: null == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryLightModelImpl implements _CategoryLightModel {
  _$CategoryLightModelImpl(
      {required this.id,
      required this.documentId,
      required this.categoryName,
      required this.categoryIcon});

  factory _$CategoryLightModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryLightModelImplFromJson(json);

  @override
  final int id;
  @override
  final String documentId;
  @override
  final String categoryName;
  @override
  final ImageModel categoryIcon;

  @override
  String toString() {
    return 'CategoryLightModel(id: $id, documentId: $documentId, categoryName: $categoryName, categoryIcon: $categoryIcon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryLightModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, documentId, categoryName, categoryIcon);

  /// Create a copy of CategoryLightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryLightModelImplCopyWith<_$CategoryLightModelImpl> get copyWith =>
      __$$CategoryLightModelImplCopyWithImpl<_$CategoryLightModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryLightModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryLightModel implements CategoryLightModel {
  factory _CategoryLightModel(
      {required final int id,
      required final String documentId,
      required final String categoryName,
      required final ImageModel categoryIcon}) = _$CategoryLightModelImpl;

  factory _CategoryLightModel.fromJson(Map<String, dynamic> json) =
      _$CategoryLightModelImpl.fromJson;

  @override
  int get id;
  @override
  String get documentId;
  @override
  String get categoryName;
  @override
  ImageModel get categoryIcon;

  /// Create a copy of CategoryLightModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryLightModelImplCopyWith<_$CategoryLightModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
