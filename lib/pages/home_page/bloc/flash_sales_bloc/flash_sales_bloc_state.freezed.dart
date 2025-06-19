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
  List<ProductLightModel> get flashSalesProductList =>
      throw _privateConstructorUsedError;

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
  $Res call({List<ProductLightModel> flashSalesProductList});
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
    Object? flashSalesProductList = null,
  }) {
    return _then(_value.copyWith(
      flashSalesProductList: null == flashSalesProductList
          ? _value.flashSalesProductList
          : flashSalesProductList // ignore: cast_nullable_to_non_nullable
              as List<ProductLightModel>,
    ) as $Val);
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
  $Res call({List<ProductLightModel> flashSalesProductList});
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
    Object? flashSalesProductList = null,
  }) {
    return _then(_$FlashSalesBlocStateImpl(
      flashSalesProductList: null == flashSalesProductList
          ? _value._flashSalesProductList
          : flashSalesProductList // ignore: cast_nullable_to_non_nullable
              as List<ProductLightModel>,
    ));
  }
}

/// @nodoc

class _$FlashSalesBlocStateImpl implements _FlashSalesBlocState {
  const _$FlashSalesBlocStateImpl(
      {final List<ProductLightModel> flashSalesProductList = const []})
      : _flashSalesProductList = flashSalesProductList;

  final List<ProductLightModel> _flashSalesProductList;
  @override
  @JsonKey()
  List<ProductLightModel> get flashSalesProductList {
    if (_flashSalesProductList is EqualUnmodifiableListView)
      return _flashSalesProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flashSalesProductList);
  }

  @override
  String toString() {
    return 'FlashSalesBlocState(flashSalesProductList: $flashSalesProductList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashSalesBlocStateImpl &&
            const DeepCollectionEquality()
                .equals(other._flashSalesProductList, _flashSalesProductList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_flashSalesProductList));

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
          {final List<ProductLightModel> flashSalesProductList}) =
      _$FlashSalesBlocStateImpl;

  @override
  List<ProductLightModel> get flashSalesProductList;

  /// Create a copy of FlashSalesBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashSalesBlocStateImplCopyWith<_$FlashSalesBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
