// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flash_sales_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FlashSalesBlocState {
  FlashSaleModel get flashSales => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  bool get isLoadingNext => throw _privateConstructorUsedError;

  /// Create a copy of FlashSalesBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashSalesBlocStateCopyWith<FlashSalesBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashSalesBlocStateCopyWith<$Res> {
  factory $FlashSalesBlocStateCopyWith(
          FlashSalesBlocState value, $Res Function(FlashSalesBlocState) then) =
      _$FlashSalesBlocStateCopyWithImpl<$Res, FlashSalesBlocState>;
  @useResult
  $Res call(
      {FlashSaleModel flashSales,
      int page,
      int pageSize,
      bool hasReachedEnd,
      bool isLoadingNext});

  $FlashSaleModelCopyWith<$Res> get flashSales;
}

/// @nodoc
class _$FlashSalesBlocStateCopyWithImpl<$Res, $Val extends FlashSalesBlocState>
    implements $FlashSalesBlocStateCopyWith<$Res> {
  _$FlashSalesBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashSalesBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashSales = null,
    Object? page = null,
    Object? pageSize = null,
    Object? hasReachedEnd = null,
    Object? isLoadingNext = null,
  }) {
    return _then(_value.copyWith(
      flashSales: null == flashSales
          ? _value.flashSales
          : flashSales // ignore: cast_nullable_to_non_nullable
              as FlashSaleModel,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingNext: null == isLoadingNext
          ? _value.isLoadingNext
          : isLoadingNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of FlashSalesBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FlashSaleModelCopyWith<$Res> get flashSales {
    return $FlashSaleModelCopyWith<$Res>(_value.flashSales, (value) {
      return _then(_value.copyWith(flashSales: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlashSalesBlocStateImplCopyWith<$Res>
    implements $FlashSalesBlocStateCopyWith<$Res> {
  factory _$$FlashSalesBlocStateImplCopyWith(_$FlashSalesBlocStateImpl value,
          $Res Function(_$FlashSalesBlocStateImpl) then) =
      __$$FlashSalesBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FlashSaleModel flashSales,
      int page,
      int pageSize,
      bool hasReachedEnd,
      bool isLoadingNext});

  @override
  $FlashSaleModelCopyWith<$Res> get flashSales;
}

/// @nodoc
class __$$FlashSalesBlocStateImplCopyWithImpl<$Res>
    extends _$FlashSalesBlocStateCopyWithImpl<$Res, _$FlashSalesBlocStateImpl>
    implements _$$FlashSalesBlocStateImplCopyWith<$Res> {
  __$$FlashSalesBlocStateImplCopyWithImpl(_$FlashSalesBlocStateImpl _value,
      $Res Function(_$FlashSalesBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlashSalesBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashSales = null,
    Object? page = null,
    Object? pageSize = null,
    Object? hasReachedEnd = null,
    Object? isLoadingNext = null,
  }) {
    return _then(_$FlashSalesBlocStateImpl(
      flashSales: null == flashSales
          ? _value.flashSales
          : flashSales // ignore: cast_nullable_to_non_nullable
              as FlashSaleModel,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingNext: null == isLoadingNext
          ? _value.isLoadingNext
          : isLoadingNext // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FlashSalesBlocStateImpl implements _FlashSalesBlocState {
  const _$FlashSalesBlocStateImpl(
      {this.flashSales =
          const FlashSaleModel(id: 0, documentId: '', products: []),
      this.page = 1,
      this.pageSize = 6,
      this.hasReachedEnd = false,
      this.isLoadingNext = false});

  @override
  @JsonKey()
  final FlashSaleModel flashSales;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final bool hasReachedEnd;
  @override
  @JsonKey()
  final bool isLoadingNext;

  @override
  String toString() {
    return 'FlashSalesBlocState(flashSales: $flashSales, page: $page, pageSize: $pageSize, hasReachedEnd: $hasReachedEnd, isLoadingNext: $isLoadingNext)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashSalesBlocStateImpl &&
            (identical(other.flashSales, flashSales) ||
                other.flashSales == flashSales) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            (identical(other.isLoadingNext, isLoadingNext) ||
                other.isLoadingNext == isLoadingNext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, flashSales, page, pageSize, hasReachedEnd, isLoadingNext);

  /// Create a copy of FlashSalesBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashSalesBlocStateImplCopyWith<_$FlashSalesBlocStateImpl> get copyWith =>
      __$$FlashSalesBlocStateImplCopyWithImpl<_$FlashSalesBlocStateImpl>(
          this, _$identity);
}

abstract class _FlashSalesBlocState implements FlashSalesBlocState {
  const factory _FlashSalesBlocState(
      {final FlashSaleModel flashSales,
      final int page,
      final int pageSize,
      final bool hasReachedEnd,
      final bool isLoadingNext}) = _$FlashSalesBlocStateImpl;

  @override
  FlashSaleModel get flashSales;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  bool get hasReachedEnd;
  @override
  bool get isLoadingNext;

  /// Create a copy of FlashSalesBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashSalesBlocStateImplCopyWith<_$FlashSalesBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
