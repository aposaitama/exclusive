// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterBlocState {
  RegisterStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of RegisterBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterBlocStateCopyWith<RegisterBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBlocStateCopyWith<$Res> {
  factory $RegisterBlocStateCopyWith(
          RegisterBlocState value, $Res Function(RegisterBlocState) then) =
      _$RegisterBlocStateCopyWithImpl<$Res, RegisterBlocState>;
  @useResult
  $Res call({RegisterStatus status, String errorMessage});
}

/// @nodoc
class _$RegisterBlocStateCopyWithImpl<$Res, $Val extends RegisterBlocState>
    implements $RegisterBlocStateCopyWith<$Res> {
  _$RegisterBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterBlocStateImplCopyWith<$Res>
    implements $RegisterBlocStateCopyWith<$Res> {
  factory _$$RegisterBlocStateImplCopyWith(_$RegisterBlocStateImpl value,
          $Res Function(_$RegisterBlocStateImpl) then) =
      __$$RegisterBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RegisterStatus status, String errorMessage});
}

/// @nodoc
class __$$RegisterBlocStateImplCopyWithImpl<$Res>
    extends _$RegisterBlocStateCopyWithImpl<$Res, _$RegisterBlocStateImpl>
    implements _$$RegisterBlocStateImplCopyWith<$Res> {
  __$$RegisterBlocStateImplCopyWithImpl(_$RegisterBlocStateImpl _value,
      $Res Function(_$RegisterBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_$RegisterBlocStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterBlocStateImpl implements _RegisterBlocState {
  const _$RegisterBlocStateImpl(
      {this.status = RegisterStatus.initial, this.errorMessage = ''});

  @override
  @JsonKey()
  final RegisterStatus status;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'RegisterBlocState(status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterBlocStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage);

  /// Create a copy of RegisterBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterBlocStateImplCopyWith<_$RegisterBlocStateImpl> get copyWith =>
      __$$RegisterBlocStateImplCopyWithImpl<_$RegisterBlocStateImpl>(
          this, _$identity);
}

abstract class _RegisterBlocState implements RegisterBlocState {
  const factory _RegisterBlocState(
      {final RegisterStatus status,
      final String errorMessage}) = _$RegisterBlocStateImpl;

  @override
  RegisterStatus get status;
  @override
  String get errorMessage;

  /// Create a copy of RegisterBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterBlocStateImplCopyWith<_$RegisterBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
