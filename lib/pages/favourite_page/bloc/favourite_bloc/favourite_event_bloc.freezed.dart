// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouriteBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWishlistProducts,
    required TResult Function(String productId) addProductToWishlist,
    required TResult Function(String productId) removeProductFromWishlist,
    required TResult Function(List<String> productId) addProductsToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWishlistProducts,
    TResult? Function(String productId)? addProductToWishlist,
    TResult? Function(String productId)? removeProductFromWishlist,
    TResult? Function(List<String> productId)? addProductsToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWishlistProducts,
    TResult Function(String productId)? addProductToWishlist,
    TResult Function(String productId)? removeProductFromWishlist,
    TResult Function(List<String> productId)? addProductsToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWishlistProductsEvent value)
        loadWishlistProducts,
    required TResult Function(AddProductToWishlistEvent value)
        addProductToWishlist,
    required TResult Function(RemoveProductFromWishlistEvent value)
        removeProductFromWishlist,
    required TResult Function(AddProductToCartEvent value) addProductsToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWishlistProductsEvent value)? loadWishlistProducts,
    TResult? Function(AddProductToWishlistEvent value)? addProductToWishlist,
    TResult? Function(RemoveProductFromWishlistEvent value)?
        removeProductFromWishlist,
    TResult? Function(AddProductToCartEvent value)? addProductsToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWishlistProductsEvent value)? loadWishlistProducts,
    TResult Function(AddProductToWishlistEvent value)? addProductToWishlist,
    TResult Function(RemoveProductFromWishlistEvent value)?
        removeProductFromWishlist,
    TResult Function(AddProductToCartEvent value)? addProductsToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteBlocEventCopyWith<$Res> {
  factory $FavouriteBlocEventCopyWith(
          FavouriteBlocEvent value, $Res Function(FavouriteBlocEvent) then) =
      _$FavouriteBlocEventCopyWithImpl<$Res, FavouriteBlocEvent>;
}

/// @nodoc
class _$FavouriteBlocEventCopyWithImpl<$Res, $Val extends FavouriteBlocEvent>
    implements $FavouriteBlocEventCopyWith<$Res> {
  _$FavouriteBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavouriteBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadWishlistProductsEventImplCopyWith<$Res> {
  factory _$$LoadWishlistProductsEventImplCopyWith(
          _$LoadWishlistProductsEventImpl value,
          $Res Function(_$LoadWishlistProductsEventImpl) then) =
      __$$LoadWishlistProductsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadWishlistProductsEventImplCopyWithImpl<$Res>
    extends _$FavouriteBlocEventCopyWithImpl<$Res,
        _$LoadWishlistProductsEventImpl>
    implements _$$LoadWishlistProductsEventImplCopyWith<$Res> {
  __$$LoadWishlistProductsEventImplCopyWithImpl(
      _$LoadWishlistProductsEventImpl _value,
      $Res Function(_$LoadWishlistProductsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavouriteBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadWishlistProductsEventImpl implements LoadWishlistProductsEvent {
  const _$LoadWishlistProductsEventImpl();

  @override
  String toString() {
    return 'FavouriteBlocEvent.loadWishlistProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadWishlistProductsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWishlistProducts,
    required TResult Function(String productId) addProductToWishlist,
    required TResult Function(String productId) removeProductFromWishlist,
    required TResult Function(List<String> productId) addProductsToCart,
  }) {
    return loadWishlistProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWishlistProducts,
    TResult? Function(String productId)? addProductToWishlist,
    TResult? Function(String productId)? removeProductFromWishlist,
    TResult? Function(List<String> productId)? addProductsToCart,
  }) {
    return loadWishlistProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWishlistProducts,
    TResult Function(String productId)? addProductToWishlist,
    TResult Function(String productId)? removeProductFromWishlist,
    TResult Function(List<String> productId)? addProductsToCart,
    required TResult orElse(),
  }) {
    if (loadWishlistProducts != null) {
      return loadWishlistProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWishlistProductsEvent value)
        loadWishlistProducts,
    required TResult Function(AddProductToWishlistEvent value)
        addProductToWishlist,
    required TResult Function(RemoveProductFromWishlistEvent value)
        removeProductFromWishlist,
    required TResult Function(AddProductToCartEvent value) addProductsToCart,
  }) {
    return loadWishlistProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWishlistProductsEvent value)? loadWishlistProducts,
    TResult? Function(AddProductToWishlistEvent value)? addProductToWishlist,
    TResult? Function(RemoveProductFromWishlistEvent value)?
        removeProductFromWishlist,
    TResult? Function(AddProductToCartEvent value)? addProductsToCart,
  }) {
    return loadWishlistProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWishlistProductsEvent value)? loadWishlistProducts,
    TResult Function(AddProductToWishlistEvent value)? addProductToWishlist,
    TResult Function(RemoveProductFromWishlistEvent value)?
        removeProductFromWishlist,
    TResult Function(AddProductToCartEvent value)? addProductsToCart,
    required TResult orElse(),
  }) {
    if (loadWishlistProducts != null) {
      return loadWishlistProducts(this);
    }
    return orElse();
  }
}

abstract class LoadWishlistProductsEvent implements FavouriteBlocEvent {
  const factory LoadWishlistProductsEvent() = _$LoadWishlistProductsEventImpl;
}

/// @nodoc
abstract class _$$AddProductToWishlistEventImplCopyWith<$Res> {
  factory _$$AddProductToWishlistEventImplCopyWith(
          _$AddProductToWishlistEventImpl value,
          $Res Function(_$AddProductToWishlistEventImpl) then) =
      __$$AddProductToWishlistEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$AddProductToWishlistEventImplCopyWithImpl<$Res>
    extends _$FavouriteBlocEventCopyWithImpl<$Res,
        _$AddProductToWishlistEventImpl>
    implements _$$AddProductToWishlistEventImplCopyWith<$Res> {
  __$$AddProductToWishlistEventImplCopyWithImpl(
      _$AddProductToWishlistEventImpl _value,
      $Res Function(_$AddProductToWishlistEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavouriteBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$AddProductToWishlistEventImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProductToWishlistEventImpl implements AddProductToWishlistEvent {
  const _$AddProductToWishlistEventImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'FavouriteBlocEvent.addProductToWishlist(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToWishlistEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of FavouriteBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToWishlistEventImplCopyWith<_$AddProductToWishlistEventImpl>
      get copyWith => __$$AddProductToWishlistEventImplCopyWithImpl<
          _$AddProductToWishlistEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWishlistProducts,
    required TResult Function(String productId) addProductToWishlist,
    required TResult Function(String productId) removeProductFromWishlist,
    required TResult Function(List<String> productId) addProductsToCart,
  }) {
    return addProductToWishlist(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWishlistProducts,
    TResult? Function(String productId)? addProductToWishlist,
    TResult? Function(String productId)? removeProductFromWishlist,
    TResult? Function(List<String> productId)? addProductsToCart,
  }) {
    return addProductToWishlist?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWishlistProducts,
    TResult Function(String productId)? addProductToWishlist,
    TResult Function(String productId)? removeProductFromWishlist,
    TResult Function(List<String> productId)? addProductsToCart,
    required TResult orElse(),
  }) {
    if (addProductToWishlist != null) {
      return addProductToWishlist(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWishlistProductsEvent value)
        loadWishlistProducts,
    required TResult Function(AddProductToWishlistEvent value)
        addProductToWishlist,
    required TResult Function(RemoveProductFromWishlistEvent value)
        removeProductFromWishlist,
    required TResult Function(AddProductToCartEvent value) addProductsToCart,
  }) {
    return addProductToWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWishlistProductsEvent value)? loadWishlistProducts,
    TResult? Function(AddProductToWishlistEvent value)? addProductToWishlist,
    TResult? Function(RemoveProductFromWishlistEvent value)?
        removeProductFromWishlist,
    TResult? Function(AddProductToCartEvent value)? addProductsToCart,
  }) {
    return addProductToWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWishlistProductsEvent value)? loadWishlistProducts,
    TResult Function(AddProductToWishlistEvent value)? addProductToWishlist,
    TResult Function(RemoveProductFromWishlistEvent value)?
        removeProductFromWishlist,
    TResult Function(AddProductToCartEvent value)? addProductsToCart,
    required TResult orElse(),
  }) {
    if (addProductToWishlist != null) {
      return addProductToWishlist(this);
    }
    return orElse();
  }
}

abstract class AddProductToWishlistEvent implements FavouriteBlocEvent {
  const factory AddProductToWishlistEvent(final String productId) =
      _$AddProductToWishlistEventImpl;

  String get productId;

  /// Create a copy of FavouriteBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToWishlistEventImplCopyWith<_$AddProductToWishlistEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductFromWishlistEventImplCopyWith<$Res> {
  factory _$$RemoveProductFromWishlistEventImplCopyWith(
          _$RemoveProductFromWishlistEventImpl value,
          $Res Function(_$RemoveProductFromWishlistEventImpl) then) =
      __$$RemoveProductFromWishlistEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$RemoveProductFromWishlistEventImplCopyWithImpl<$Res>
    extends _$FavouriteBlocEventCopyWithImpl<$Res,
        _$RemoveProductFromWishlistEventImpl>
    implements _$$RemoveProductFromWishlistEventImplCopyWith<$Res> {
  __$$RemoveProductFromWishlistEventImplCopyWithImpl(
      _$RemoveProductFromWishlistEventImpl _value,
      $Res Function(_$RemoveProductFromWishlistEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavouriteBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$RemoveProductFromWishlistEventImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveProductFromWishlistEventImpl
    implements RemoveProductFromWishlistEvent {
  const _$RemoveProductFromWishlistEventImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'FavouriteBlocEvent.removeProductFromWishlist(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProductFromWishlistEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of FavouriteBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveProductFromWishlistEventImplCopyWith<
          _$RemoveProductFromWishlistEventImpl>
      get copyWith => __$$RemoveProductFromWishlistEventImplCopyWithImpl<
          _$RemoveProductFromWishlistEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWishlistProducts,
    required TResult Function(String productId) addProductToWishlist,
    required TResult Function(String productId) removeProductFromWishlist,
    required TResult Function(List<String> productId) addProductsToCart,
  }) {
    return removeProductFromWishlist(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWishlistProducts,
    TResult? Function(String productId)? addProductToWishlist,
    TResult? Function(String productId)? removeProductFromWishlist,
    TResult? Function(List<String> productId)? addProductsToCart,
  }) {
    return removeProductFromWishlist?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWishlistProducts,
    TResult Function(String productId)? addProductToWishlist,
    TResult Function(String productId)? removeProductFromWishlist,
    TResult Function(List<String> productId)? addProductsToCart,
    required TResult orElse(),
  }) {
    if (removeProductFromWishlist != null) {
      return removeProductFromWishlist(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWishlistProductsEvent value)
        loadWishlistProducts,
    required TResult Function(AddProductToWishlistEvent value)
        addProductToWishlist,
    required TResult Function(RemoveProductFromWishlistEvent value)
        removeProductFromWishlist,
    required TResult Function(AddProductToCartEvent value) addProductsToCart,
  }) {
    return removeProductFromWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWishlistProductsEvent value)? loadWishlistProducts,
    TResult? Function(AddProductToWishlistEvent value)? addProductToWishlist,
    TResult? Function(RemoveProductFromWishlistEvent value)?
        removeProductFromWishlist,
    TResult? Function(AddProductToCartEvent value)? addProductsToCart,
  }) {
    return removeProductFromWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWishlistProductsEvent value)? loadWishlistProducts,
    TResult Function(AddProductToWishlistEvent value)? addProductToWishlist,
    TResult Function(RemoveProductFromWishlistEvent value)?
        removeProductFromWishlist,
    TResult Function(AddProductToCartEvent value)? addProductsToCart,
    required TResult orElse(),
  }) {
    if (removeProductFromWishlist != null) {
      return removeProductFromWishlist(this);
    }
    return orElse();
  }
}

abstract class RemoveProductFromWishlistEvent implements FavouriteBlocEvent {
  const factory RemoveProductFromWishlistEvent(final String productId) =
      _$RemoveProductFromWishlistEventImpl;

  String get productId;

  /// Create a copy of FavouriteBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveProductFromWishlistEventImplCopyWith<
          _$RemoveProductFromWishlistEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductToCartEventImplCopyWith<$Res> {
  factory _$$AddProductToCartEventImplCopyWith(
          _$AddProductToCartEventImpl value,
          $Res Function(_$AddProductToCartEventImpl) then) =
      __$$AddProductToCartEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> productId});
}

/// @nodoc
class __$$AddProductToCartEventImplCopyWithImpl<$Res>
    extends _$FavouriteBlocEventCopyWithImpl<$Res, _$AddProductToCartEventImpl>
    implements _$$AddProductToCartEventImplCopyWith<$Res> {
  __$$AddProductToCartEventImplCopyWithImpl(_$AddProductToCartEventImpl _value,
      $Res Function(_$AddProductToCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavouriteBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$AddProductToCartEventImpl(
      null == productId
          ? _value._productId
          : productId // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$AddProductToCartEventImpl implements AddProductToCartEvent {
  const _$AddProductToCartEventImpl(final List<String> productId)
      : _productId = productId;

  final List<String> _productId;
  @override
  List<String> get productId {
    if (_productId is EqualUnmodifiableListView) return _productId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productId);
  }

  @override
  String toString() {
    return 'FavouriteBlocEvent.addProductsToCart(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartEventImpl &&
            const DeepCollectionEquality()
                .equals(other._productId, _productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_productId));

  /// Create a copy of FavouriteBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartEventImplCopyWith<_$AddProductToCartEventImpl>
      get copyWith => __$$AddProductToCartEventImplCopyWithImpl<
          _$AddProductToCartEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadWishlistProducts,
    required TResult Function(String productId) addProductToWishlist,
    required TResult Function(String productId) removeProductFromWishlist,
    required TResult Function(List<String> productId) addProductsToCart,
  }) {
    return addProductsToCart(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadWishlistProducts,
    TResult? Function(String productId)? addProductToWishlist,
    TResult? Function(String productId)? removeProductFromWishlist,
    TResult? Function(List<String> productId)? addProductsToCart,
  }) {
    return addProductsToCart?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadWishlistProducts,
    TResult Function(String productId)? addProductToWishlist,
    TResult Function(String productId)? removeProductFromWishlist,
    TResult Function(List<String> productId)? addProductsToCart,
    required TResult orElse(),
  }) {
    if (addProductsToCart != null) {
      return addProductsToCart(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadWishlistProductsEvent value)
        loadWishlistProducts,
    required TResult Function(AddProductToWishlistEvent value)
        addProductToWishlist,
    required TResult Function(RemoveProductFromWishlistEvent value)
        removeProductFromWishlist,
    required TResult Function(AddProductToCartEvent value) addProductsToCart,
  }) {
    return addProductsToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadWishlistProductsEvent value)? loadWishlistProducts,
    TResult? Function(AddProductToWishlistEvent value)? addProductToWishlist,
    TResult? Function(RemoveProductFromWishlistEvent value)?
        removeProductFromWishlist,
    TResult? Function(AddProductToCartEvent value)? addProductsToCart,
  }) {
    return addProductsToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadWishlistProductsEvent value)? loadWishlistProducts,
    TResult Function(AddProductToWishlistEvent value)? addProductToWishlist,
    TResult Function(RemoveProductFromWishlistEvent value)?
        removeProductFromWishlist,
    TResult Function(AddProductToCartEvent value)? addProductsToCart,
    required TResult orElse(),
  }) {
    if (addProductsToCart != null) {
      return addProductsToCart(this);
    }
    return orElse();
  }
}

abstract class AddProductToCartEvent implements FavouriteBlocEvent {
  const factory AddProductToCartEvent(final List<String> productId) =
      _$AddProductToCartEventImpl;

  List<String> get productId;

  /// Create a copy of FavouriteBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToCartEventImplCopyWith<_$AddProductToCartEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
