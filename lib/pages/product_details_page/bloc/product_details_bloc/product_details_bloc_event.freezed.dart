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
  String get productId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String productId) loadInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? loadInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? loadInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadDetailedProductInfoEvent value) loadInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDetailedProductInfoEvent value)? loadInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDetailedProductInfoEvent value)? loadInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductDetailsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDetailsBlocEventCopyWith<ProductDetailsBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsBlocEventCopyWith<$Res> {
  factory $ProductDetailsBlocEventCopyWith(ProductDetailsBlocEvent value,
          $Res Function(ProductDetailsBlocEvent) then) =
      _$ProductDetailsBlocEventCopyWithImpl<$Res, ProductDetailsBlocEvent>;
  @useResult
  $Res call({String productId});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadDetailedProductInfoEventImplCopyWith<$Res>
    implements $ProductDetailsBlocEventCopyWith<$Res> {
  factory _$$LoadDetailedProductInfoEventImplCopyWith(
          _$LoadDetailedProductInfoEventImpl value,
          $Res Function(_$LoadDetailedProductInfoEventImpl) then) =
      __$$LoadDetailedProductInfoEventImplCopyWithImpl<$Res>;
  @override
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
  }) {
    return loadInfo(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String productId)? loadInfo,
  }) {
    return loadInfo?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String productId)? loadInfo,
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
  }) {
    return loadInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadDetailedProductInfoEvent value)? loadInfo,
  }) {
    return loadInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadDetailedProductInfoEvent value)? loadInfo,
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

  @override
  String get productId;

  /// Create a copy of ProductDetailsBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadDetailedProductInfoEventImplCopyWith<
          _$LoadDetailedProductInfoEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
