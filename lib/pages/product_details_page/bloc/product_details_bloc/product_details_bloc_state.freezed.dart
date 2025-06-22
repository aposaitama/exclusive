// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailsBlocState {
  LoadingProductInfoStatus get loadingProductInfoStatus =>
      throw _privateConstructorUsedError;
  AddingProductToCardStatus get addingProductToCartStatus =>
      throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  ProductDetailedModel? get product => throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailsBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailsBlocStateCopyWith<ProductDetailsBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsBlocStateCopyWith<$Res> {
  factory $ProductDetailsBlocStateCopyWith(ProductDetailsBlocState value,
          $Res Function(ProductDetailsBlocState) then) =
      _$ProductDetailsBlocStateCopyWithImpl<$Res, ProductDetailsBlocState>;
  @useResult
  $Res call(
      {LoadingProductInfoStatus loadingProductInfoStatus,
      AddingProductToCardStatus addingProductToCartStatus,
      String errorMessage,
      ProductDetailedModel? product});

  $ProductDetailedModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$ProductDetailsBlocStateCopyWithImpl<$Res,
        $Val extends ProductDetailsBlocState>
    implements $ProductDetailsBlocStateCopyWith<$Res> {
  _$ProductDetailsBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailsBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingProductInfoStatus = null,
    Object? addingProductToCartStatus = null,
    Object? errorMessage = null,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      loadingProductInfoStatus: null == loadingProductInfoStatus
          ? _value.loadingProductInfoStatus
          : loadingProductInfoStatus // ignore: cast_nullable_to_non_nullable
              as LoadingProductInfoStatus,
      addingProductToCartStatus: null == addingProductToCartStatus
          ? _value.addingProductToCartStatus
          : addingProductToCartStatus // ignore: cast_nullable_to_non_nullable
              as AddingProductToCardStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailedModel?,
    ) as $Val);
  }

  /// Create a copy of ProductDetailsBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductDetailedModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductDetailedModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailsBlocStateImplCopyWith<$Res>
    implements $ProductDetailsBlocStateCopyWith<$Res> {
  factory _$$ProductDetailsBlocStateImplCopyWith(
          _$ProductDetailsBlocStateImpl value,
          $Res Function(_$ProductDetailsBlocStateImpl) then) =
      __$$ProductDetailsBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingProductInfoStatus loadingProductInfoStatus,
      AddingProductToCardStatus addingProductToCartStatus,
      String errorMessage,
      ProductDetailedModel? product});

  @override
  $ProductDetailedModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$ProductDetailsBlocStateImplCopyWithImpl<$Res>
    extends _$ProductDetailsBlocStateCopyWithImpl<$Res,
        _$ProductDetailsBlocStateImpl>
    implements _$$ProductDetailsBlocStateImplCopyWith<$Res> {
  __$$ProductDetailsBlocStateImplCopyWithImpl(
      _$ProductDetailsBlocStateImpl _value,
      $Res Function(_$ProductDetailsBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingProductInfoStatus = null,
    Object? addingProductToCartStatus = null,
    Object? errorMessage = null,
    Object? product = freezed,
  }) {
    return _then(_$ProductDetailsBlocStateImpl(
      loadingProductInfoStatus: null == loadingProductInfoStatus
          ? _value.loadingProductInfoStatus
          : loadingProductInfoStatus // ignore: cast_nullable_to_non_nullable
              as LoadingProductInfoStatus,
      addingProductToCartStatus: null == addingProductToCartStatus
          ? _value.addingProductToCartStatus
          : addingProductToCartStatus // ignore: cast_nullable_to_non_nullable
              as AddingProductToCardStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetailedModel?,
    ));
  }
}

/// @nodoc

class _$ProductDetailsBlocStateImpl implements _ProductDetailsBlocState {
  const _$ProductDetailsBlocStateImpl(
      {this.loadingProductInfoStatus = LoadingProductInfoStatus.initial,
      this.addingProductToCartStatus = AddingProductToCardStatus.initial,
      this.errorMessage = '',
      this.product});

  @override
  @JsonKey()
  final LoadingProductInfoStatus loadingProductInfoStatus;
  @override
  @JsonKey()
  final AddingProductToCardStatus addingProductToCartStatus;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  final ProductDetailedModel? product;

  @override
  String toString() {
    return 'ProductDetailsBlocState(loadingProductInfoStatus: $loadingProductInfoStatus, addingProductToCartStatus: $addingProductToCartStatus, errorMessage: $errorMessage, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsBlocStateImpl &&
            (identical(
                    other.loadingProductInfoStatus, loadingProductInfoStatus) ||
                other.loadingProductInfoStatus == loadingProductInfoStatus) &&
            (identical(other.addingProductToCartStatus,
                    addingProductToCartStatus) ||
                other.addingProductToCartStatus == addingProductToCartStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingProductInfoStatus,
      addingProductToCartStatus, errorMessage, product);

  /// Create a copy of ProductDetailsBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsBlocStateImplCopyWith<_$ProductDetailsBlocStateImpl>
      get copyWith => __$$ProductDetailsBlocStateImplCopyWithImpl<
          _$ProductDetailsBlocStateImpl>(this, _$identity);
}

abstract class _ProductDetailsBlocState implements ProductDetailsBlocState {
  const factory _ProductDetailsBlocState(
      {final LoadingProductInfoStatus loadingProductInfoStatus,
      final AddingProductToCardStatus addingProductToCartStatus,
      final String errorMessage,
      final ProductDetailedModel? product}) = _$ProductDetailsBlocStateImpl;

  @override
  LoadingProductInfoStatus get loadingProductInfoStatus;
  @override
  AddingProductToCardStatus get addingProductToCartStatus;
  @override
  String get errorMessage;
  @override
  ProductDetailedModel? get product;

  /// Create a copy of ProductDetailsBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDetailsBlocStateImplCopyWith<_$ProductDetailsBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
