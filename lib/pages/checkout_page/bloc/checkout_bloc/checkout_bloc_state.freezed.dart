// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutBlocState {
  CheckoutStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of CheckoutBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutBlocStateCopyWith<CheckoutBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutBlocStateCopyWith<$Res> {
  factory $CheckoutBlocStateCopyWith(
          CheckoutBlocState value, $Res Function(CheckoutBlocState) then) =
      _$CheckoutBlocStateCopyWithImpl<$Res, CheckoutBlocState>;
  @useResult
  $Res call({CheckoutStatus status, String errorMessage});
}

/// @nodoc
class _$CheckoutBlocStateCopyWithImpl<$Res, $Val extends CheckoutBlocState>
    implements $CheckoutBlocStateCopyWith<$Res> {
  _$CheckoutBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutBlocState
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
              as CheckoutStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutBlocStateImplCopyWith<$Res>
    implements $CheckoutBlocStateCopyWith<$Res> {
  factory _$$CheckoutBlocStateImplCopyWith(_$CheckoutBlocStateImpl value,
          $Res Function(_$CheckoutBlocStateImpl) then) =
      __$$CheckoutBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CheckoutStatus status, String errorMessage});
}

/// @nodoc
class __$$CheckoutBlocStateImplCopyWithImpl<$Res>
    extends _$CheckoutBlocStateCopyWithImpl<$Res, _$CheckoutBlocStateImpl>
    implements _$$CheckoutBlocStateImplCopyWith<$Res> {
  __$$CheckoutBlocStateImplCopyWithImpl(_$CheckoutBlocStateImpl _value,
      $Res Function(_$CheckoutBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_$CheckoutBlocStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CheckoutStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckoutBlocStateImpl implements _CheckoutBlocState {
  const _$CheckoutBlocStateImpl(
      {this.status = CheckoutStatus.initial, this.errorMessage = ''});

  @override
  @JsonKey()
  final CheckoutStatus status;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'CheckoutBlocState(status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutBlocStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, errorMessage);

  /// Create a copy of CheckoutBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutBlocStateImplCopyWith<_$CheckoutBlocStateImpl> get copyWith =>
      __$$CheckoutBlocStateImplCopyWithImpl<_$CheckoutBlocStateImpl>(
          this, _$identity);
}

abstract class _CheckoutBlocState implements CheckoutBlocState {
  const factory _CheckoutBlocState(
      {final CheckoutStatus status,
      final String errorMessage}) = _$CheckoutBlocStateImpl;

  @override
  CheckoutStatus get status;
  @override
  String get errorMessage;

  /// Create a copy of CheckoutBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutBlocStateImplCopyWith<_$CheckoutBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
