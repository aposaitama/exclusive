// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactBlocState {
  MessageSendingStatus get messageSendingStatus =>
      throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of ContactBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactBlocStateCopyWith<ContactBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactBlocStateCopyWith<$Res> {
  factory $ContactBlocStateCopyWith(
          ContactBlocState value, $Res Function(ContactBlocState) then) =
      _$ContactBlocStateCopyWithImpl<$Res, ContactBlocState>;
  @useResult
  $Res call({MessageSendingStatus messageSendingStatus, String errorMessage});
}

/// @nodoc
class _$ContactBlocStateCopyWithImpl<$Res, $Val extends ContactBlocState>
    implements $ContactBlocStateCopyWith<$Res> {
  _$ContactBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageSendingStatus = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      messageSendingStatus: null == messageSendingStatus
          ? _value.messageSendingStatus
          : messageSendingStatus // ignore: cast_nullable_to_non_nullable
              as MessageSendingStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactBlocStateImplCopyWith<$Res>
    implements $ContactBlocStateCopyWith<$Res> {
  factory _$$ContactBlocStateImplCopyWith(_$ContactBlocStateImpl value,
          $Res Function(_$ContactBlocStateImpl) then) =
      __$$ContactBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageSendingStatus messageSendingStatus, String errorMessage});
}

/// @nodoc
class __$$ContactBlocStateImplCopyWithImpl<$Res>
    extends _$ContactBlocStateCopyWithImpl<$Res, _$ContactBlocStateImpl>
    implements _$$ContactBlocStateImplCopyWith<$Res> {
  __$$ContactBlocStateImplCopyWithImpl(_$ContactBlocStateImpl _value,
      $Res Function(_$ContactBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageSendingStatus = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ContactBlocStateImpl(
      messageSendingStatus: null == messageSendingStatus
          ? _value.messageSendingStatus
          : messageSendingStatus // ignore: cast_nullable_to_non_nullable
              as MessageSendingStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContactBlocStateImpl implements _ContactBlocState {
  const _$ContactBlocStateImpl(
      {this.messageSendingStatus = MessageSendingStatus.initial,
      this.errorMessage = ''});

  @override
  @JsonKey()
  final MessageSendingStatus messageSendingStatus;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'ContactBlocState(messageSendingStatus: $messageSendingStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactBlocStateImpl &&
            (identical(other.messageSendingStatus, messageSendingStatus) ||
                other.messageSendingStatus == messageSendingStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, messageSendingStatus, errorMessage);

  /// Create a copy of ContactBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactBlocStateImplCopyWith<_$ContactBlocStateImpl> get copyWith =>
      __$$ContactBlocStateImplCopyWithImpl<_$ContactBlocStateImpl>(
          this, _$identity);
}

abstract class _ContactBlocState implements ContactBlocState {
  const factory _ContactBlocState(
      {final MessageSendingStatus messageSendingStatus,
      final String errorMessage}) = _$ContactBlocStateImpl;

  @override
  MessageSendingStatus get messageSendingStatus;
  @override
  String get errorMessage;

  /// Create a copy of ContactBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactBlocStateImplCopyWith<_$ContactBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
