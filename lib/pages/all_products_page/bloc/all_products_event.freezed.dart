// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_products_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllProductsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitialProducts,
    required TResult Function() loadMoreProdocts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitialProducts,
    TResult? Function()? loadMoreProdocts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitialProducts,
    TResult Function()? loadMoreProdocts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialProducts value) loadInitialProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProdocts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialProducts value)? loadInitialProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProdocts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialProducts value)? loadInitialProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProdocts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductsEventCopyWith<$Res> {
  factory $AllProductsEventCopyWith(
          AllProductsEvent value, $Res Function(AllProductsEvent) then) =
      _$AllProductsEventCopyWithImpl<$Res, AllProductsEvent>;
}

/// @nodoc
class _$AllProductsEventCopyWithImpl<$Res, $Val extends AllProductsEvent>
    implements $AllProductsEventCopyWith<$Res> {
  _$AllProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadInitialProductsImplCopyWith<$Res> {
  factory _$$LoadInitialProductsImplCopyWith(_$LoadInitialProductsImpl value,
          $Res Function(_$LoadInitialProductsImpl) then) =
      __$$LoadInitialProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInitialProductsImplCopyWithImpl<$Res>
    extends _$AllProductsEventCopyWithImpl<$Res, _$LoadInitialProductsImpl>
    implements _$$LoadInitialProductsImplCopyWith<$Res> {
  __$$LoadInitialProductsImplCopyWithImpl(_$LoadInitialProductsImpl _value,
      $Res Function(_$LoadInitialProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadInitialProductsImpl implements LoadInitialProducts {
  const _$LoadInitialProductsImpl();

  @override
  String toString() {
    return 'AllProductsEvent.loadInitialProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInitialProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitialProducts,
    required TResult Function() loadMoreProdocts,
  }) {
    return loadInitialProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitialProducts,
    TResult? Function()? loadMoreProdocts,
  }) {
    return loadInitialProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitialProducts,
    TResult Function()? loadMoreProdocts,
    required TResult orElse(),
  }) {
    if (loadInitialProducts != null) {
      return loadInitialProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialProducts value) loadInitialProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProdocts,
  }) {
    return loadInitialProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialProducts value)? loadInitialProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProdocts,
  }) {
    return loadInitialProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialProducts value)? loadInitialProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProdocts,
    required TResult orElse(),
  }) {
    if (loadInitialProducts != null) {
      return loadInitialProducts(this);
    }
    return orElse();
  }
}

abstract class LoadInitialProducts implements AllProductsEvent {
  const factory LoadInitialProducts() = _$LoadInitialProductsImpl;
}

/// @nodoc
abstract class _$$LoadMoreProductsImplCopyWith<$Res> {
  factory _$$LoadMoreProductsImplCopyWith(_$LoadMoreProductsImpl value,
          $Res Function(_$LoadMoreProductsImpl) then) =
      __$$LoadMoreProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreProductsImplCopyWithImpl<$Res>
    extends _$AllProductsEventCopyWithImpl<$Res, _$LoadMoreProductsImpl>
    implements _$$LoadMoreProductsImplCopyWith<$Res> {
  __$$LoadMoreProductsImplCopyWithImpl(_$LoadMoreProductsImpl _value,
      $Res Function(_$LoadMoreProductsImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllProductsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreProductsImpl implements LoadMoreProducts {
  const _$LoadMoreProductsImpl();

  @override
  String toString() {
    return 'AllProductsEvent.loadMoreProdocts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInitialProducts,
    required TResult Function() loadMoreProdocts,
  }) {
    return loadMoreProdocts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInitialProducts,
    TResult? Function()? loadMoreProdocts,
  }) {
    return loadMoreProdocts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInitialProducts,
    TResult Function()? loadMoreProdocts,
    required TResult orElse(),
  }) {
    if (loadMoreProdocts != null) {
      return loadMoreProdocts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInitialProducts value) loadInitialProducts,
    required TResult Function(LoadMoreProducts value) loadMoreProdocts,
  }) {
    return loadMoreProdocts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInitialProducts value)? loadInitialProducts,
    TResult? Function(LoadMoreProducts value)? loadMoreProdocts,
  }) {
    return loadMoreProdocts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInitialProducts value)? loadInitialProducts,
    TResult Function(LoadMoreProducts value)? loadMoreProdocts,
    required TResult orElse(),
  }) {
    if (loadMoreProdocts != null) {
      return loadMoreProdocts(this);
    }
    return orElse();
  }
}

abstract class LoadMoreProducts implements AllProductsEvent {
  const factory LoadMoreProducts() = _$LoadMoreProductsImpl;
}
