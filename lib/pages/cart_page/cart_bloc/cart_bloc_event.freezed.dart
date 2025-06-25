// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartlistProducts,
    required TResult Function(String productId, String colorId, int count)
        addProductToCartlist,
    required TResult Function(String productId) removeProductFromCartlist,
    required TResult Function(String productId) addProductQuantity,
    required TResult Function(String productId) removeProductQuantity,
    required TResult Function() clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartlistProducts,
    TResult? Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult? Function(String productId)? removeProductFromCartlist,
    TResult? Function(String productId)? addProductQuantity,
    TResult? Function(String productId)? removeProductQuantity,
    TResult? Function()? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartlistProducts,
    TResult Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult Function(String productId)? removeProductFromCartlist,
    TResult Function(String productId)? addProductQuantity,
    TResult Function(String productId)? removeProductQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartlistProductsEvent value)
        loadCartlistProducts,
    required TResult Function(AddProductToCartlistEvent value)
        addProductToCartlist,
    required TResult Function(RemoveProductFromCartlistEvent value)
        removeProductFromCartlist,
    required TResult Function(AddProductQuantityEvent value) addProductQuantity,
    required TResult Function(RemoveProductQuantityEvent value)
        removeProductQuantity,
    required TResult Function(ClearCartEvent value) clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult? Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult? Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult? Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult? Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult? Function(ClearCartEvent value)? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult Function(ClearCartEvent value)? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartBlocEventCopyWith<$Res> {
  factory $CartBlocEventCopyWith(
          CartBlocEvent value, $Res Function(CartBlocEvent) then) =
      _$CartBlocEventCopyWithImpl<$Res, CartBlocEvent>;
}

/// @nodoc
class _$CartBlocEventCopyWithImpl<$Res, $Val extends CartBlocEvent>
    implements $CartBlocEventCopyWith<$Res> {
  _$CartBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadCartlistProductsEventImplCopyWith<$Res> {
  factory _$$LoadCartlistProductsEventImplCopyWith(
          _$LoadCartlistProductsEventImpl value,
          $Res Function(_$LoadCartlistProductsEventImpl) then) =
      __$$LoadCartlistProductsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCartlistProductsEventImplCopyWithImpl<$Res>
    extends _$CartBlocEventCopyWithImpl<$Res, _$LoadCartlistProductsEventImpl>
    implements _$$LoadCartlistProductsEventImplCopyWith<$Res> {
  __$$LoadCartlistProductsEventImplCopyWithImpl(
      _$LoadCartlistProductsEventImpl _value,
      $Res Function(_$LoadCartlistProductsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadCartlistProductsEventImpl implements LoadCartlistProductsEvent {
  const _$LoadCartlistProductsEventImpl();

  @override
  String toString() {
    return 'CartBlocEvent.loadCartlistProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCartlistProductsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartlistProducts,
    required TResult Function(String productId, String colorId, int count)
        addProductToCartlist,
    required TResult Function(String productId) removeProductFromCartlist,
    required TResult Function(String productId) addProductQuantity,
    required TResult Function(String productId) removeProductQuantity,
    required TResult Function() clearCart,
  }) {
    return loadCartlistProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartlistProducts,
    TResult? Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult? Function(String productId)? removeProductFromCartlist,
    TResult? Function(String productId)? addProductQuantity,
    TResult? Function(String productId)? removeProductQuantity,
    TResult? Function()? clearCart,
  }) {
    return loadCartlistProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartlistProducts,
    TResult Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult Function(String productId)? removeProductFromCartlist,
    TResult Function(String productId)? addProductQuantity,
    TResult Function(String productId)? removeProductQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (loadCartlistProducts != null) {
      return loadCartlistProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartlistProductsEvent value)
        loadCartlistProducts,
    required TResult Function(AddProductToCartlistEvent value)
        addProductToCartlist,
    required TResult Function(RemoveProductFromCartlistEvent value)
        removeProductFromCartlist,
    required TResult Function(AddProductQuantityEvent value) addProductQuantity,
    required TResult Function(RemoveProductQuantityEvent value)
        removeProductQuantity,
    required TResult Function(ClearCartEvent value) clearCart,
  }) {
    return loadCartlistProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult? Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult? Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult? Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult? Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult? Function(ClearCartEvent value)? clearCart,
  }) {
    return loadCartlistProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult Function(ClearCartEvent value)? clearCart,
    required TResult orElse(),
  }) {
    if (loadCartlistProducts != null) {
      return loadCartlistProducts(this);
    }
    return orElse();
  }
}

abstract class LoadCartlistProductsEvent implements CartBlocEvent {
  const factory LoadCartlistProductsEvent() = _$LoadCartlistProductsEventImpl;
}

/// @nodoc
abstract class _$$AddProductToCartlistEventImplCopyWith<$Res> {
  factory _$$AddProductToCartlistEventImplCopyWith(
          _$AddProductToCartlistEventImpl value,
          $Res Function(_$AddProductToCartlistEventImpl) then) =
      __$$AddProductToCartlistEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId, String colorId, int count});
}

/// @nodoc
class __$$AddProductToCartlistEventImplCopyWithImpl<$Res>
    extends _$CartBlocEventCopyWithImpl<$Res, _$AddProductToCartlistEventImpl>
    implements _$$AddProductToCartlistEventImplCopyWith<$Res> {
  __$$AddProductToCartlistEventImplCopyWithImpl(
      _$AddProductToCartlistEventImpl _value,
      $Res Function(_$AddProductToCartlistEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? colorId = null,
    Object? count = null,
  }) {
    return _then(_$AddProductToCartlistEventImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      null == colorId
          ? _value.colorId
          : colorId // ignore: cast_nullable_to_non_nullable
              as String,
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddProductToCartlistEventImpl implements AddProductToCartlistEvent {
  const _$AddProductToCartlistEventImpl(
      this.productId, this.colorId, this.count);

  @override
  final String productId;
  @override
  final String colorId;
  @override
  final int count;

  @override
  String toString() {
    return 'CartBlocEvent.addProductToCartlist(productId: $productId, colorId: $colorId, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductToCartlistEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.colorId, colorId) || other.colorId == colorId) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, colorId, count);

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductToCartlistEventImplCopyWith<_$AddProductToCartlistEventImpl>
      get copyWith => __$$AddProductToCartlistEventImplCopyWithImpl<
          _$AddProductToCartlistEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartlistProducts,
    required TResult Function(String productId, String colorId, int count)
        addProductToCartlist,
    required TResult Function(String productId) removeProductFromCartlist,
    required TResult Function(String productId) addProductQuantity,
    required TResult Function(String productId) removeProductQuantity,
    required TResult Function() clearCart,
  }) {
    return addProductToCartlist(productId, colorId, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartlistProducts,
    TResult? Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult? Function(String productId)? removeProductFromCartlist,
    TResult? Function(String productId)? addProductQuantity,
    TResult? Function(String productId)? removeProductQuantity,
    TResult? Function()? clearCart,
  }) {
    return addProductToCartlist?.call(productId, colorId, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartlistProducts,
    TResult Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult Function(String productId)? removeProductFromCartlist,
    TResult Function(String productId)? addProductQuantity,
    TResult Function(String productId)? removeProductQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (addProductToCartlist != null) {
      return addProductToCartlist(productId, colorId, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartlistProductsEvent value)
        loadCartlistProducts,
    required TResult Function(AddProductToCartlistEvent value)
        addProductToCartlist,
    required TResult Function(RemoveProductFromCartlistEvent value)
        removeProductFromCartlist,
    required TResult Function(AddProductQuantityEvent value) addProductQuantity,
    required TResult Function(RemoveProductQuantityEvent value)
        removeProductQuantity,
    required TResult Function(ClearCartEvent value) clearCart,
  }) {
    return addProductToCartlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult? Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult? Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult? Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult? Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult? Function(ClearCartEvent value)? clearCart,
  }) {
    return addProductToCartlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult Function(ClearCartEvent value)? clearCart,
    required TResult orElse(),
  }) {
    if (addProductToCartlist != null) {
      return addProductToCartlist(this);
    }
    return orElse();
  }
}

abstract class AddProductToCartlistEvent implements CartBlocEvent {
  const factory AddProductToCartlistEvent(
          final String productId, final String colorId, final int count) =
      _$AddProductToCartlistEventImpl;

  String get productId;
  String get colorId;
  int get count;

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductToCartlistEventImplCopyWith<_$AddProductToCartlistEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductFromCartlistEventImplCopyWith<$Res> {
  factory _$$RemoveProductFromCartlistEventImplCopyWith(
          _$RemoveProductFromCartlistEventImpl value,
          $Res Function(_$RemoveProductFromCartlistEventImpl) then) =
      __$$RemoveProductFromCartlistEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$RemoveProductFromCartlistEventImplCopyWithImpl<$Res>
    extends _$CartBlocEventCopyWithImpl<$Res,
        _$RemoveProductFromCartlistEventImpl>
    implements _$$RemoveProductFromCartlistEventImplCopyWith<$Res> {
  __$$RemoveProductFromCartlistEventImplCopyWithImpl(
      _$RemoveProductFromCartlistEventImpl _value,
      $Res Function(_$RemoveProductFromCartlistEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$RemoveProductFromCartlistEventImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveProductFromCartlistEventImpl
    implements RemoveProductFromCartlistEvent {
  const _$RemoveProductFromCartlistEventImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'CartBlocEvent.removeProductFromCartlist(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProductFromCartlistEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveProductFromCartlistEventImplCopyWith<
          _$RemoveProductFromCartlistEventImpl>
      get copyWith => __$$RemoveProductFromCartlistEventImplCopyWithImpl<
          _$RemoveProductFromCartlistEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartlistProducts,
    required TResult Function(String productId, String colorId, int count)
        addProductToCartlist,
    required TResult Function(String productId) removeProductFromCartlist,
    required TResult Function(String productId) addProductQuantity,
    required TResult Function(String productId) removeProductQuantity,
    required TResult Function() clearCart,
  }) {
    return removeProductFromCartlist(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartlistProducts,
    TResult? Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult? Function(String productId)? removeProductFromCartlist,
    TResult? Function(String productId)? addProductQuantity,
    TResult? Function(String productId)? removeProductQuantity,
    TResult? Function()? clearCart,
  }) {
    return removeProductFromCartlist?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartlistProducts,
    TResult Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult Function(String productId)? removeProductFromCartlist,
    TResult Function(String productId)? addProductQuantity,
    TResult Function(String productId)? removeProductQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (removeProductFromCartlist != null) {
      return removeProductFromCartlist(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartlistProductsEvent value)
        loadCartlistProducts,
    required TResult Function(AddProductToCartlistEvent value)
        addProductToCartlist,
    required TResult Function(RemoveProductFromCartlistEvent value)
        removeProductFromCartlist,
    required TResult Function(AddProductQuantityEvent value) addProductQuantity,
    required TResult Function(RemoveProductQuantityEvent value)
        removeProductQuantity,
    required TResult Function(ClearCartEvent value) clearCart,
  }) {
    return removeProductFromCartlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult? Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult? Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult? Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult? Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult? Function(ClearCartEvent value)? clearCart,
  }) {
    return removeProductFromCartlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult Function(ClearCartEvent value)? clearCart,
    required TResult orElse(),
  }) {
    if (removeProductFromCartlist != null) {
      return removeProductFromCartlist(this);
    }
    return orElse();
  }
}

abstract class RemoveProductFromCartlistEvent implements CartBlocEvent {
  const factory RemoveProductFromCartlistEvent(final String productId) =
      _$RemoveProductFromCartlistEventImpl;

  String get productId;

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveProductFromCartlistEventImplCopyWith<
          _$RemoveProductFromCartlistEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddProductQuantityEventImplCopyWith<$Res> {
  factory _$$AddProductQuantityEventImplCopyWith(
          _$AddProductQuantityEventImpl value,
          $Res Function(_$AddProductQuantityEventImpl) then) =
      __$$AddProductQuantityEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$AddProductQuantityEventImplCopyWithImpl<$Res>
    extends _$CartBlocEventCopyWithImpl<$Res, _$AddProductQuantityEventImpl>
    implements _$$AddProductQuantityEventImplCopyWith<$Res> {
  __$$AddProductQuantityEventImplCopyWithImpl(
      _$AddProductQuantityEventImpl _value,
      $Res Function(_$AddProductQuantityEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$AddProductQuantityEventImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddProductQuantityEventImpl implements AddProductQuantityEvent {
  const _$AddProductQuantityEventImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'CartBlocEvent.addProductQuantity(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductQuantityEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductQuantityEventImplCopyWith<_$AddProductQuantityEventImpl>
      get copyWith => __$$AddProductQuantityEventImplCopyWithImpl<
          _$AddProductQuantityEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartlistProducts,
    required TResult Function(String productId, String colorId, int count)
        addProductToCartlist,
    required TResult Function(String productId) removeProductFromCartlist,
    required TResult Function(String productId) addProductQuantity,
    required TResult Function(String productId) removeProductQuantity,
    required TResult Function() clearCart,
  }) {
    return addProductQuantity(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartlistProducts,
    TResult? Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult? Function(String productId)? removeProductFromCartlist,
    TResult? Function(String productId)? addProductQuantity,
    TResult? Function(String productId)? removeProductQuantity,
    TResult? Function()? clearCart,
  }) {
    return addProductQuantity?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartlistProducts,
    TResult Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult Function(String productId)? removeProductFromCartlist,
    TResult Function(String productId)? addProductQuantity,
    TResult Function(String productId)? removeProductQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (addProductQuantity != null) {
      return addProductQuantity(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartlistProductsEvent value)
        loadCartlistProducts,
    required TResult Function(AddProductToCartlistEvent value)
        addProductToCartlist,
    required TResult Function(RemoveProductFromCartlistEvent value)
        removeProductFromCartlist,
    required TResult Function(AddProductQuantityEvent value) addProductQuantity,
    required TResult Function(RemoveProductQuantityEvent value)
        removeProductQuantity,
    required TResult Function(ClearCartEvent value) clearCart,
  }) {
    return addProductQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult? Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult? Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult? Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult? Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult? Function(ClearCartEvent value)? clearCart,
  }) {
    return addProductQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult Function(ClearCartEvent value)? clearCart,
    required TResult orElse(),
  }) {
    if (addProductQuantity != null) {
      return addProductQuantity(this);
    }
    return orElse();
  }
}

abstract class AddProductQuantityEvent implements CartBlocEvent {
  const factory AddProductQuantityEvent(final String productId) =
      _$AddProductQuantityEventImpl;

  String get productId;

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductQuantityEventImplCopyWith<_$AddProductQuantityEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProductQuantityEventImplCopyWith<$Res> {
  factory _$$RemoveProductQuantityEventImplCopyWith(
          _$RemoveProductQuantityEventImpl value,
          $Res Function(_$RemoveProductQuantityEventImpl) then) =
      __$$RemoveProductQuantityEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$RemoveProductQuantityEventImplCopyWithImpl<$Res>
    extends _$CartBlocEventCopyWithImpl<$Res, _$RemoveProductQuantityEventImpl>
    implements _$$RemoveProductQuantityEventImplCopyWith<$Res> {
  __$$RemoveProductQuantityEventImplCopyWithImpl(
      _$RemoveProductQuantityEventImpl _value,
      $Res Function(_$RemoveProductQuantityEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$RemoveProductQuantityEventImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveProductQuantityEventImpl implements RemoveProductQuantityEvent {
  const _$RemoveProductQuantityEventImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'CartBlocEvent.removeProductQuantity(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProductQuantityEventImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveProductQuantityEventImplCopyWith<_$RemoveProductQuantityEventImpl>
      get copyWith => __$$RemoveProductQuantityEventImplCopyWithImpl<
          _$RemoveProductQuantityEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartlistProducts,
    required TResult Function(String productId, String colorId, int count)
        addProductToCartlist,
    required TResult Function(String productId) removeProductFromCartlist,
    required TResult Function(String productId) addProductQuantity,
    required TResult Function(String productId) removeProductQuantity,
    required TResult Function() clearCart,
  }) {
    return removeProductQuantity(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartlistProducts,
    TResult? Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult? Function(String productId)? removeProductFromCartlist,
    TResult? Function(String productId)? addProductQuantity,
    TResult? Function(String productId)? removeProductQuantity,
    TResult? Function()? clearCart,
  }) {
    return removeProductQuantity?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartlistProducts,
    TResult Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult Function(String productId)? removeProductFromCartlist,
    TResult Function(String productId)? addProductQuantity,
    TResult Function(String productId)? removeProductQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (removeProductQuantity != null) {
      return removeProductQuantity(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartlistProductsEvent value)
        loadCartlistProducts,
    required TResult Function(AddProductToCartlistEvent value)
        addProductToCartlist,
    required TResult Function(RemoveProductFromCartlistEvent value)
        removeProductFromCartlist,
    required TResult Function(AddProductQuantityEvent value) addProductQuantity,
    required TResult Function(RemoveProductQuantityEvent value)
        removeProductQuantity,
    required TResult Function(ClearCartEvent value) clearCart,
  }) {
    return removeProductQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult? Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult? Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult? Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult? Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult? Function(ClearCartEvent value)? clearCart,
  }) {
    return removeProductQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult Function(ClearCartEvent value)? clearCart,
    required TResult orElse(),
  }) {
    if (removeProductQuantity != null) {
      return removeProductQuantity(this);
    }
    return orElse();
  }
}

abstract class RemoveProductQuantityEvent implements CartBlocEvent {
  const factory RemoveProductQuantityEvent(final String productId) =
      _$RemoveProductQuantityEventImpl;

  String get productId;

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveProductQuantityEventImplCopyWith<_$RemoveProductQuantityEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCartEventImplCopyWith<$Res> {
  factory _$$ClearCartEventImplCopyWith(_$ClearCartEventImpl value,
          $Res Function(_$ClearCartEventImpl) then) =
      __$$ClearCartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCartEventImplCopyWithImpl<$Res>
    extends _$CartBlocEventCopyWithImpl<$Res, _$ClearCartEventImpl>
    implements _$$ClearCartEventImplCopyWith<$Res> {
  __$$ClearCartEventImplCopyWithImpl(
      _$ClearCartEventImpl _value, $Res Function(_$ClearCartEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCartEventImpl implements ClearCartEvent {
  const _$ClearCartEventImpl();

  @override
  String toString() {
    return 'CartBlocEvent.clearCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCartlistProducts,
    required TResult Function(String productId, String colorId, int count)
        addProductToCartlist,
    required TResult Function(String productId) removeProductFromCartlist,
    required TResult Function(String productId) addProductQuantity,
    required TResult Function(String productId) removeProductQuantity,
    required TResult Function() clearCart,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCartlistProducts,
    TResult? Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult? Function(String productId)? removeProductFromCartlist,
    TResult? Function(String productId)? addProductQuantity,
    TResult? Function(String productId)? removeProductQuantity,
    TResult? Function()? clearCart,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCartlistProducts,
    TResult Function(String productId, String colorId, int count)?
        addProductToCartlist,
    TResult Function(String productId)? removeProductFromCartlist,
    TResult Function(String productId)? addProductQuantity,
    TResult Function(String productId)? removeProductQuantity,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCartlistProductsEvent value)
        loadCartlistProducts,
    required TResult Function(AddProductToCartlistEvent value)
        addProductToCartlist,
    required TResult Function(RemoveProductFromCartlistEvent value)
        removeProductFromCartlist,
    required TResult Function(AddProductQuantityEvent value) addProductQuantity,
    required TResult Function(RemoveProductQuantityEvent value)
        removeProductQuantity,
    required TResult Function(ClearCartEvent value) clearCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult? Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult? Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult? Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult? Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult? Function(ClearCartEvent value)? clearCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCartlistProductsEvent value)? loadCartlistProducts,
    TResult Function(AddProductToCartlistEvent value)? addProductToCartlist,
    TResult Function(RemoveProductFromCartlistEvent value)?
        removeProductFromCartlist,
    TResult Function(AddProductQuantityEvent value)? addProductQuantity,
    TResult Function(RemoveProductQuantityEvent value)? removeProductQuantity,
    TResult Function(ClearCartEvent value)? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class ClearCartEvent implements CartBlocEvent {
  const factory ClearCartEvent() = _$ClearCartEventImpl;
}
