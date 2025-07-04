// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllProductsState {
  bool get hasReachedEnd => throw _privateConstructorUsedError;
  List<ProductLightModel> get productList => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AllProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllProductsStateCopyWith<AllProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProductsStateCopyWith<$Res> {
  factory $AllProductsStateCopyWith(
          AllProductsState value, $Res Function(AllProductsState) then) =
      _$AllProductsStateCopyWithImpl<$Res, AllProductsState>;
  @useResult
  $Res call(
      {bool hasReachedEnd,
      List<ProductLightModel> productList,
      String errorMessage});
}

/// @nodoc
class _$AllProductsStateCopyWithImpl<$Res, $Val extends AllProductsState>
    implements $AllProductsStateCopyWith<$Res> {
  _$AllProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasReachedEnd = null,
    Object? productList = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: null == productList
          ? _value.productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductLightModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllProductsStateImplCopyWith<$Res>
    implements $AllProductsStateCopyWith<$Res> {
  factory _$$AllProductsStateImplCopyWith(_$AllProductsStateImpl value,
          $Res Function(_$AllProductsStateImpl) then) =
      __$$AllProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool hasReachedEnd,
      List<ProductLightModel> productList,
      String errorMessage});
}

/// @nodoc
class __$$AllProductsStateImplCopyWithImpl<$Res>
    extends _$AllProductsStateCopyWithImpl<$Res, _$AllProductsStateImpl>
    implements _$$AllProductsStateImplCopyWith<$Res> {
  __$$AllProductsStateImplCopyWithImpl(_$AllProductsStateImpl _value,
      $Res Function(_$AllProductsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasReachedEnd = null,
    Object? productList = null,
    Object? errorMessage = null,
  }) {
    return _then(_$AllProductsStateImpl(
      hasReachedEnd: null == hasReachedEnd
          ? _value.hasReachedEnd
          : hasReachedEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      productList: null == productList
          ? _value._productList
          : productList // ignore: cast_nullable_to_non_nullable
              as List<ProductLightModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AllProductsStateImpl implements _AllProductsState {
  _$AllProductsStateImpl(
      {this.hasReachedEnd = false,
      final List<ProductLightModel> productList = const [],
      this.errorMessage = ''})
      : _productList = productList;

  @override
  @JsonKey()
  final bool hasReachedEnd;
  final List<ProductLightModel> _productList;
  @override
  @JsonKey()
  List<ProductLightModel> get productList {
    if (_productList is EqualUnmodifiableListView) return _productList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productList);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'AllProductsState(hasReachedEnd: $hasReachedEnd, productList: $productList, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllProductsStateImpl &&
            (identical(other.hasReachedEnd, hasReachedEnd) ||
                other.hasReachedEnd == hasReachedEnd) &&
            const DeepCollectionEquality()
                .equals(other._productList, _productList) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasReachedEnd,
      const DeepCollectionEquality().hash(_productList), errorMessage);

  /// Create a copy of AllProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllProductsStateImplCopyWith<_$AllProductsStateImpl> get copyWith =>
      __$$AllProductsStateImplCopyWithImpl<_$AllProductsStateImpl>(
          this, _$identity);
}

abstract class _AllProductsState implements AllProductsState {
  factory _AllProductsState(
      {final bool hasReachedEnd,
      final List<ProductLightModel> productList,
      final String errorMessage}) = _$AllProductsStateImpl;

  @override
  bool get hasReachedEnd;
  @override
  List<ProductLightModel> get productList;
  @override
  String get errorMessage;

  /// Create a copy of AllProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllProductsStateImplCopyWith<_$AllProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
