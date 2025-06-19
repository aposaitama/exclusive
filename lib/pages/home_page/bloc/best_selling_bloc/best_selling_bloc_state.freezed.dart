// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'best_selling_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BestSellingBlocState {
  List<ProductLightModel> get bestSellingProductList =>
      throw _privateConstructorUsedError;

  /// Create a copy of BestSellingBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BestSellingBlocStateCopyWith<BestSellingBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellingBlocStateCopyWith<$Res> {
  factory $BestSellingBlocStateCopyWith(BestSellingBlocState value,
          $Res Function(BestSellingBlocState) then) =
      _$BestSellingBlocStateCopyWithImpl<$Res, BestSellingBlocState>;
  @useResult
  $Res call({List<ProductLightModel> bestSellingProductList});
}

/// @nodoc
class _$BestSellingBlocStateCopyWithImpl<$Res,
        $Val extends BestSellingBlocState>
    implements $BestSellingBlocStateCopyWith<$Res> {
  _$BestSellingBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BestSellingBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestSellingProductList = null,
  }) {
    return _then(_value.copyWith(
      bestSellingProductList: null == bestSellingProductList
          ? _value.bestSellingProductList
          : bestSellingProductList // ignore: cast_nullable_to_non_nullable
              as List<ProductLightModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestSellingBlocStateImplCopyWith<$Res>
    implements $BestSellingBlocStateCopyWith<$Res> {
  factory _$$BestSellingBlocStateImplCopyWith(_$BestSellingBlocStateImpl value,
          $Res Function(_$BestSellingBlocStateImpl) then) =
      __$$BestSellingBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductLightModel> bestSellingProductList});
}

/// @nodoc
class __$$BestSellingBlocStateImplCopyWithImpl<$Res>
    extends _$BestSellingBlocStateCopyWithImpl<$Res, _$BestSellingBlocStateImpl>
    implements _$$BestSellingBlocStateImplCopyWith<$Res> {
  __$$BestSellingBlocStateImplCopyWithImpl(_$BestSellingBlocStateImpl _value,
      $Res Function(_$BestSellingBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BestSellingBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bestSellingProductList = null,
  }) {
    return _then(_$BestSellingBlocStateImpl(
      bestSellingProductList: null == bestSellingProductList
          ? _value._bestSellingProductList
          : bestSellingProductList // ignore: cast_nullable_to_non_nullable
              as List<ProductLightModel>,
    ));
  }
}

/// @nodoc

class _$BestSellingBlocStateImpl implements _BestSellingBlocState {
  const _$BestSellingBlocStateImpl(
      {final List<ProductLightModel> bestSellingProductList = const []})
      : _bestSellingProductList = bestSellingProductList;

  final List<ProductLightModel> _bestSellingProductList;
  @override
  @JsonKey()
  List<ProductLightModel> get bestSellingProductList {
    if (_bestSellingProductList is EqualUnmodifiableListView)
      return _bestSellingProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bestSellingProductList);
  }

  @override
  String toString() {
    return 'BestSellingBlocState(bestSellingProductList: $bestSellingProductList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestSellingBlocStateImpl &&
            const DeepCollectionEquality().equals(
                other._bestSellingProductList, _bestSellingProductList));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_bestSellingProductList));

  /// Create a copy of BestSellingBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BestSellingBlocStateImplCopyWith<_$BestSellingBlocStateImpl>
      get copyWith =>
          __$$BestSellingBlocStateImplCopyWithImpl<_$BestSellingBlocStateImpl>(
              this, _$identity);
}

abstract class _BestSellingBlocState implements BestSellingBlocState {
  const factory _BestSellingBlocState(
          {final List<ProductLightModel> bestSellingProductList}) =
      _$BestSellingBlocStateImpl;

  @override
  List<ProductLightModel> get bestSellingProductList;

  /// Create a copy of BestSellingBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BestSellingBlocStateImplCopyWith<_$BestSellingBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
