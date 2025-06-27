// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() logoutUser,
    required TResult Function() editUserData,
    required TResult Function() authenticateUser,
    required TResult Function() clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? logoutUser,
    TResult? Function()? editUserData,
    TResult? Function()? authenticateUser,
    TResult? Function()? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? logoutUser,
    TResult Function()? editUserData,
    TResult Function()? authenticateUser,
    TResult Function()? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(LogoutUserEvent value) logoutUser,
    required TResult Function(EditUserDataEvent value) editUserData,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
    required TResult Function(ClearAccountStateEvent value) clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(LogoutUserEvent value)? logoutUser,
    TResult? Function(EditUserDataEvent value)? editUserData,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
    TResult? Function(ClearAccountStateEvent value)? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(LogoutUserEvent value)? logoutUser,
    TResult Function(EditUserDataEvent value)? editUserData,
    TResult Function(AuthenticateUserEvent value)? authenticateUser,
    TResult Function(ClearAccountStateEvent value)? clearState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEventCopyWith<$Res> {
  factory $AccountEventCopyWith(
          AccountEvent value, $Res Function(AccountEvent) then) =
      _$AccountEventCopyWithImpl<$Res, AccountEvent>;
}

/// @nodoc
class _$AccountEventCopyWithImpl<$Res, $Val extends AccountEvent>
    implements $AccountEventCopyWith<$Res> {
  _$AccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserDataEventImplCopyWith<$Res> {
  factory _$$GetUserDataEventImplCopyWith(_$GetUserDataEventImpl value,
          $Res Function(_$GetUserDataEventImpl) then) =
      __$$GetUserDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDataEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetUserDataEventImpl>
    implements _$$GetUserDataEventImplCopyWith<$Res> {
  __$$GetUserDataEventImplCopyWithImpl(_$GetUserDataEventImpl _value,
      $Res Function(_$GetUserDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserDataEventImpl implements GetUserDataEvent {
  const _$GetUserDataEventImpl();

  @override
  String toString() {
    return 'AccountEvent.getUserData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() logoutUser,
    required TResult Function() editUserData,
    required TResult Function() authenticateUser,
    required TResult Function() clearState,
  }) {
    return getUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? logoutUser,
    TResult? Function()? editUserData,
    TResult? Function()? authenticateUser,
    TResult? Function()? clearState,
  }) {
    return getUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? logoutUser,
    TResult Function()? editUserData,
    TResult Function()? authenticateUser,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(LogoutUserEvent value) logoutUser,
    required TResult Function(EditUserDataEvent value) editUserData,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
    required TResult Function(ClearAccountStateEvent value) clearState,
  }) {
    return getUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(LogoutUserEvent value)? logoutUser,
    TResult? Function(EditUserDataEvent value)? editUserData,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
    TResult? Function(ClearAccountStateEvent value)? clearState,
  }) {
    return getUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(LogoutUserEvent value)? logoutUser,
    TResult Function(EditUserDataEvent value)? editUserData,
    TResult Function(AuthenticateUserEvent value)? authenticateUser,
    TResult Function(ClearAccountStateEvent value)? clearState,
    required TResult orElse(),
  }) {
    if (getUserData != null) {
      return getUserData(this);
    }
    return orElse();
  }
}

abstract class GetUserDataEvent implements AccountEvent {
  const factory GetUserDataEvent() = _$GetUserDataEventImpl;
}

/// @nodoc
abstract class _$$LogoutUserEventImplCopyWith<$Res> {
  factory _$$LogoutUserEventImplCopyWith(_$LogoutUserEventImpl value,
          $Res Function(_$LogoutUserEventImpl) then) =
      __$$LogoutUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutUserEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$LogoutUserEventImpl>
    implements _$$LogoutUserEventImplCopyWith<$Res> {
  __$$LogoutUserEventImplCopyWithImpl(
      _$LogoutUserEventImpl _value, $Res Function(_$LogoutUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutUserEventImpl implements LogoutUserEvent {
  const _$LogoutUserEventImpl();

  @override
  String toString() {
    return 'AccountEvent.logoutUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() logoutUser,
    required TResult Function() editUserData,
    required TResult Function() authenticateUser,
    required TResult Function() clearState,
  }) {
    return logoutUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? logoutUser,
    TResult? Function()? editUserData,
    TResult? Function()? authenticateUser,
    TResult? Function()? clearState,
  }) {
    return logoutUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? logoutUser,
    TResult Function()? editUserData,
    TResult Function()? authenticateUser,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(LogoutUserEvent value) logoutUser,
    required TResult Function(EditUserDataEvent value) editUserData,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
    required TResult Function(ClearAccountStateEvent value) clearState,
  }) {
    return logoutUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(LogoutUserEvent value)? logoutUser,
    TResult? Function(EditUserDataEvent value)? editUserData,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
    TResult? Function(ClearAccountStateEvent value)? clearState,
  }) {
    return logoutUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(LogoutUserEvent value)? logoutUser,
    TResult Function(EditUserDataEvent value)? editUserData,
    TResult Function(AuthenticateUserEvent value)? authenticateUser,
    TResult Function(ClearAccountStateEvent value)? clearState,
    required TResult orElse(),
  }) {
    if (logoutUser != null) {
      return logoutUser(this);
    }
    return orElse();
  }
}

abstract class LogoutUserEvent implements AccountEvent {
  const factory LogoutUserEvent() = _$LogoutUserEventImpl;
}

/// @nodoc
abstract class _$$EditUserDataEventImplCopyWith<$Res> {
  factory _$$EditUserDataEventImplCopyWith(_$EditUserDataEventImpl value,
          $Res Function(_$EditUserDataEventImpl) then) =
      __$$EditUserDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditUserDataEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$EditUserDataEventImpl>
    implements _$$EditUserDataEventImplCopyWith<$Res> {
  __$$EditUserDataEventImplCopyWithImpl(_$EditUserDataEventImpl _value,
      $Res Function(_$EditUserDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditUserDataEventImpl implements EditUserDataEvent {
  const _$EditUserDataEventImpl();

  @override
  String toString() {
    return 'AccountEvent.editUserData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditUserDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() logoutUser,
    required TResult Function() editUserData,
    required TResult Function() authenticateUser,
    required TResult Function() clearState,
  }) {
    return editUserData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? logoutUser,
    TResult? Function()? editUserData,
    TResult? Function()? authenticateUser,
    TResult? Function()? clearState,
  }) {
    return editUserData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? logoutUser,
    TResult Function()? editUserData,
    TResult Function()? authenticateUser,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (editUserData != null) {
      return editUserData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(LogoutUserEvent value) logoutUser,
    required TResult Function(EditUserDataEvent value) editUserData,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
    required TResult Function(ClearAccountStateEvent value) clearState,
  }) {
    return editUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(LogoutUserEvent value)? logoutUser,
    TResult? Function(EditUserDataEvent value)? editUserData,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
    TResult? Function(ClearAccountStateEvent value)? clearState,
  }) {
    return editUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(LogoutUserEvent value)? logoutUser,
    TResult Function(EditUserDataEvent value)? editUserData,
    TResult Function(AuthenticateUserEvent value)? authenticateUser,
    TResult Function(ClearAccountStateEvent value)? clearState,
    required TResult orElse(),
  }) {
    if (editUserData != null) {
      return editUserData(this);
    }
    return orElse();
  }
}

abstract class EditUserDataEvent implements AccountEvent {
  const factory EditUserDataEvent() = _$EditUserDataEventImpl;
}

/// @nodoc
abstract class _$$AuthenticateUserEventImplCopyWith<$Res> {
  factory _$$AuthenticateUserEventImplCopyWith(
          _$AuthenticateUserEventImpl value,
          $Res Function(_$AuthenticateUserEventImpl) then) =
      __$$AuthenticateUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticateUserEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$AuthenticateUserEventImpl>
    implements _$$AuthenticateUserEventImplCopyWith<$Res> {
  __$$AuthenticateUserEventImplCopyWithImpl(_$AuthenticateUserEventImpl _value,
      $Res Function(_$AuthenticateUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthenticateUserEventImpl implements AuthenticateUserEvent {
  const _$AuthenticateUserEventImpl();

  @override
  String toString() {
    return 'AccountEvent.authenticateUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticateUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() logoutUser,
    required TResult Function() editUserData,
    required TResult Function() authenticateUser,
    required TResult Function() clearState,
  }) {
    return authenticateUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? logoutUser,
    TResult? Function()? editUserData,
    TResult? Function()? authenticateUser,
    TResult? Function()? clearState,
  }) {
    return authenticateUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? logoutUser,
    TResult Function()? editUserData,
    TResult Function()? authenticateUser,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (authenticateUser != null) {
      return authenticateUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(LogoutUserEvent value) logoutUser,
    required TResult Function(EditUserDataEvent value) editUserData,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
    required TResult Function(ClearAccountStateEvent value) clearState,
  }) {
    return authenticateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(LogoutUserEvent value)? logoutUser,
    TResult? Function(EditUserDataEvent value)? editUserData,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
    TResult? Function(ClearAccountStateEvent value)? clearState,
  }) {
    return authenticateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(LogoutUserEvent value)? logoutUser,
    TResult Function(EditUserDataEvent value)? editUserData,
    TResult Function(AuthenticateUserEvent value)? authenticateUser,
    TResult Function(ClearAccountStateEvent value)? clearState,
    required TResult orElse(),
  }) {
    if (authenticateUser != null) {
      return authenticateUser(this);
    }
    return orElse();
  }
}

abstract class AuthenticateUserEvent implements AccountEvent {
  const factory AuthenticateUserEvent() = _$AuthenticateUserEventImpl;
}

/// @nodoc
abstract class _$$ClearAccountStateEventImplCopyWith<$Res> {
  factory _$$ClearAccountStateEventImplCopyWith(
          _$ClearAccountStateEventImpl value,
          $Res Function(_$ClearAccountStateEventImpl) then) =
      __$$ClearAccountStateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAccountStateEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$ClearAccountStateEventImpl>
    implements _$$ClearAccountStateEventImplCopyWith<$Res> {
  __$$ClearAccountStateEventImplCopyWithImpl(
      _$ClearAccountStateEventImpl _value,
      $Res Function(_$ClearAccountStateEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearAccountStateEventImpl implements ClearAccountStateEvent {
  const _$ClearAccountStateEventImpl();

  @override
  String toString() {
    return 'AccountEvent.clearState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearAccountStateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() logoutUser,
    required TResult Function() editUserData,
    required TResult Function() authenticateUser,
    required TResult Function() clearState,
  }) {
    return clearState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? logoutUser,
    TResult? Function()? editUserData,
    TResult? Function()? authenticateUser,
    TResult? Function()? clearState,
  }) {
    return clearState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? logoutUser,
    TResult Function()? editUserData,
    TResult Function()? authenticateUser,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(LogoutUserEvent value) logoutUser,
    required TResult Function(EditUserDataEvent value) editUserData,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
    required TResult Function(ClearAccountStateEvent value) clearState,
  }) {
    return clearState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(LogoutUserEvent value)? logoutUser,
    TResult? Function(EditUserDataEvent value)? editUserData,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
    TResult? Function(ClearAccountStateEvent value)? clearState,
  }) {
    return clearState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(LogoutUserEvent value)? logoutUser,
    TResult Function(EditUserDataEvent value)? editUserData,
    TResult Function(AuthenticateUserEvent value)? authenticateUser,
    TResult Function(ClearAccountStateEvent value)? clearState,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState(this);
    }
    return orElse();
  }
}

abstract class ClearAccountStateEvent implements AccountEvent {
  const factory ClearAccountStateEvent() = _$ClearAccountStateEventImpl;
}
