// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountState {
  bool get isAuthenticated => throw _privateConstructorUsedError;
  UserModel? get userInfo => throw _privateConstructorUsedError;
  List<AddressModel> get userAddresses => throw _privateConstructorUsedError;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call(
      {bool isAuthenticated,
      UserModel? userInfo,
      List<AddressModel> userAddresses});

  $UserModelCopyWith<$Res>? get userInfo;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticated = null,
    Object? userInfo = freezed,
    Object? userAddresses = null,
  }) {
    return _then(_value.copyWith(
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      userAddresses: null == userAddresses
          ? _value.userAddresses
          : userAddresses // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
    ) as $Val);
  }

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userInfo {
    if (_value.userInfo == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userInfo!, (value) {
      return _then(_value.copyWith(userInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountStateImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateImplCopyWith(
          _$AccountStateImpl value, $Res Function(_$AccountStateImpl) then) =
      __$$AccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAuthenticated,
      UserModel? userInfo,
      List<AddressModel> userAddresses});

  @override
  $UserModelCopyWith<$Res>? get userInfo;
}

/// @nodoc
class __$$AccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateImpl>
    implements _$$AccountStateImplCopyWith<$Res> {
  __$$AccountStateImplCopyWithImpl(
      _$AccountStateImpl _value, $Res Function(_$AccountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthenticated = null,
    Object? userInfo = freezed,
    Object? userAddresses = null,
  }) {
    return _then(_$AccountStateImpl(
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      userInfo: freezed == userInfo
          ? _value.userInfo
          : userInfo // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      userAddresses: null == userAddresses
          ? _value._userAddresses
          : userAddresses // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
    ));
  }
}

/// @nodoc

class _$AccountStateImpl implements _AccountState {
  _$AccountStateImpl(
      {this.isAuthenticated = false,
      this.userInfo,
      final List<AddressModel> userAddresses = const []})
      : _userAddresses = userAddresses;

  @override
  @JsonKey()
  final bool isAuthenticated;
  @override
  final UserModel? userInfo;
  final List<AddressModel> _userAddresses;
  @override
  @JsonKey()
  List<AddressModel> get userAddresses {
    if (_userAddresses is EqualUnmodifiableListView) return _userAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userAddresses);
  }

  @override
  String toString() {
    return 'AccountState(isAuthenticated: $isAuthenticated, userInfo: $userInfo, userAddresses: $userAddresses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.userInfo, userInfo) ||
                other.userInfo == userInfo) &&
            const DeepCollectionEquality()
                .equals(other._userAddresses, _userAddresses));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAuthenticated, userInfo,
      const DeepCollectionEquality().hash(_userAddresses));

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      __$$AccountStateImplCopyWithImpl<_$AccountStateImpl>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  factory _AccountState(
      {final bool isAuthenticated,
      final UserModel? userInfo,
      final List<AddressModel> userAddresses}) = _$AccountStateImpl;

  @override
  bool get isAuthenticated;
  @override
  UserModel? get userInfo;
  @override
  List<AddressModel> get userAddresses;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
