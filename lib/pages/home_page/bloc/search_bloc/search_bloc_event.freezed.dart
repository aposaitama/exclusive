// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchBlocEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String query) loadNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String query)? loadNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String query)? loadNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchProductsEvent value) search,
    required TResult Function(LoadNextSearchEvent value) loadNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchProductsEvent value)? search,
    TResult? Function(LoadNextSearchEvent value)? loadNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchProductsEvent value)? search,
    TResult Function(LoadNextSearchEvent value)? loadNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchBlocEventCopyWith<SearchBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBlocEventCopyWith<$Res> {
  factory $SearchBlocEventCopyWith(
          SearchBlocEvent value, $Res Function(SearchBlocEvent) then) =
      _$SearchBlocEventCopyWithImpl<$Res, SearchBlocEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchBlocEventCopyWithImpl<$Res, $Val extends SearchBlocEvent>
    implements $SearchBlocEventCopyWith<$Res> {
  _$SearchBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchProductsEventImplCopyWith<$Res>
    implements $SearchBlocEventCopyWith<$Res> {
  factory _$$SearchProductsEventImplCopyWith(_$SearchProductsEventImpl value,
          $Res Function(_$SearchProductsEventImpl) then) =
      __$$SearchProductsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchProductsEventImplCopyWithImpl<$Res>
    extends _$SearchBlocEventCopyWithImpl<$Res, _$SearchProductsEventImpl>
    implements _$$SearchProductsEventImplCopyWith<$Res> {
  __$$SearchProductsEventImplCopyWithImpl(_$SearchProductsEventImpl _value,
      $Res Function(_$SearchProductsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchProductsEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductsEventImpl implements SearchProductsEvent {
  const _$SearchProductsEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchBlocEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductsEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductsEventImplCopyWith<_$SearchProductsEventImpl> get copyWith =>
      __$$SearchProductsEventImplCopyWithImpl<_$SearchProductsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String query) loadNext,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String query)? loadNext,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String query)? loadNext,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchProductsEvent value) search,
    required TResult Function(LoadNextSearchEvent value) loadNext,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchProductsEvent value)? search,
    TResult? Function(LoadNextSearchEvent value)? loadNext,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchProductsEvent value)? search,
    TResult Function(LoadNextSearchEvent value)? loadNext,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchProductsEvent implements SearchBlocEvent {
  const factory SearchProductsEvent(final String query) =
      _$SearchProductsEventImpl;

  @override
  String get query;

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchProductsEventImplCopyWith<_$SearchProductsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadNextSearchEventImplCopyWith<$Res>
    implements $SearchBlocEventCopyWith<$Res> {
  factory _$$LoadNextSearchEventImplCopyWith(_$LoadNextSearchEventImpl value,
          $Res Function(_$LoadNextSearchEventImpl) then) =
      __$$LoadNextSearchEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$LoadNextSearchEventImplCopyWithImpl<$Res>
    extends _$SearchBlocEventCopyWithImpl<$Res, _$LoadNextSearchEventImpl>
    implements _$$LoadNextSearchEventImplCopyWith<$Res> {
  __$$LoadNextSearchEventImplCopyWithImpl(_$LoadNextSearchEventImpl _value,
      $Res Function(_$LoadNextSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$LoadNextSearchEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadNextSearchEventImpl implements LoadNextSearchEvent {
  const _$LoadNextSearchEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchBlocEvent.loadNext(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNextSearchEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadNextSearchEventImplCopyWith<_$LoadNextSearchEventImpl> get copyWith =>
      __$$LoadNextSearchEventImplCopyWithImpl<_$LoadNextSearchEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) search,
    required TResult Function(String query) loadNext,
  }) {
    return loadNext(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? search,
    TResult? Function(String query)? loadNext,
  }) {
    return loadNext?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? search,
    TResult Function(String query)? loadNext,
    required TResult orElse(),
  }) {
    if (loadNext != null) {
      return loadNext(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchProductsEvent value) search,
    required TResult Function(LoadNextSearchEvent value) loadNext,
  }) {
    return loadNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchProductsEvent value)? search,
    TResult? Function(LoadNextSearchEvent value)? loadNext,
  }) {
    return loadNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchProductsEvent value)? search,
    TResult Function(LoadNextSearchEvent value)? loadNext,
    required TResult orElse(),
  }) {
    if (loadNext != null) {
      return loadNext(this);
    }
    return orElse();
  }
}

abstract class LoadNextSearchEvent implements SearchBlocEvent {
  const factory LoadNextSearchEvent(final String query) =
      _$LoadNextSearchEventImpl;

  @override
  String get query;

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadNextSearchEventImplCopyWith<_$LoadNextSearchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
