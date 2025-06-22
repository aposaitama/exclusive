// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartProductModel _$CartProductModelFromJson(Map<String, dynamic> json) {
  return _CartProductModel.fromJson(json);
}

/// @nodoc
mixin _$CartProductModel {
  int get id => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  int get colorsSelectedId => throw _privateConstructorUsedError;
  ImageModel get mainProductImage => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String? get productSize => throw _privateConstructorUsedError;
  double get productPrice => throw _privateConstructorUsedError;

  /// Serializes this CartProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartProductModelCopyWith<CartProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductModelCopyWith<$Res> {
  factory $CartProductModelCopyWith(
          CartProductModel value, $Res Function(CartProductModel) then) =
      _$CartProductModelCopyWithImpl<$Res, CartProductModel>;
  @useResult
  $Res call(
      {int id,
      String documentId,
      String productName,
      int colorsSelectedId,
      ImageModel mainProductImage,
      int quantity,
      String? productSize,
      double productPrice});

  $ImageModelCopyWith<$Res> get mainProductImage;
}

/// @nodoc
class _$CartProductModelCopyWithImpl<$Res, $Val extends CartProductModel>
    implements $CartProductModelCopyWith<$Res> {
  _$CartProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? productName = null,
    Object? colorsSelectedId = null,
    Object? mainProductImage = null,
    Object? quantity = null,
    Object? productSize = freezed,
    Object? productPrice = null,
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
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      colorsSelectedId: null == colorsSelectedId
          ? _value.colorsSelectedId
          : colorsSelectedId // ignore: cast_nullable_to_non_nullable
              as int,
      mainProductImage: null == mainProductImage
          ? _value.mainProductImage
          : mainProductImage // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      productSize: freezed == productSize
          ? _value.productSize
          : productSize // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of CartProductModel
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
abstract class _$$CartProductModelImplCopyWith<$Res>
    implements $CartProductModelCopyWith<$Res> {
  factory _$$CartProductModelImplCopyWith(_$CartProductModelImpl value,
          $Res Function(_$CartProductModelImpl) then) =
      __$$CartProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String documentId,
      String productName,
      int colorsSelectedId,
      ImageModel mainProductImage,
      int quantity,
      String? productSize,
      double productPrice});

  @override
  $ImageModelCopyWith<$Res> get mainProductImage;
}

/// @nodoc
class __$$CartProductModelImplCopyWithImpl<$Res>
    extends _$CartProductModelCopyWithImpl<$Res, _$CartProductModelImpl>
    implements _$$CartProductModelImplCopyWith<$Res> {
  __$$CartProductModelImplCopyWithImpl(_$CartProductModelImpl _value,
      $Res Function(_$CartProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? productName = null,
    Object? colorsSelectedId = null,
    Object? mainProductImage = null,
    Object? quantity = null,
    Object? productSize = freezed,
    Object? productPrice = null,
  }) {
    return _then(_$CartProductModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      documentId: null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      colorsSelectedId: null == colorsSelectedId
          ? _value.colorsSelectedId
          : colorsSelectedId // ignore: cast_nullable_to_non_nullable
              as int,
      mainProductImage: null == mainProductImage
          ? _value.mainProductImage
          : mainProductImage // ignore: cast_nullable_to_non_nullable
              as ImageModel,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      productSize: freezed == productSize
          ? _value.productSize
          : productSize // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductModelImpl implements _CartProductModel {
  const _$CartProductModelImpl(
      {required this.id,
      required this.documentId,
      required this.productName,
      required this.colorsSelectedId,
      required this.mainProductImage,
      required this.quantity,
      this.productSize,
      required this.productPrice});

  factory _$CartProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductModelImplFromJson(json);

  @override
  final int id;
  @override
  final String documentId;
  @override
  final String productName;
  @override
  final int colorsSelectedId;
  @override
  final ImageModel mainProductImage;
  @override
  final int quantity;
  @override
  final String? productSize;
  @override
  final double productPrice;

  @override
  String toString() {
    return 'CartProductModel(id: $id, documentId: $documentId, productName: $productName, colorsSelectedId: $colorsSelectedId, mainProductImage: $mainProductImage, quantity: $quantity, productSize: $productSize, productPrice: $productPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.colorsSelectedId, colorsSelectedId) ||
                other.colorsSelectedId == colorsSelectedId) &&
            (identical(other.mainProductImage, mainProductImage) ||
                other.mainProductImage == mainProductImage) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.productSize, productSize) ||
                other.productSize == productSize) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, documentId, productName,
      colorsSelectedId, mainProductImage, quantity, productSize, productPrice);

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductModelImplCopyWith<_$CartProductModelImpl> get copyWith =>
      __$$CartProductModelImplCopyWithImpl<_$CartProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductModelImplToJson(
      this,
    );
  }
}

abstract class _CartProductModel implements CartProductModel {
  const factory _CartProductModel(
      {required final int id,
      required final String documentId,
      required final String productName,
      required final int colorsSelectedId,
      required final ImageModel mainProductImage,
      required final int quantity,
      final String? productSize,
      required final double productPrice}) = _$CartProductModelImpl;

  factory _CartProductModel.fromJson(Map<String, dynamic> json) =
      _$CartProductModelImpl.fromJson;

  @override
  int get id;
  @override
  String get documentId;
  @override
  String get productName;
  @override
  int get colorsSelectedId;
  @override
  ImageModel get mainProductImage;
  @override
  int get quantity;
  @override
  String? get productSize;
  @override
  double get productPrice;

  /// Create a copy of CartProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartProductModelImplCopyWith<_$CartProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
