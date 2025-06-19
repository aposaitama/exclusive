// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContactBlocEvent {
  String get userName => throw _privateConstructorUsedError;
  String get userEmail => throw _privateConstructorUsedError;
  String get userPhone => throw _privateConstructorUsedError;
  String get userMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String userEmail,
            String userPhone, String userMessage)
        sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String userEmail, String userPhone,
            String userMessage)?
        sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String userEmail, String userPhone,
            String userMessage)?
        sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageBlocEvent value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageBlocEvent value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageBlocEvent value)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ContactBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactBlocEventCopyWith<ContactBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactBlocEventCopyWith<$Res> {
  factory $ContactBlocEventCopyWith(
          ContactBlocEvent value, $Res Function(ContactBlocEvent) then) =
      _$ContactBlocEventCopyWithImpl<$Res, ContactBlocEvent>;
  @useResult
  $Res call(
      {String userName,
      String userEmail,
      String userPhone,
      String userMessage});
}

/// @nodoc
class _$ContactBlocEventCopyWithImpl<$Res, $Val extends ContactBlocEvent>
    implements $ContactBlocEventCopyWith<$Res> {
  _$ContactBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userEmail = null,
    Object? userPhone = null,
    Object? userMessage = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userEmail: null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      userPhone: null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      userMessage: null == userMessage
          ? _value.userMessage
          : userMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendMessageBlocEventImplCopyWith<$Res>
    implements $ContactBlocEventCopyWith<$Res> {
  factory _$$SendMessageBlocEventImplCopyWith(_$SendMessageBlocEventImpl value,
          $Res Function(_$SendMessageBlocEventImpl) then) =
      __$$SendMessageBlocEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userName,
      String userEmail,
      String userPhone,
      String userMessage});
}

/// @nodoc
class __$$SendMessageBlocEventImplCopyWithImpl<$Res>
    extends _$ContactBlocEventCopyWithImpl<$Res, _$SendMessageBlocEventImpl>
    implements _$$SendMessageBlocEventImplCopyWith<$Res> {
  __$$SendMessageBlocEventImplCopyWithImpl(_$SendMessageBlocEventImpl _value,
      $Res Function(_$SendMessageBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userEmail = null,
    Object? userPhone = null,
    Object? userMessage = null,
  }) {
    return _then(_$SendMessageBlocEventImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      null == userEmail
          ? _value.userEmail
          : userEmail // ignore: cast_nullable_to_non_nullable
              as String,
      null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
      null == userMessage
          ? _value.userMessage
          : userMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageBlocEventImpl implements SendMessageBlocEvent {
  const _$SendMessageBlocEventImpl(
      this.userName, this.userEmail, this.userPhone, this.userMessage);

  @override
  final String userName;
  @override
  final String userEmail;
  @override
  final String userPhone;
  @override
  final String userMessage;

  @override
  String toString() {
    return 'ContactBlocEvent.sendMessage(userName: $userName, userEmail: $userEmail, userPhone: $userPhone, userMessage: $userMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageBlocEventImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userEmail, userEmail) ||
                other.userEmail == userEmail) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.userMessage, userMessage) ||
                other.userMessage == userMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userName, userEmail, userPhone, userMessage);

  /// Create a copy of ContactBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageBlocEventImplCopyWith<_$SendMessageBlocEventImpl>
      get copyWith =>
          __$$SendMessageBlocEventImplCopyWithImpl<_$SendMessageBlocEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String userEmail,
            String userPhone, String userMessage)
        sendMessage,
  }) {
    return sendMessage(userName, userEmail, userPhone, userMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String userEmail, String userPhone,
            String userMessage)?
        sendMessage,
  }) {
    return sendMessage?.call(userName, userEmail, userPhone, userMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String userEmail, String userPhone,
            String userMessage)?
        sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(userName, userEmail, userPhone, userMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageBlocEvent value) sendMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageBlocEvent value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageBlocEvent value)? sendMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessageBlocEvent implements ContactBlocEvent {
  const factory SendMessageBlocEvent(
      final String userName,
      final String userEmail,
      final String userPhone,
      final String userMessage) = _$SendMessageBlocEventImpl;

  @override
  String get userName;
  @override
  String get userEmail;
  @override
  String get userPhone;
  @override
  String get userMessage;

  /// Create a copy of ContactBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageBlocEventImplCopyWith<_$SendMessageBlocEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
