// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCategoriesBlocEvent value) loadCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCategoriesBlocEvent value)? loadCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCategoriesBlocEvent value)? loadCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesBlocEventCopyWith<$Res> {
  factory $CategoriesBlocEventCopyWith(
          CategoriesBlocEvent value, $Res Function(CategoriesBlocEvent) then) =
      _$CategoriesBlocEventCopyWithImpl<$Res, CategoriesBlocEvent>;
}

/// @nodoc
class _$CategoriesBlocEventCopyWithImpl<$Res, $Val extends CategoriesBlocEvent>
    implements $CategoriesBlocEventCopyWith<$Res> {
  _$CategoriesBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoriesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadCategoriesBlocEventImplCopyWith<$Res> {
  factory _$$LoadCategoriesBlocEventImplCopyWith(
          _$LoadCategoriesBlocEventImpl value,
          $Res Function(_$LoadCategoriesBlocEventImpl) then) =
      __$$LoadCategoriesBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCategoriesBlocEventImplCopyWithImpl<$Res>
    extends _$CategoriesBlocEventCopyWithImpl<$Res,
        _$LoadCategoriesBlocEventImpl>
    implements _$$LoadCategoriesBlocEventImplCopyWith<$Res> {
  __$$LoadCategoriesBlocEventImplCopyWithImpl(
      _$LoadCategoriesBlocEventImpl _value,
      $Res Function(_$LoadCategoriesBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoriesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadCategoriesBlocEventImpl implements LoadCategoriesBlocEvent {
  const _$LoadCategoriesBlocEventImpl();

  @override
  String toString() {
    return 'CategoriesBlocEvent.loadCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCategoriesBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadCategories,
  }) {
    return loadCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadCategories,
  }) {
    return loadCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadCategories,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadCategoriesBlocEvent value) loadCategories,
  }) {
    return loadCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadCategoriesBlocEvent value)? loadCategories,
  }) {
    return loadCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadCategoriesBlocEvent value)? loadCategories,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories(this);
    }
    return orElse();
  }
}

abstract class LoadCategoriesBlocEvent implements CategoriesBlocEvent {
  const factory LoadCategoriesBlocEvent() = _$LoadCategoriesBlocEventImpl;
}
