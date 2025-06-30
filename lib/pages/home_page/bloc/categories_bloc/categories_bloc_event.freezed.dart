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
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get refresh => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize, bool refresh)
        loadCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize, bool refresh)? loadCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, bool refresh)? loadCategories,
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

  /// Create a copy of CategoriesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesBlocEventCopyWith<CategoriesBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesBlocEventCopyWith<$Res> {
  factory $CategoriesBlocEventCopyWith(
          CategoriesBlocEvent value, $Res Function(CategoriesBlocEvent) then) =
      _$CategoriesBlocEventCopyWithImpl<$Res, CategoriesBlocEvent>;
  @useResult
  $Res call({int page, int pageSize, bool refresh});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadCategoriesBlocEventImplCopyWith<$Res>
    implements $CategoriesBlocEventCopyWith<$Res> {
  factory _$$LoadCategoriesBlocEventImplCopyWith(
          _$LoadCategoriesBlocEventImpl value,
          $Res Function(_$LoadCategoriesBlocEventImpl) then) =
      __$$LoadCategoriesBlocEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int pageSize, bool refresh});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? refresh = null,
  }) {
    return _then(_$LoadCategoriesBlocEventImpl(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadCategoriesBlocEventImpl implements LoadCategoriesBlocEvent {
  const _$LoadCategoriesBlocEventImpl(this.page, this.pageSize, this.refresh);

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final bool refresh;

  @override
  String toString() {
    return 'CategoriesBlocEvent.loadCategories(page: $page, pageSize: $pageSize, refresh: $refresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCategoriesBlocEventImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, pageSize, refresh);

  /// Create a copy of CategoriesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCategoriesBlocEventImplCopyWith<_$LoadCategoriesBlocEventImpl>
      get copyWith => __$$LoadCategoriesBlocEventImplCopyWithImpl<
          _$LoadCategoriesBlocEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize, bool refresh)
        loadCategories,
  }) {
    return loadCategories(page, pageSize, refresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize, bool refresh)? loadCategories,
  }) {
    return loadCategories?.call(page, pageSize, refresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize, bool refresh)? loadCategories,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories(page, pageSize, refresh);
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
  const factory LoadCategoriesBlocEvent(
          final int page, final int pageSize, final bool refresh) =
      _$LoadCategoriesBlocEventImpl;

  @override
  int get page;
  @override
  int get pageSize;
  @override
  bool get refresh;

  /// Create a copy of CategoriesBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCategoriesBlocEventImplCopyWith<_$LoadCategoriesBlocEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
