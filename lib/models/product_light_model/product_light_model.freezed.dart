// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_light_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductLightModel _$ProductLightModelFromJson(Map<String, dynamic> json) {
  return _ProductLightModel.fromJson(json);
}

/// @nodoc
mixin _$ProductLightModel {
  int get id => throw _privateConstructorUsedError;
  String get documentId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  double get productPrice => throw _privateConstructorUsedError;
  double? get productOriginPrice => throw _privateConstructorUsedError;
  int get ratingCount => throw _privateConstructorUsedError;
  double get totalRating => throw _privateConstructorUsedError;
  double? get salePercent => throw _privateConstructorUsedError;
  int get saleCount => throw _privateConstructorUsedError;
  CategoryLightModel? get category => throw _privateConstructorUsedError;
  List<ProductColorModel> get product_colors =>
      throw _privateConstructorUsedError;
  List<ProductReviewsModel>? get reviews => throw _privateConstructorUsedError;

  /// Serializes this ProductLightModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductLightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductLightModelCopyWith<ProductLightModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductLightModelCopyWith<$Res> {
  factory $ProductLightModelCopyWith(
          ProductLightModel value, $Res Function(ProductLightModel) then) =
      _$ProductLightModelCopyWithImpl<$Res, ProductLightModel>;
  @useResult
  $Res call(
      {int id,
      String documentId,
      String productName,
      double productPrice,
      double? productOriginPrice,
      int ratingCount,
      double totalRating,
      double? salePercent,
      int saleCount,
      CategoryLightModel? category,
      List<ProductColorModel> product_colors,
      List<ProductReviewsModel>? reviews});

  $CategoryLightModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductLightModelCopyWithImpl<$Res, $Val extends ProductLightModel>
    implements $ProductLightModelCopyWith<$Res> {
  _$ProductLightModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductLightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? productName = null,
    Object? productPrice = null,
    Object? productOriginPrice = freezed,
    Object? ratingCount = null,
    Object? totalRating = null,
    Object? salePercent = freezed,
    Object? saleCount = null,
    Object? category = freezed,
    Object? product_colors = null,
    Object? reviews = freezed,
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryLightModel?,
      product_colors: null == product_colors
          ? _value.product_colors
          : product_colors // ignore: cast_nullable_to_non_nullable
              as List<ProductColorModel>,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ProductReviewsModel>?,
    ) as $Val);
  }

  /// Create a copy of ProductLightModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryLightModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryLightModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductLightModelImplCopyWith<$Res>
    implements $ProductLightModelCopyWith<$Res> {
  factory _$$ProductLightModelImplCopyWith(_$ProductLightModelImpl value,
          $Res Function(_$ProductLightModelImpl) then) =
      __$$ProductLightModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String documentId,
      String productName,
      double productPrice,
      double? productOriginPrice,
      int ratingCount,
      double totalRating,
      double? salePercent,
      int saleCount,
      CategoryLightModel? category,
      List<ProductColorModel> product_colors,
      List<ProductReviewsModel>? reviews});

  @override
  $CategoryLightModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ProductLightModelImplCopyWithImpl<$Res>
    extends _$ProductLightModelCopyWithImpl<$Res, _$ProductLightModelImpl>
    implements _$$ProductLightModelImplCopyWith<$Res> {
  __$$ProductLightModelImplCopyWithImpl(_$ProductLightModelImpl _value,
      $Res Function(_$ProductLightModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductLightModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? documentId = null,
    Object? productName = null,
    Object? productPrice = null,
    Object? productOriginPrice = freezed,
    Object? ratingCount = null,
    Object? totalRating = null,
    Object? salePercent = freezed,
    Object? saleCount = null,
    Object? category = freezed,
    Object? product_colors = null,
    Object? reviews = freezed,
  }) {
    return _then(_$ProductLightModelImpl(
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
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryLightModel?,
      product_colors: null == product_colors
          ? _value._product_colors
          : product_colors // ignore: cast_nullable_to_non_nullable
              as List<ProductColorModel>,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ProductReviewsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductLightModelImpl implements _ProductLightModel {
  const _$ProductLightModelImpl(
      {required this.id,
      required this.documentId,
      required this.productName,
      required this.productPrice,
      this.productOriginPrice,
      required this.ratingCount,
      required this.totalRating,
      this.salePercent,
      required this.saleCount,
      this.category,
      required final List<ProductColorModel> product_colors,
      final List<ProductReviewsModel>? reviews})
      : _product_colors = product_colors,
        _reviews = reviews;

  factory _$ProductLightModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductLightModelImplFromJson(json);

  @override
  final int id;
  @override
  final String documentId;
  @override
  final String productName;
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
  @override
  final CategoryLightModel? category;
  final List<ProductColorModel> _product_colors;
  @override
  List<ProductColorModel> get product_colors {
    if (_product_colors is EqualUnmodifiableListView) return _product_colors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product_colors);
  }

  final List<ProductReviewsModel>? _reviews;
  @override
  List<ProductReviewsModel>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductLightModel(id: $id, documentId: $documentId, productName: $productName, productPrice: $productPrice, productOriginPrice: $productOriginPrice, ratingCount: $ratingCount, totalRating: $totalRating, salePercent: $salePercent, saleCount: $saleCount, category: $category, product_colors: $product_colors, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLightModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
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
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._product_colors, _product_colors) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      documentId,
      productName,
      productPrice,
      productOriginPrice,
      ratingCount,
      totalRating,
      salePercent,
      saleCount,
      category,
      const DeepCollectionEquality().hash(_product_colors),
      const DeepCollectionEquality().hash(_reviews));

  /// Create a copy of ProductLightModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLightModelImplCopyWith<_$ProductLightModelImpl> get copyWith =>
      __$$ProductLightModelImplCopyWithImpl<_$ProductLightModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductLightModelImplToJson(
      this,
    );
  }
}

abstract class _ProductLightModel implements ProductLightModel {
  const factory _ProductLightModel(
      {required final int id,
      required final String documentId,
      required final String productName,
      required final double productPrice,
      final double? productOriginPrice,
      required final int ratingCount,
      required final double totalRating,
      final double? salePercent,
      required final int saleCount,
      final CategoryLightModel? category,
      required final List<ProductColorModel> product_colors,
      final List<ProductReviewsModel>? reviews}) = _$ProductLightModelImpl;

  factory _ProductLightModel.fromJson(Map<String, dynamic> json) =
      _$ProductLightModelImpl.fromJson;

  @override
  int get id;
  @override
  String get documentId;
  @override
  String get productName;
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
  CategoryLightModel? get category;
  @override
  List<ProductColorModel> get product_colors;
  @override
  List<ProductReviewsModel>? get reviews;

  /// Create a copy of ProductLightModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductLightModelImplCopyWith<_$ProductLightModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
