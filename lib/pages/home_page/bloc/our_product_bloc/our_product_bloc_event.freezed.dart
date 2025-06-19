// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'our_product_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OurProductBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOurProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOurProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOurProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOurProductsProductEvent value)
        loadOurProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOurProductsProductEvent value)? loadOurProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOurProductsProductEvent value)? loadOurProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OurProductBlocEventCopyWith<$Res> {
  factory $OurProductBlocEventCopyWith(
          OurProductBlocEvent value, $Res Function(OurProductBlocEvent) then) =
      _$OurProductBlocEventCopyWithImpl<$Res, OurProductBlocEvent>;
}

/// @nodoc
class _$OurProductBlocEventCopyWithImpl<$Res, $Val extends OurProductBlocEvent>
    implements $OurProductBlocEventCopyWith<$Res> {
  _$OurProductBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OurProductBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadOurProductsProductEventImplCopyWith<$Res> {
  factory _$$LoadOurProductsProductEventImplCopyWith(
          _$LoadOurProductsProductEventImpl value,
          $Res Function(_$LoadOurProductsProductEventImpl) then) =
      __$$LoadOurProductsProductEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadOurProductsProductEventImplCopyWithImpl<$Res>
    extends _$OurProductBlocEventCopyWithImpl<$Res,
        _$LoadOurProductsProductEventImpl>
    implements _$$LoadOurProductsProductEventImplCopyWith<$Res> {
  __$$LoadOurProductsProductEventImplCopyWithImpl(
      _$LoadOurProductsProductEventImpl _value,
      $Res Function(_$LoadOurProductsProductEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OurProductBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadOurProductsProductEventImpl implements LoadOurProductsProductEvent {
  const _$LoadOurProductsProductEventImpl();

  @override
  String toString() {
    return 'OurProductBlocEvent.loadOurProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadOurProductsProductEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadOurProducts,
  }) {
    return loadOurProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadOurProducts,
  }) {
    return loadOurProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadOurProducts,
    required TResult orElse(),
  }) {
    if (loadOurProducts != null) {
      return loadOurProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadOurProductsProductEvent value)
        loadOurProducts,
  }) {
    return loadOurProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadOurProductsProductEvent value)? loadOurProducts,
  }) {
    return loadOurProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadOurProductsProductEvent value)? loadOurProducts,
    required TResult orElse(),
  }) {
    if (loadOurProducts != null) {
      return loadOurProducts(this);
    }
    return orElse();
  }
}

abstract class LoadOurProductsProductEvent implements OurProductBlocEvent {
  const factory LoadOurProductsProductEvent() =
      _$LoadOurProductsProductEventImpl;
}
