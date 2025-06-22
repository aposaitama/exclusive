// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detailed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailedModel _$ProductDetailedModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailedModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailedModel {
  int get id => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;
  double get productPrice => throw _privateConstructorUsedError;
  double? get productOriginPrice => throw _privateConstructorUsedError;
  int get ratingCount => throw _privateConstructorUsedError;
  double get totalRating => throw _privateConstructorUsedError;
  double? get salePercent => throw _privateConstructorUsedError;
  int get saleCount => throw _privateConstructorUsedError;
  List<ProductColorModel> get product_colors =>
      throw _privateConstructorUsedError;
  List<ProductSizeModel>? get productSizeList =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductDetailedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailedModelCopyWith<ProductDetailedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailedModelCopyWith<$Res> {
  factory $ProductDetailedModelCopyWith(ProductDetailedModel value,
          $Res Function(ProductDetailedModel) then) =
      _$ProductDetailedModelCopyWithImpl<$Res, ProductDetailedModel>;
  @useResult
  $Res call(
      {int id,
      String documentId,
      String productName,
      String productDescription,
      double productPrice,
      double? productOriginPrice,
      int ratingCount,
      double totalRating,
      double? salePercent,
      int saleCount,
      List<ProductColorModel> product_colors,
      List<ProductSizeModel>? productSizeList});
}

/// @nodoc
class _$ProductDetailedModelCopyWithImpl<$Res,
        $Val extends ProductDetailedModel>
    implements $ProductDetailedModelCopyWith<$Res> {
  _$ProductDetailedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? productPrice = null,
    Object? productOriginPrice = freezed,
    Object? ratingCount = null,
    Object? totalRating = null,
    Object? salePercent = freezed,
    Object? saleCount = null,
    Object? product_colors = null,
    Object? productSizeList = freezed,
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
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double,
      productOriginPrice: freezed == productOriginPrice
          ? _value.productOriginPrice
          : productOriginPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalRating: null == totalRating
          ? _value.totalRating
          : totalRating // ignore: cast_nullable_to_non_nullable
              as double,
      salePercent: freezed == salePercent
          ? _value.salePercent
          : salePercent // ignore: cast_nullable_to_non_nullable
              as double?,
      saleCount: null == saleCount
          ? _value.saleCount
          : saleCount // ignore: cast_nullable_to_non_nullable
              as int,
      product_colors: null == product_colors
          ? _value.product_colors
          : product_colors // ignore: cast_nullable_to_non_nullable
              as List<ProductColorModel>,
      productSizeList: freezed == productSizeList
          ? _value.productSizeList
          : productSizeList // ignore: cast_nullable_to_non_nullable
              as List<ProductSizeModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailedModelImplCopyWith<$Res>
    implements $ProductDetailedModelCopyWith<$Res> {
  factory _$$ProductDetailedModelImplCopyWith(_$ProductDetailedModelImpl value,
          $Res Function(_$ProductDetailedModelImpl) then) =
      __$$ProductDetailedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String documentId,
      String productName,
      String productDescription,
      double productPrice,
      double? productOriginPrice,
      int ratingCount,
      double totalRating,
      double? salePercent,
      int saleCount,
      List<ProductColorModel> product_colors,
      List<ProductSizeModel>? productSizeList});
}

/// @nodoc
class __$$ProductDetailedModelImplCopyWithImpl<$Res>
    extends _$ProductDetailedModelCopyWithImpl<$Res, _$ProductDetailedModelImpl>
    implements _$$ProductDetailedModelImplCopyWith<$Res> {
  __$$ProductDetailedModelImplCopyWithImpl(_$ProductDetailedModelImpl _value,
      $Res Function(_$ProductDetailedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? productPrice = null,
    Object? productOriginPrice = freezed,
    Object? ratingCount = null,
    Object? totalRating = null,
    Object? salePercent = freezed,
    Object? saleCount = null,
    Object? product_colors = null,
    Object? productSizeList = freezed,
  }) {
    return _then(_$ProductDetailedModelImpl(
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
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double,
      productOriginPrice: freezed == productOriginPrice
          ? _value.productOriginPrice
          : productOriginPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalRating: null == totalRating
          ? _value.totalRating
          : totalRating // ignore: cast_nullable_to_non_nullable
              as double,
      salePercent: freezed == salePercent
          ? _value.salePercent
          : salePercent // ignore: cast_nullable_to_non_nullable
              as double?,
      saleCount: null == saleCount
          ? _value.saleCount
          : saleCount // ignore: cast_nullable_to_non_nullable
              as int,
      product_colors: null == product_colors
          ? _value._product_colors
          : product_colors // ignore: cast_nullable_to_non_nullable
              as List<ProductColorModel>,
      productSizeList: freezed == productSizeList
          ? _value._productSizeList
          : productSizeList // ignore: cast_nullable_to_non_nullable
              as List<ProductSizeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailedModelImpl implements _ProductDetailedModel {
  const _$ProductDetailedModelImpl(
      {required this.id,
      required this.documentId,
      required this.productName,
      required this.productDescription,
      required this.productPrice,
      this.productOriginPrice,
      required this.ratingCount,
      required this.totalRating,
      this.salePercent,
      required this.saleCount,
      required final List<ProductColorModel> product_colors,
      final List<ProductSizeModel>? productSizeList})
      : _product_colors = product_colors,
        _productSizeList = productSizeList;

  factory _$ProductDetailedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailedModelImplFromJson(json);

  @override
  final int id;
  @override
  final String documentId;
  @override
  final String productName;
  @override
  final String productDescription;
  @override
  final double productPrice;
  @override
  final double? productOriginPrice;
  @override
  final int ratingCount;
  @override
  final double totalRating;
  @override
  final double? salePercent;
  @override
  final int saleCount;
  final List<ProductColorModel> _product_colors;
  @override
  List<ProductColorModel> get product_colors {
    if (_product_colors is EqualUnmodifiableListView) return _product_colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product_colors);
  }

  final List<ProductSizeModel>? _productSizeList;
  @override
  List<ProductSizeModel>? get productSizeList {
    final value = _productSizeList;
    if (value == null) return null;
    if (_productSizeList is EqualUnmodifiableListView) return _productSizeList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDetailedModel(id: $id, documentId: $documentId, productName: $productName, productDescription: $productDescription, productPrice: $productPrice, productOriginPrice: $productOriginPrice, ratingCount: $ratingCount, totalRating: $totalRating, salePercent: $salePercent, saleCount: $saleCount, product_colors: $product_colors, productSizeList: $productSizeList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailedModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productOriginPrice, productOriginPrice) ||
                other.productOriginPrice == productOriginPrice) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.totalRating, totalRating) ||
                other.totalRating == totalRating) &&
            (identical(other.salePercent, salePercent) ||
                other.salePercent == salePercent) &&
            (identical(other.saleCount, saleCount) ||
                other.saleCount == saleCount) &&
            const DeepCollectionEquality()
                .equals(other._product_colors, _product_colors) &&
            const DeepCollectionEquality()
                .equals(other._productSizeList, _productSizeList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      documentId,
      productName,
      productDescription,
      productPrice,
      productOriginPrice,
      ratingCount,
      totalRating,
      salePercent,
      saleCount,
      const DeepCollectionEquality().hash(_product_colors),
      const DeepCollectionEquality().hash(_productSizeList));

  /// Create a copy of ProductDetailedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailedModelImplCopyWith<_$ProductDetailedModelImpl>
      get copyWith =>
          __$$ProductDetailedModelImplCopyWithImpl<_$ProductDetailedModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailedModelImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailedModel implements ProductDetailedModel {
  const factory _ProductDetailedModel(
          {required final int id,
          required final String documentId,
          required final String productName,
          required final String productDescription,
          required final double productPrice,
          final double? productOriginPrice,
          required final int ratingCount,
          required final double totalRating,
          final double? salePercent,
          required final int saleCount,
          required final List<ProductColorModel> product_colors,
          final List<ProductSizeModel>? productSizeList}) =
      _$ProductDetailedModelImpl;

  factory _ProductDetailedModel.fromJson(Map<String, dynamic> json) =
      _$ProductDetailedModelImpl.fromJson;

  @override
  int get id;
  @override
  String get documentId;
  @override
  String get productName;
  @override
  String get productDescription;
  @override
  double get productPrice;
  @override
  double? get productOriginPrice;
  @override
  int get ratingCount;
  @override
  double get totalRating;
  @override
  double? get salePercent;
  @override
  int get saleCount;
  @override
  List<ProductColorModel> get product_colors;
  @override
  List<ProductSizeModel>? get productSizeList;

  /// Create a copy of ProductDetailedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailedModelImplCopyWith<_$ProductDetailedModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductSizeModel _$ProductSizeModelFromJson(Map<String, dynamic> json) {
  return _ProductSizeModel.fromJson(json);
}

/// @nodoc
mixin _$ProductSizeModel {
  String get size => throw _privateConstructorUsedError;
  bool get isAvaliable => throw _privateConstructorUsedError;

  /// Serializes this ProductSizeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductSizeModelCopyWith<ProductSizeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSizeModelCopyWith<$Res> {
  factory $ProductSizeModelCopyWith(
          ProductSizeModel value, $Res Function(ProductSizeModel) then) =
      _$ProductSizeModelCopyWithImpl<$Res, ProductSizeModel>;
  @useResult
  $Res call({String size, bool isAvaliable});
}

/// @nodoc
class _$ProductSizeModelCopyWithImpl<$Res, $Val extends ProductSizeModel>
    implements $ProductSizeModelCopyWith<$Res> {
  _$ProductSizeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? isAvaliable = null,
  }) {
    return _then(_value.copyWith(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      isAvaliable: null == isAvaliable
          ? _value.isAvaliable
          : isAvaliable // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductSizeModelImplCopyWith<$Res>
    implements $ProductSizeModelCopyWith<$Res> {
  factory _$$ProductSizeModelImplCopyWith(_$ProductSizeModelImpl value,
          $Res Function(_$ProductSizeModelImpl) then) =
      __$$ProductSizeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String size, bool isAvaliable});
}

/// @nodoc
class __$$ProductSizeModelImplCopyWithImpl<$Res>
    extends _$ProductSizeModelCopyWithImpl<$Res, _$ProductSizeModelImpl>
    implements _$$ProductSizeModelImplCopyWith<$Res> {
  __$$ProductSizeModelImplCopyWithImpl(_$ProductSizeModelImpl _value,
      $Res Function(_$ProductSizeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
    Object? isAvaliable = null,
  }) {
    return _then(_$ProductSizeModelImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      isAvaliable: null == isAvaliable
          ? _value.isAvaliable
          : isAvaliable // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductSizeModelImpl implements _ProductSizeModel {
  const _$ProductSizeModelImpl({required this.size, required this.isAvaliable});

  factory _$ProductSizeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductSizeModelImplFromJson(json);

  @override
  final String size;
  @override
  final bool isAvaliable;

  @override
  String toString() {
    return 'ProductSizeModel(size: $size, isAvaliable: $isAvaliable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductSizeModelImpl &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.isAvaliable, isAvaliable) ||
                other.isAvaliable == isAvaliable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, size, isAvaliable);

  /// Create a copy of ProductSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductSizeModelImplCopyWith<_$ProductSizeModelImpl> get copyWith =>
      __$$ProductSizeModelImplCopyWithImpl<_$ProductSizeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductSizeModelImplToJson(
      this,
    );
  }
}

abstract class _ProductSizeModel implements ProductSizeModel {
  const factory _ProductSizeModel(
      {required final String size,
      required final bool isAvaliable}) = _$ProductSizeModelImpl;

  factory _ProductSizeModel.fromJson(Map<String, dynamic> json) =
      _$ProductSizeModelImpl.fromJson;

  @override
  String get size;
  @override
  bool get isAvaliable;

  /// Create a copy of ProductSizeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductSizeModelImplCopyWith<_$ProductSizeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
