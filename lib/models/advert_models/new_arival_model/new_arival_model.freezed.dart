// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_arival_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewArivalModel _$NewArivalModelFromJson(Map<String, dynamic> json) {
  return _NewArivalModel.fromJson(json);
}

/// @nodoc
mixin _$NewArivalModel {
  int get id => throw _privateConstructorUsedError;
  String get productID => throw _privateConstructorUsedError;
  String get advertBannerTitle => throw _privateConstructorUsedError;
  String get advertBannerDescription => throw _privateConstructorUsedError;
  ImageModel get advertBannerImage => throw _privateConstructorUsedError;

  /// Serializes this NewArivalModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewArivalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewArivalModelCopyWith<NewArivalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewArivalModelCopyWith<$Res> {
  factory $NewArivalModelCopyWith(
          NewArivalModel value, $Res Function(NewArivalModel) then) =
      _$NewArivalModelCopyWithImpl<$Res, NewArivalModel>;
  @useResult
  $Res call(
      {int id,
      String productID,
      String advertBannerTitle,
      String advertBannerDescription,
      ImageModel advertBannerImage});

  $ImageModelCopyWith<$Res> get advertBannerImage;
}

/// @nodoc
class _$NewArivalModelCopyWithImpl<$Res, $Val extends NewArivalModel>
    implements $NewArivalModelCopyWith<$Res> {
  _$NewArivalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewArivalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productID = null,
    Object? advertBannerTitle = null,
    Object? advertBannerDescription = null,
    Object? advertBannerImage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productID: null == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String,
      advertBannerTitle: null == advertBannerTitle
          ? _value.advertBannerTitle
          : advertBannerTitle // ignore: cast_nullable_to_non_nullable
              as String,
      advertBannerDescription: null == advertBannerDescription
          ? _value.advertBannerDescription
          : advertBannerDescription // ignore: cast_nullable_to_non_nullable
              as String,
      advertBannerImage: null == advertBannerImage
          ? _value.advertBannerImage
          : advertBannerImage // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ) as $Val);
  }

  /// Create a copy of NewArivalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res> get advertBannerImage {
    return $ImageModelCopyWith<$Res>(_value.advertBannerImage, (value) {
      return _then(_value.copyWith(advertBannerImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewArivalModelImplCopyWith<$Res>
    implements $NewArivalModelCopyWith<$Res> {
  factory _$$NewArivalModelImplCopyWith(_$NewArivalModelImpl value,
          $Res Function(_$NewArivalModelImpl) then) =
      __$$NewArivalModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String productID,
      String advertBannerTitle,
      String advertBannerDescription,
      ImageModel advertBannerImage});

  @override
  $ImageModelCopyWith<$Res> get advertBannerImage;
}

/// @nodoc
class __$$NewArivalModelImplCopyWithImpl<$Res>
    extends _$NewArivalModelCopyWithImpl<$Res, _$NewArivalModelImpl>
    implements _$$NewArivalModelImplCopyWith<$Res> {
  __$$NewArivalModelImplCopyWithImpl(
      _$NewArivalModelImpl _value, $Res Function(_$NewArivalModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewArivalModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productID = null,
    Object? advertBannerTitle = null,
    Object? advertBannerDescription = null,
    Object? advertBannerImage = null,
  }) {
    return _then(_$NewArivalModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      productID: null == productID
          ? _value.productID
          : productID // ignore: cast_nullable_to_non_nullable
              as String,
      advertBannerTitle: null == advertBannerTitle
          ? _value.advertBannerTitle
          : advertBannerTitle // ignore: cast_nullable_to_non_nullable
              as String,
      advertBannerDescription: null == advertBannerDescription
          ? _value.advertBannerDescription
          : advertBannerDescription // ignore: cast_nullable_to_non_nullable
              as String,
      advertBannerImage: null == advertBannerImage
          ? _value.advertBannerImage
          : advertBannerImage // ignore: cast_nullable_to_non_nullable
              as ImageModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewArivalModelImpl implements _NewArivalModel {
  const _$NewArivalModelImpl(
      {required this.id,
      required this.productID,
      required this.advertBannerTitle,
      required this.advertBannerDescription,
      required this.advertBannerImage});

  factory _$NewArivalModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewArivalModelImplFromJson(json);

  @override
  final int id;
  @override
  final String productID;
  @override
  final String advertBannerTitle;
  @override
  final String advertBannerDescription;
  @override
  final ImageModel advertBannerImage;

  @override
  String toString() {
    return 'NewArivalModel(id: $id, productID: $productID, advertBannerTitle: $advertBannerTitle, advertBannerDescription: $advertBannerDescription, advertBannerImage: $advertBannerImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewArivalModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productID, productID) ||
                other.productID == productID) &&
            (identical(other.advertBannerTitle, advertBannerTitle) ||
                other.advertBannerTitle == advertBannerTitle) &&
            (identical(
                    other.advertBannerDescription, advertBannerDescription) ||
                other.advertBannerDescription == advertBannerDescription) &&
            (identical(other.advertBannerImage, advertBannerImage) ||
                other.advertBannerImage == advertBannerImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, productID, advertBannerTitle,
      advertBannerDescription, advertBannerImage);

  /// Create a copy of NewArivalModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewArivalModelImplCopyWith<_$NewArivalModelImpl> get copyWith =>
      __$$NewArivalModelImplCopyWithImpl<_$NewArivalModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewArivalModelImplToJson(
      this,
    );
  }
}

abstract class _NewArivalModel implements NewArivalModel {
  const factory _NewArivalModel(
      {required final int id,
      required final String productID,
      required final String advertBannerTitle,
      required final String advertBannerDescription,
      required final ImageModel advertBannerImage}) = _$NewArivalModelImpl;

  factory _NewArivalModel.fromJson(Map<String, dynamic> json) =
      _$NewArivalModelImpl.fromJson;

  @override
  int get id;
  @override
  String get productID;
  @override
  String get advertBannerTitle;
  @override
  String get advertBannerDescription;
  @override
  ImageModel get advertBannerImage;

  /// Create a copy of NewArivalModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewArivalModelImplCopyWith<_$NewArivalModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
