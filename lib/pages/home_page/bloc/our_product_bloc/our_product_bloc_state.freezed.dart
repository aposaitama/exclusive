// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'our_product_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OurProductBlocState {
  List<ProductLightModel> get ourProductList =>
      throw _privateConstructorUsedError;

  /// Create a copy of OurProductBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OurProductBlocStateCopyWith<OurProductBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OurProductBlocStateCopyWith<$Res> {
  factory $OurProductBlocStateCopyWith(
          OurProductBlocState value, $Res Function(OurProductBlocState) then) =
      _$OurProductBlocStateCopyWithImpl<$Res, OurProductBlocState>;
  @useResult
  $Res call({List<ProductLightModel> ourProductList});
}

/// @nodoc
class _$OurProductBlocStateCopyWithImpl<$Res, $Val extends OurProductBlocState>
    implements $OurProductBlocStateCopyWith<$Res> {
  _$OurProductBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OurProductBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ourProductList = null,
  }) {
    return _then(_value.copyWith(
      ourProductList: null == ourProductList
          ? _value.ourProductList
          : ourProductList // ignore: cast_nullable_to_non_nullable
              as List<ProductLightModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OurProductBlocStateImplCopyWith<$Res>
    implements $OurProductBlocStateCopyWith<$Res> {
  factory _$$OurProductBlocStateImplCopyWith(_$OurProductBlocStateImpl value,
          $Res Function(_$OurProductBlocStateImpl) then) =
      __$$OurProductBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductLightModel> ourProductList});
}

/// @nodoc
class __$$OurProductBlocStateImplCopyWithImpl<$Res>
    extends _$OurProductBlocStateCopyWithImpl<$Res, _$OurProductBlocStateImpl>
    implements _$$OurProductBlocStateImplCopyWith<$Res> {
  __$$OurProductBlocStateImplCopyWithImpl(_$OurProductBlocStateImpl _value,
      $Res Function(_$OurProductBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OurProductBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ourProductList = null,
  }) {
    return _then(_$OurProductBlocStateImpl(
      ourProductList: null == ourProductList
          ? _value._ourProductList
          : ourProductList // ignore: cast_nullable_to_non_nullable
              as List<ProductLightModel>,
    ));
  }
}

/// @nodoc

class _$OurProductBlocStateImpl implements _OurProductBlocState {
  const _$OurProductBlocStateImpl(
      {final List<ProductLightModel> ourProductList = const []})
      : _ourProductList = ourProductList;

  final List<ProductLightModel> _ourProductList;
  @override
  @JsonKey()
  List<ProductLightModel> get ourProductList {
    if (_ourProductList is EqualUnmodifiableListView) return _ourProductList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ourProductList);
  }

  @override
  String toString() {
    return 'OurProductBlocState(ourProductList: $ourProductList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OurProductBlocStateImpl &&
            const DeepCollectionEquality()
                .equals(other._ourProductList, _ourProductList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_ourProductList));

  /// Create a copy of OurProductBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OurProductBlocStateImplCopyWith<_$OurProductBlocStateImpl> get copyWith =>
      __$$OurProductBlocStateImplCopyWithImpl<_$OurProductBlocStateImpl>(
          this, _$identity);
}

abstract class _OurProductBlocState implements OurProductBlocState {
  const factory _OurProductBlocState(
          {final List<ProductLightModel> ourProductList}) =
      _$OurProductBlocStateImpl;

  @override
  List<ProductLightModel> get ourProductList;

  /// Create a copy of OurProductBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OurProductBlocStateImplCopyWith<_$OurProductBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
