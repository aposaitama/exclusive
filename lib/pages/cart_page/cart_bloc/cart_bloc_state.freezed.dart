// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartBlocState {
  LoadingCartlistStatus get loadingCartlistStatus =>
      throw _privateConstructorUsedError;
  List<CartProductModel> get productsList => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of CartBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartBlocStateCopyWith<CartBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartBlocStateCopyWith<$Res> {
  factory $CartBlocStateCopyWith(
          CartBlocState value, $Res Function(CartBlocState) then) =
      _$CartBlocStateCopyWithImpl<$Res, CartBlocState>;
  @useResult
  $Res call(
      {LoadingCartlistStatus loadingCartlistStatus,
      List<CartProductModel> productsList,
      String errorMessage});
}

/// @nodoc
class _$CartBlocStateCopyWithImpl<$Res, $Val extends CartBlocState>
    implements $CartBlocStateCopyWith<$Res> {
  _$CartBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingCartlistStatus = null,
    Object? productsList = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      loadingCartlistStatus: null == loadingCartlistStatus
          ? _value.loadingCartlistStatus
          : loadingCartlistStatus // ignore: cast_nullable_to_non_nullable
              as LoadingCartlistStatus,
      productsList: null == productsList
          ? _value.productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<CartProductModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartBlocStateImplCopyWith<$Res>
    implements $CartBlocStateCopyWith<$Res> {
  factory _$$CartBlocStateImplCopyWith(
          _$CartBlocStateImpl value, $Res Function(_$CartBlocStateImpl) then) =
      __$$CartBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoadingCartlistStatus loadingCartlistStatus,
      List<CartProductModel> productsList,
      String errorMessage});
}

/// @nodoc
class __$$CartBlocStateImplCopyWithImpl<$Res>
    extends _$CartBlocStateCopyWithImpl<$Res, _$CartBlocStateImpl>
    implements _$$CartBlocStateImplCopyWith<$Res> {
  __$$CartBlocStateImplCopyWithImpl(
      _$CartBlocStateImpl _value, $Res Function(_$CartBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingCartlistStatus = null,
    Object? productsList = null,
    Object? errorMessage = null,
  }) {
    return _then(_$CartBlocStateImpl(
      loadingCartlistStatus: null == loadingCartlistStatus
          ? _value.loadingCartlistStatus
          : loadingCartlistStatus // ignore: cast_nullable_to_non_nullable
              as LoadingCartlistStatus,
      productsList: null == productsList
          ? _value._productsList
          : productsList // ignore: cast_nullable_to_non_nullable
              as List<CartProductModel>,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartBlocStateImpl implements _CartBlocState {
  const _$CartBlocStateImpl(
      {this.loadingCartlistStatus = LoadingCartlistStatus.initial,
      final List<CartProductModel> productsList = const [],
      this.errorMessage = ''})
      : _productsList = productsList;

  @override
  @JsonKey()
  final LoadingCartlistStatus loadingCartlistStatus;
  final List<CartProductModel> _productsList;
  @override
  @JsonKey()
  List<CartProductModel> get productsList {
    if (_productsList is EqualUnmodifiableListView) return _productsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productsList);
  }

  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'CartBlocState(loadingCartlistStatus: $loadingCartlistStatus, productsList: $productsList, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartBlocStateImpl &&
            (identical(other.loadingCartlistStatus, loadingCartlistStatus) ||
                other.loadingCartlistStatus == loadingCartlistStatus) &&
            const DeepCollectionEquality()
                .equals(other._productsList, _productsList) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingCartlistStatus,
      const DeepCollectionEquality().hash(_productsList), errorMessage);

  /// Create a copy of CartBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartBlocStateImplCopyWith<_$CartBlocStateImpl> get copyWith =>
      __$$CartBlocStateImplCopyWithImpl<_$CartBlocStateImpl>(this, _$identity);
}

abstract class _CartBlocState implements CartBlocState {
  const factory _CartBlocState(
      {final LoadingCartlistStatus loadingCartlistStatus,
      final List<CartProductModel> productsList,
      final String errorMessage}) = _$CartBlocStateImpl;

  @override
  LoadingCartlistStatus get loadingCartlistStatus;
  @override
  List<CartProductModel> get productsList;
  @override
  String get errorMessage;

  /// Create a copy of CartBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartBlocStateImplCopyWith<_$CartBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
