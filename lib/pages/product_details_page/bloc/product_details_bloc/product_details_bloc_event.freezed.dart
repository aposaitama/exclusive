// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailsBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) loadInfo,
    required TResult Function(double rating) changeRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? loadInfo,
    TResult? Function(double rating)? changeRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? loadInfo,
    TResult Function(double rating)? changeRating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDetailedProductInfoEvent value) loadInfo,
    required TResult Function(ChangeProductRatingEvent value) changeRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDetailedProductInfoEvent value)? loadInfo,
    TResult? Function(ChangeProductRatingEvent value)? changeRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDetailedProductInfoEvent value)? loadInfo,
    TResult Function(ChangeProductRatingEvent value)? changeRating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsBlocEventCopyWith<$Res> {
  factory $ProductDetailsBlocEventCopyWith(ProductDetailsBlocEvent value,
          $Res Function(ProductDetailsBlocEvent) then) =
      _$ProductDetailsBlocEventCopyWithImpl<$Res, ProductDetailsBlocEvent>;
}

/// @nodoc
class _$ProductDetailsBlocEventCopyWithImpl<$Res,
        $Val extends ProductDetailsBlocEvent>
    implements $ProductDetailsBlocEventCopyWith<$Res> {
  _$ProductDetailsBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductDetailsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadDetailedProductInfoEventImplCopyWith<$Res> {
  factory _$$LoadDetailedProductInfoEventImplCopyWith(
          _$LoadDetailedProductInfoEventImpl value,
          $Res Function(_$LoadDetailedProductInfoEventImpl) then) =
      __$$LoadDetailedProductInfoEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$LoadDetailedProductInfoEventImplCopyWithImpl<$Res>
    extends _$ProductDetailsBlocEventCopyWithImpl<$Res,
        _$LoadDetailedProductInfoEventImpl>
    implements _$$LoadDetailedProductInfoEventImplCopyWith<$Res> {
  __$$LoadDetailedProductInfoEventImplCopyWithImpl(
      _$LoadDetailedProductInfoEventImpl _value,
      $Res Function(_$LoadDetailedProductInfoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$LoadDetailedProductInfoEventImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadDetailedProductInfoEventImpl
    implements LoadDetailedProductInfoEvent {
  const _$LoadDetailedProductInfoEventImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'ProductDetailsBlocEvent.loadInfo(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDetailedProductInfoEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of ProductDetailsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDetailedProductInfoEventImplCopyWith<
          _$LoadDetailedProductInfoEventImpl>
      get copyWith => __$$LoadDetailedProductInfoEventImplCopyWithImpl<
          _$LoadDetailedProductInfoEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) loadInfo,
    required TResult Function(double rating) changeRating,
  }) {
    return loadInfo(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? loadInfo,
    TResult? Function(double rating)? changeRating,
  }) {
    return loadInfo?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? loadInfo,
    TResult Function(double rating)? changeRating,
    required TResult orElse(),
  }) {
    if (loadInfo != null) {
      return loadInfo(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDetailedProductInfoEvent value) loadInfo,
    required TResult Function(ChangeProductRatingEvent value) changeRating,
  }) {
    return loadInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDetailedProductInfoEvent value)? loadInfo,
    TResult? Function(ChangeProductRatingEvent value)? changeRating,
  }) {
    return loadInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDetailedProductInfoEvent value)? loadInfo,
    TResult Function(ChangeProductRatingEvent value)? changeRating,
    required TResult orElse(),
  }) {
    if (loadInfo != null) {
      return loadInfo(this);
    }
    return orElse();
  }
}

abstract class LoadDetailedProductInfoEvent implements ProductDetailsBlocEvent {
  const factory LoadDetailedProductInfoEvent(final String productId) =
      _$LoadDetailedProductInfoEventImpl;

  String get productId;

  /// Create a copy of ProductDetailsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadDetailedProductInfoEventImplCopyWith<
          _$LoadDetailedProductInfoEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeProductRatingEventImplCopyWith<$Res> {
  factory _$$ChangeProductRatingEventImplCopyWith(
          _$ChangeProductRatingEventImpl value,
          $Res Function(_$ChangeProductRatingEventImpl) then) =
      __$$ChangeProductRatingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double rating});
}

/// @nodoc
class __$$ChangeProductRatingEventImplCopyWithImpl<$Res>
    extends _$ProductDetailsBlocEventCopyWithImpl<$Res,
        _$ChangeProductRatingEventImpl>
    implements _$$ChangeProductRatingEventImplCopyWith<$Res> {
  __$$ChangeProductRatingEventImplCopyWithImpl(
      _$ChangeProductRatingEventImpl _value,
      $Res Function(_$ChangeProductRatingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductDetailsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
  }) {
    return _then(_$ChangeProductRatingEventImpl(
      null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangeProductRatingEventImpl implements ChangeProductRatingEvent {
  const _$ChangeProductRatingEventImpl(this.rating);

  @override
  final double rating;

  @override
  String toString() {
    return 'ProductDetailsBlocEvent.changeRating(rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeProductRatingEventImpl &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating);

  /// Create a copy of ProductDetailsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeProductRatingEventImplCopyWith<_$ChangeProductRatingEventImpl>
      get copyWith => __$$ChangeProductRatingEventImplCopyWithImpl<
          _$ChangeProductRatingEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) loadInfo,
    required TResult Function(double rating) changeRating,
  }) {
    return changeRating(rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? loadInfo,
    TResult? Function(double rating)? changeRating,
  }) {
    return changeRating?.call(rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? loadInfo,
    TResult Function(double rating)? changeRating,
    required TResult orElse(),
  }) {
    if (changeRating != null) {
      return changeRating(rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDetailedProductInfoEvent value) loadInfo,
    required TResult Function(ChangeProductRatingEvent value) changeRating,
  }) {
    return changeRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDetailedProductInfoEvent value)? loadInfo,
    TResult? Function(ChangeProductRatingEvent value)? changeRating,
  }) {
    return changeRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDetailedProductInfoEvent value)? loadInfo,
    TResult Function(ChangeProductRatingEvent value)? changeRating,
    required TResult orElse(),
  }) {
    if (changeRating != null) {
      return changeRating(this);
    }
    return orElse();
  }
}

abstract class ChangeProductRatingEvent implements ProductDetailsBlocEvent {
  const factory ChangeProductRatingEvent(final double rating) =
      _$ChangeProductRatingEventImpl;

  double get rating;

  /// Create a copy of ProductDetailsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeProductRatingEventImplCopyWith<_$ChangeProductRatingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
