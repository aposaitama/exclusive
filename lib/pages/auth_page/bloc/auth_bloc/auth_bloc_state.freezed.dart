// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthBlocState {
  RegisterStatus get status => throw _privateConstructorUsedError;
  LoginStatus get loginStatus => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AuthBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthBlocStateCopyWith<AuthBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBlocStateCopyWith<$Res> {
  factory $AuthBlocStateCopyWith(
          AuthBlocState value, $Res Function(AuthBlocState) then) =
      _$AuthBlocStateCopyWithImpl<$Res, AuthBlocState>;
  @useResult
  $Res call(
      {RegisterStatus status, LoginStatus loginStatus, String errorMessage});
}

/// @nodoc
class _$AuthBlocStateCopyWithImpl<$Res, $Val extends AuthBlocState>
    implements $AuthBlocStateCopyWith<$Res> {
  _$AuthBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loginStatus = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
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
abstract class _$$AuthBlocStateImplCopyWith<$Res>
    implements $AuthBlocStateCopyWith<$Res> {
  factory _$$AuthBlocStateImplCopyWith(
          _$AuthBlocStateImpl value, $Res Function(_$AuthBlocStateImpl) then) =
      __$$AuthBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RegisterStatus status, LoginStatus loginStatus, String errorMessage});
}

/// @nodoc
class __$$AuthBlocStateImplCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res, _$AuthBlocStateImpl>
    implements _$$AuthBlocStateImplCopyWith<$Res> {
  __$$AuthBlocStateImplCopyWithImpl(
      _$AuthBlocStateImpl _value, $Res Function(_$AuthBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? loginStatus = null,
    Object? errorMessage = null,
  }) {
    return _then(_$AuthBlocStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
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

class _$AuthBlocStateImpl implements _AuthBlocState {
  const _$AuthBlocStateImpl(
      {this.status = RegisterStatus.initial,
      this.loginStatus = LoginStatus.initial,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final RegisterStatus status;
  @override
  @JsonKey()
  final LoginStatus loginStatus;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'AuthBlocState(status: $status, loginStatus: $loginStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthBlocStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.loginStatus, loginStatus) ||
                other.loginStatus == loginStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, loginStatus, errorMessage);

  /// Create a copy of AuthBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthBlocStateImplCopyWith<_$AuthBlocStateImpl> get copyWith =>
      __$$AuthBlocStateImplCopyWithImpl<_$AuthBlocStateImpl>(this, _$identity);
}

abstract class _AuthBlocState implements AuthBlocState {
  const factory _AuthBlocState(
      {final RegisterStatus status,
      final LoginStatus loginStatus,
      final String errorMessage}) = _$AuthBlocStateImpl;

  @override
  RegisterStatus get status;
  @override
  LoginStatus get loginStatus;
  @override
  String get errorMessage;

  /// Create a copy of AuthBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthBlocStateImplCopyWith<_$AuthBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
