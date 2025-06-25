// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromoBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPromo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadPromo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPromo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPromoBlocEvent value) loadPromo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPromoBlocEvent value)? loadPromo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPromoBlocEvent value)? loadPromo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromoBlocEventCopyWith<$Res> {
  factory $PromoBlocEventCopyWith(
          PromoBlocEvent value, $Res Function(PromoBlocEvent) then) =
      _$PromoBlocEventCopyWithImpl<$Res, PromoBlocEvent>;
}

/// @nodoc
class _$PromoBlocEventCopyWithImpl<$Res, $Val extends PromoBlocEvent>
    implements $PromoBlocEventCopyWith<$Res> {
  _$PromoBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PromoBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadPromoBlocEventImplCopyWith<$Res> {
  factory _$$LoadPromoBlocEventImplCopyWith(_$LoadPromoBlocEventImpl value,
          $Res Function(_$LoadPromoBlocEventImpl) then) =
      __$$LoadPromoBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadPromoBlocEventImplCopyWithImpl<$Res>
    extends _$PromoBlocEventCopyWithImpl<$Res, _$LoadPromoBlocEventImpl>
    implements _$$LoadPromoBlocEventImplCopyWith<$Res> {
  __$$LoadPromoBlocEventImplCopyWithImpl(_$LoadPromoBlocEventImpl _value,
      $Res Function(_$LoadPromoBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PromoBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadPromoBlocEventImpl implements LoadPromoBlocEvent {
  const _$LoadPromoBlocEventImpl();

  @override
  String toString() {
    return 'PromoBlocEvent.loadPromo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadPromoBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPromo,
  }) {
    return loadPromo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadPromo,
  }) {
    return loadPromo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPromo,
    required TResult orElse(),
  }) {
    if (loadPromo != null) {
      return loadPromo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPromoBlocEvent value) loadPromo,
  }) {
    return loadPromo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPromoBlocEvent value)? loadPromo,
  }) {
    return loadPromo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPromoBlocEvent value)? loadPromo,
    required TResult orElse(),
  }) {
    if (loadPromo != null) {
      return loadPromo(this);
    }
    return orElse();
  }
}

abstract class LoadPromoBlocEvent implements PromoBlocEvent {
  const factory LoadPromoBlocEvent() = _$LoadPromoBlocEventImpl;
}
