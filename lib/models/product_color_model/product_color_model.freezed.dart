// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_color_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductColorModel _$ProductColorModelFromJson(Map<String, dynamic> json) {
  return _ProductColorModel.fromJson(json);
}

/// @nodoc
mixin _$ProductColorModel {
  String get colorCode => throw _privateConstructorUsedError;
  ImageModel get mainProductImage => throw _privateConstructorUsedError;
  List<ImageModel> get galleryProductImages =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductColorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductColorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductColorModelCopyWith<ProductColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductColorModelCopyWith<$Res> {
  factory $ProductColorModelCopyWith(
          ProductColorModel value, $Res Function(ProductColorModel) then) =
      _$ProductColorModelCopyWithImpl<$Res, ProductColorModel>;
  @useResult
  $Res call(
      {String colorCode,
      ImageModel mainProductImage,
      List<ImageModel> galleryProductImages});

  $ImageModelCopyWith<$Res> get mainProductImage;
}

/// @nodoc
class _$ProductColorModelCopyWithImpl<$Res, $Val extends ProductColorModel>
    implements $ProductColorModelCopyWith<$Res> {
  _$ProductColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductColorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorCode = null,
    Object? mainProductImage = null,
    Object? galleryProductImages = null,
  }) {
    return _then(_value.copyWith(
      colorCode: null == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String,
      mainProductImage: null == mainProductImage
          ? _value.mainProductImage
          : mainProductImage // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      galleryProductImages: null == galleryProductImages
          ? _value.galleryProductImages
          : galleryProductImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ) as $Val);
  }

  /// Create a copy of ProductColorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ImageModelCopyWith<$Res> get mainProductImage {
    return $ImageModelCopyWith<$Res>(_value.mainProductImage, (value) {
      return _then(_value.copyWith(mainProductImage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductColorModelImplCopyWith<$Res>
    implements $ProductColorModelCopyWith<$Res> {
  factory _$$ProductColorModelImplCopyWith(_$ProductColorModelImpl value,
          $Res Function(_$ProductColorModelImpl) then) =
      __$$ProductColorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String colorCode,
      ImageModel mainProductImage,
      List<ImageModel> galleryProductImages});

  @override
  $ImageModelCopyWith<$Res> get mainProductImage;
}

/// @nodoc
class __$$ProductColorModelImplCopyWithImpl<$Res>
    extends _$ProductColorModelCopyWithImpl<$Res, _$ProductColorModelImpl>
    implements _$$ProductColorModelImplCopyWith<$Res> {
  __$$ProductColorModelImplCopyWithImpl(_$ProductColorModelImpl _value,
      $Res Function(_$ProductColorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductColorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorCode = null,
    Object? mainProductImage = null,
    Object? galleryProductImages = null,
  }) {
    return _then(_$ProductColorModelImpl(
      colorCode: null == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String,
      mainProductImage: null == mainProductImage
          ? _value.mainProductImage
          : mainProductImage // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      galleryProductImages: null == galleryProductImages
          ? _value._galleryProductImages
          : galleryProductImages // ignore: cast_nullable_to_non_nullable
              as List<ImageModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductColorModelImpl implements _ProductColorModel {
  const _$ProductColorModelImpl(
      {required this.colorCode,
      required this.mainProductImage,
      required final List<ImageModel> galleryProductImages})
      : _galleryProductImages = galleryProductImages;

  factory _$ProductColorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductColorModelImplFromJson(json);

  @override
  final String colorCode;
  @override
  final ImageModel mainProductImage;
  final List<ImageModel> _galleryProductImages;
  @override
  List<ImageModel> get galleryProductImages {
    if (_galleryProductImages is EqualUnmodifiableListView)
      return _galleryProductImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_galleryProductImages);
  }

  @override
  String toString() {
    return 'ProductColorModel(colorCode: $colorCode, mainProductImage: $mainProductImage, galleryProductImages: $galleryProductImages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductColorModelImpl &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.mainProductImage, mainProductImage) ||
                other.mainProductImage == mainProductImage) &&
            const DeepCollectionEquality()
                .equals(other._galleryProductImages, _galleryProductImages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, colorCode, mainProductImage,
      const DeepCollectionEquality().hash(_galleryProductImages));

  /// Create a copy of ProductColorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductColorModelImplCopyWith<_$ProductColorModelImpl> get copyWith =>
      __$$ProductColorModelImplCopyWithImpl<_$ProductColorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductColorModelImplToJson(
      this,
    );
  }
}

abstract class _ProductColorModel implements ProductColorModel {
  const factory _ProductColorModel(
          {required final String colorCode,
          required final ImageModel mainProductImage,
          required final List<ImageModel> galleryProductImages}) =
      _$ProductColorModelImpl;

  factory _ProductColorModel.fromJson(Map<String, dynamic> json) =
      _$ProductColorModelImpl.fromJson;

  @override
  String get colorCode;
  @override
  ImageModel get mainProductImage;
  @override
  List<ImageModel> get galleryProductImages;

  /// Create a copy of ProductColorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductColorModelImplCopyWith<_$ProductColorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
