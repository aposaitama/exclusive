// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginBlocState {
  LoginStatus get loginStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of LoginBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginBlocStateCopyWith<LoginBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginBlocStateCopyWith<$Res> {
  factory $LoginBlocStateCopyWith(
          LoginBlocState value, $Res Function(LoginBlocState) then) =
      _$LoginBlocStateCopyWithImpl<$Res, LoginBlocState>;
  @useResult
  $Res call({LoginStatus loginStatus, String errorMessage});
}

/// @nodoc
class _$LoginBlocStateCopyWithImpl<$Res, $Val extends LoginBlocState>
    implements $LoginBlocStateCopyWith<$Res> {
  _$LoginBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginBlocStateImplCopyWith<$Res>
    implements $LoginBlocStateCopyWith<$Res> {
  factory _$$LoginBlocStateImplCopyWith(_$LoginBlocStateImpl value,
          $Res Function(_$LoginBlocStateImpl) then) =
      __$$LoginBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginStatus loginStatus, String errorMessage});
}

/// @nodoc
class __$$LoginBlocStateImplCopyWithImpl<$Res>
    extends _$LoginBlocStateCopyWithImpl<$Res, _$LoginBlocStateImpl>
    implements _$$LoginBlocStateImplCopyWith<$Res> {
  __$$LoginBlocStateImplCopyWithImpl(
      _$LoginBlocStateImpl _value, $Res Function(_$LoginBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginStatus = null,
    Object? errorMessage = null,
  }) {
    return _then(_$LoginBlocStateImpl(
      loginStatus: null == loginStatus
          ? _value.loginStatus
          : loginStatus // ignore: cast_nullable_to_non_nullable
              as LoginStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginBlocStateImpl implements _LoginBlocState {
  const _$LoginBlocStateImpl(
      {this.loginStatus = LoginStatus.initial, this.errorMessage = ''});

  @override
  @JsonKey()
  final LoginStatus loginStatus;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'LoginBlocState(loginStatus: $loginStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginBlocStateImpl &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginStatus, errorMessage);

  /// Create a copy of LoginBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginBlocStateImplCopyWith<_$LoginBlocStateImpl> get copyWith =>
      __$$LoginBlocStateImplCopyWithImpl<_$LoginBlocStateImpl>(
          this, _$identity);
}

abstract class _LoginBlocState implements LoginBlocState {
  const factory _LoginBlocState(
      {final LoginStatus loginStatus,
      final String errorMessage}) = _$LoginBlocStateImpl;

  @override
  LoginStatus get loginStatus;
  @override
  String get errorMessage;

  /// Create a copy of LoginBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginBlocStateImplCopyWith<_$LoginBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
