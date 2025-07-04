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
    required TResult Function(Map<String, dynamic> data) editUserData,
    required TResult Function(
            String firstName,
            String lastName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        addAddress,
    required TResult Function() getAddress,
    required TResult Function(String newAddressDocumentID) setDefaultAddress,
    required TResult Function() authenticateUser,
    required TResult Function() clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? logoutUser,
    TResult? Function(Map<String, dynamic> data)? editUserData,
    TResult? Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String newAddressDocumentID)? setDefaultAddress,
    TResult? Function()? authenticateUser,
    TResult? Function()? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? logoutUser,
    TResult Function(Map<String, dynamic> data)? editUserData,
    TResult Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult Function()? getAddress,
    TResult Function(String newAddressDocumentID)? setDefaultAddress,
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
    required TResult Function(AddUserAddressEvent value) addAddress,
    required TResult Function(GetUserAddressEvent value) getAddress,
    required TResult Function(SetDefaultUserAddressEvent value)
        setDefaultAddress,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
    required TResult Function(ClearAccountStateEvent value) clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(LogoutUserEvent value)? logoutUser,
    TResult? Function(EditUserDataEvent value)? editUserData,
    TResult? Function(AddUserAddressEvent value)? addAddress,
    TResult? Function(GetUserAddressEvent value)? getAddress,
    TResult? Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
    TResult? Function(ClearAccountStateEvent value)? clearState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(LogoutUserEvent value)? logoutUser,
    TResult Function(EditUserDataEvent value)? editUserData,
    TResult Function(AddUserAddressEvent value)? addAddress,
    TResult Function(GetUserAddressEvent value)? getAddress,
    TResult Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
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
    required TResult Function(Map<String, dynamic> data) editUserData,
    required TResult Function(
            String firstName,
            String lastName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        addAddress,
    required TResult Function() getAddress,
    required TResult Function(String newAddressDocumentID) setDefaultAddress,
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
    TResult? Function(Map<String, dynamic> data)? editUserData,
    TResult? Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String newAddressDocumentID)? setDefaultAddress,
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
    TResult Function(Map<String, dynamic> data)? editUserData,
    TResult Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult Function()? getAddress,
    TResult Function(String newAddressDocumentID)? setDefaultAddress,
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
    required TResult Function(AddUserAddressEvent value) addAddress,
    required TResult Function(GetUserAddressEvent value) getAddress,
    required TResult Function(SetDefaultUserAddressEvent value)
        setDefaultAddress,
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
    TResult? Function(AddUserAddressEvent value)? addAddress,
    TResult? Function(GetUserAddressEvent value)? getAddress,
    TResult? Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
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
    TResult Function(AddUserAddressEvent value)? addAddress,
    TResult Function(GetUserAddressEvent value)? getAddress,
    TResult Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
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
    required TResult Function(Map<String, dynamic> data) editUserData,
    required TResult Function(
            String firstName,
            String lastName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        addAddress,
    required TResult Function() getAddress,
    required TResult Function(String newAddressDocumentID) setDefaultAddress,
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
    TResult? Function(Map<String, dynamic> data)? editUserData,
    TResult? Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String newAddressDocumentID)? setDefaultAddress,
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
    TResult Function(Map<String, dynamic> data)? editUserData,
    TResult Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult Function()? getAddress,
    TResult Function(String newAddressDocumentID)? setDefaultAddress,
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
    required TResult Function(AddUserAddressEvent value) addAddress,
    required TResult Function(GetUserAddressEvent value) getAddress,
    required TResult Function(SetDefaultUserAddressEvent value)
        setDefaultAddress,
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
    TResult? Function(AddUserAddressEvent value)? addAddress,
    TResult? Function(GetUserAddressEvent value)? getAddress,
    TResult? Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
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
    TResult Function(AddUserAddressEvent value)? addAddress,
    TResult Function(GetUserAddressEvent value)? getAddress,
    TResult Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
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
  @useResult
  $Res call({Map<String, dynamic> data});
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EditUserDataEventImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$EditUserDataEventImpl implements EditUserDataEvent {
  const _$EditUserDataEventImpl(final Map<String, dynamic> data) : _data = data;

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'AccountEvent.editUserData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUserDataEventImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUserDataEventImplCopyWith<_$EditUserDataEventImpl> get copyWith =>
      __$$EditUserDataEventImplCopyWithImpl<_$EditUserDataEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() logoutUser,
    required TResult Function(Map<String, dynamic> data) editUserData,
    required TResult Function(
            String firstName,
            String lastName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        addAddress,
    required TResult Function() getAddress,
    required TResult Function(String newAddressDocumentID) setDefaultAddress,
    required TResult Function() authenticateUser,
    required TResult Function() clearState,
  }) {
    return editUserData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? logoutUser,
    TResult? Function(Map<String, dynamic> data)? editUserData,
    TResult? Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String newAddressDocumentID)? setDefaultAddress,
    TResult? Function()? authenticateUser,
    TResult? Function()? clearState,
  }) {
    return editUserData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? logoutUser,
    TResult Function(Map<String, dynamic> data)? editUserData,
    TResult Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult Function()? getAddress,
    TResult Function(String newAddressDocumentID)? setDefaultAddress,
    TResult Function()? authenticateUser,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (editUserData != null) {
      return editUserData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(LogoutUserEvent value) logoutUser,
    required TResult Function(EditUserDataEvent value) editUserData,
    required TResult Function(AddUserAddressEvent value) addAddress,
    required TResult Function(GetUserAddressEvent value) getAddress,
    required TResult Function(SetDefaultUserAddressEvent value)
        setDefaultAddress,
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
    TResult? Function(AddUserAddressEvent value)? addAddress,
    TResult? Function(GetUserAddressEvent value)? getAddress,
    TResult? Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
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
    TResult Function(AddUserAddressEvent value)? addAddress,
    TResult Function(GetUserAddressEvent value)? getAddress,
    TResult Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
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
  const factory EditUserDataEvent(final Map<String, dynamic> data) =
      _$EditUserDataEventImpl;

  Map<String, dynamic> get data;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditUserDataEventImplCopyWith<_$EditUserDataEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddUserAddressEventImplCopyWith<$Res> {
  factory _$$AddUserAddressEventImplCopyWith(_$AddUserAddressEventImpl value,
          $Res Function(_$AddUserAddressEventImpl) then) =
      __$$AddUserAddressEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String streetAddress,
      String city,
      String phoneNumber,
      String emailAddress});
}

/// @nodoc
class __$$AddUserAddressEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$AddUserAddressEventImpl>
    implements _$$AddUserAddressEventImplCopyWith<$Res> {
  __$$AddUserAddressEventImplCopyWithImpl(_$AddUserAddressEventImpl _value,
      $Res Function(_$AddUserAddressEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? streetAddress = null,
    Object? city = null,
    Object? phoneNumber = null,
    Object? emailAddress = null,
  }) {
    return _then(_$AddUserAddressEventImpl(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddUserAddressEventImpl implements AddUserAddressEvent {
  const _$AddUserAddressEventImpl(this.firstName, this.lastName,
      this.streetAddress, this.city, this.phoneNumber, this.emailAddress);

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String streetAddress;
  @override
  final String city;
  @override
  final String phoneNumber;
  @override
  final String emailAddress;

  @override
  String toString() {
    return 'AccountEvent.addAddress(firstName: $firstName, lastName: $lastName, streetAddress: $streetAddress, city: $city, phoneNumber: $phoneNumber, emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserAddressEventImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.streetAddress, streetAddress) ||
                other.streetAddress == streetAddress) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName,
      streetAddress, city, phoneNumber, emailAddress);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserAddressEventImplCopyWith<_$AddUserAddressEventImpl> get copyWith =>
      __$$AddUserAddressEventImplCopyWithImpl<_$AddUserAddressEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() logoutUser,
    required TResult Function(Map<String, dynamic> data) editUserData,
    required TResult Function(
            String firstName,
            String lastName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        addAddress,
    required TResult Function() getAddress,
    required TResult Function(String newAddressDocumentID) setDefaultAddress,
    required TResult Function() authenticateUser,
    required TResult Function() clearState,
  }) {
    return addAddress(
        firstName, lastName, streetAddress, city, phoneNumber, emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? logoutUser,
    TResult? Function(Map<String, dynamic> data)? editUserData,
    TResult? Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String newAddressDocumentID)? setDefaultAddress,
    TResult? Function()? authenticateUser,
    TResult? Function()? clearState,
  }) {
    return addAddress?.call(
        firstName, lastName, streetAddress, city, phoneNumber, emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? logoutUser,
    TResult Function(Map<String, dynamic> data)? editUserData,
    TResult Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult Function()? getAddress,
    TResult Function(String newAddressDocumentID)? setDefaultAddress,
    TResult Function()? authenticateUser,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(
          firstName, lastName, streetAddress, city, phoneNumber, emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(LogoutUserEvent value) logoutUser,
    required TResult Function(EditUserDataEvent value) editUserData,
    required TResult Function(AddUserAddressEvent value) addAddress,
    required TResult Function(GetUserAddressEvent value) getAddress,
    required TResult Function(SetDefaultUserAddressEvent value)
        setDefaultAddress,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
    required TResult Function(ClearAccountStateEvent value) clearState,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(LogoutUserEvent value)? logoutUser,
    TResult? Function(EditUserDataEvent value)? editUserData,
    TResult? Function(AddUserAddressEvent value)? addAddress,
    TResult? Function(GetUserAddressEvent value)? getAddress,
    TResult? Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
    TResult? Function(ClearAccountStateEvent value)? clearState,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(LogoutUserEvent value)? logoutUser,
    TResult Function(EditUserDataEvent value)? editUserData,
    TResult Function(AddUserAddressEvent value)? addAddress,
    TResult Function(GetUserAddressEvent value)? getAddress,
    TResult Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
    TResult Function(AuthenticateUserEvent value)? authenticateUser,
    TResult Function(ClearAccountStateEvent value)? clearState,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(this);
    }
    return orElse();
  }
}

abstract class AddUserAddressEvent implements AccountEvent {
  const factory AddUserAddressEvent(
      final String firstName,
      final String lastName,
      final String streetAddress,
      final String city,
      final String phoneNumber,
      final String emailAddress) = _$AddUserAddressEventImpl;

  String get firstName;
  String get lastName;
  String get streetAddress;
  String get city;
  String get phoneNumber;
  String get emailAddress;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserAddressEventImplCopyWith<_$AddUserAddressEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserAddressEventImplCopyWith<$Res> {
  factory _$$GetUserAddressEventImplCopyWith(_$GetUserAddressEventImpl value,
          $Res Function(_$GetUserAddressEventImpl) then) =
      __$$GetUserAddressEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserAddressEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$GetUserAddressEventImpl>
    implements _$$GetUserAddressEventImplCopyWith<$Res> {
  __$$GetUserAddressEventImplCopyWithImpl(_$GetUserAddressEventImpl _value,
      $Res Function(_$GetUserAddressEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserAddressEventImpl implements GetUserAddressEvent {
  const _$GetUserAddressEventImpl();

  @override
  String toString() {
    return 'AccountEvent.getAddress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserAddressEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() logoutUser,
    required TResult Function(Map<String, dynamic> data) editUserData,
    required TResult Function(
            String firstName,
            String lastName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        addAddress,
    required TResult Function() getAddress,
    required TResult Function(String newAddressDocumentID) setDefaultAddress,
    required TResult Function() authenticateUser,
    required TResult Function() clearState,
  }) {
    return getAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? logoutUser,
    TResult? Function(Map<String, dynamic> data)? editUserData,
    TResult? Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String newAddressDocumentID)? setDefaultAddress,
    TResult? Function()? authenticateUser,
    TResult? Function()? clearState,
  }) {
    return getAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? logoutUser,
    TResult Function(Map<String, dynamic> data)? editUserData,
    TResult Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult Function()? getAddress,
    TResult Function(String newAddressDocumentID)? setDefaultAddress,
    TResult Function()? authenticateUser,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(LogoutUserEvent value) logoutUser,
    required TResult Function(EditUserDataEvent value) editUserData,
    required TResult Function(AddUserAddressEvent value) addAddress,
    required TResult Function(GetUserAddressEvent value) getAddress,
    required TResult Function(SetDefaultUserAddressEvent value)
        setDefaultAddress,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
    required TResult Function(ClearAccountStateEvent value) clearState,
  }) {
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(LogoutUserEvent value)? logoutUser,
    TResult? Function(EditUserDataEvent value)? editUserData,
    TResult? Function(AddUserAddressEvent value)? addAddress,
    TResult? Function(GetUserAddressEvent value)? getAddress,
    TResult? Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
    TResult? Function(ClearAccountStateEvent value)? clearState,
  }) {
    return getAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(LogoutUserEvent value)? logoutUser,
    TResult Function(EditUserDataEvent value)? editUserData,
    TResult Function(AddUserAddressEvent value)? addAddress,
    TResult Function(GetUserAddressEvent value)? getAddress,
    TResult Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
    TResult Function(AuthenticateUserEvent value)? authenticateUser,
    TResult Function(ClearAccountStateEvent value)? clearState,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(this);
    }
    return orElse();
  }
}

abstract class GetUserAddressEvent implements AccountEvent {
  const factory GetUserAddressEvent() = _$GetUserAddressEventImpl;
}

/// @nodoc
abstract class _$$SetDefaultUserAddressEventImplCopyWith<$Res> {
  factory _$$SetDefaultUserAddressEventImplCopyWith(
          _$SetDefaultUserAddressEventImpl value,
          $Res Function(_$SetDefaultUserAddressEventImpl) then) =
      __$$SetDefaultUserAddressEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newAddressDocumentID});
}

/// @nodoc
class __$$SetDefaultUserAddressEventImplCopyWithImpl<$Res>
    extends _$AccountEventCopyWithImpl<$Res, _$SetDefaultUserAddressEventImpl>
    implements _$$SetDefaultUserAddressEventImplCopyWith<$Res> {
  __$$SetDefaultUserAddressEventImplCopyWithImpl(
      _$SetDefaultUserAddressEventImpl _value,
      $Res Function(_$SetDefaultUserAddressEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newAddressDocumentID = null,
  }) {
    return _then(_$SetDefaultUserAddressEventImpl(
      null == newAddressDocumentID
          ? _value.newAddressDocumentID
          : newAddressDocumentID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetDefaultUserAddressEventImpl implements SetDefaultUserAddressEvent {
  const _$SetDefaultUserAddressEventImpl(this.newAddressDocumentID);

  @override
  final String newAddressDocumentID;

  @override
  String toString() {
    return 'AccountEvent.setDefaultAddress(newAddressDocumentID: $newAddressDocumentID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetDefaultUserAddressEventImpl &&
            (identical(other.newAddressDocumentID, newAddressDocumentID) ||
                other.newAddressDocumentID == newAddressDocumentID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newAddressDocumentID);

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetDefaultUserAddressEventImplCopyWith<_$SetDefaultUserAddressEventImpl>
      get copyWith => __$$SetDefaultUserAddressEventImplCopyWithImpl<
          _$SetDefaultUserAddressEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getUserData,
    required TResult Function() logoutUser,
    required TResult Function(Map<String, dynamic> data) editUserData,
    required TResult Function(
            String firstName,
            String lastName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        addAddress,
    required TResult Function() getAddress,
    required TResult Function(String newAddressDocumentID) setDefaultAddress,
    required TResult Function() authenticateUser,
    required TResult Function() clearState,
  }) {
    return setDefaultAddress(newAddressDocumentID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getUserData,
    TResult? Function()? logoutUser,
    TResult? Function(Map<String, dynamic> data)? editUserData,
    TResult? Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String newAddressDocumentID)? setDefaultAddress,
    TResult? Function()? authenticateUser,
    TResult? Function()? clearState,
  }) {
    return setDefaultAddress?.call(newAddressDocumentID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getUserData,
    TResult Function()? logoutUser,
    TResult Function(Map<String, dynamic> data)? editUserData,
    TResult Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult Function()? getAddress,
    TResult Function(String newAddressDocumentID)? setDefaultAddress,
    TResult Function()? authenticateUser,
    TResult Function()? clearState,
    required TResult orElse(),
  }) {
    if (setDefaultAddress != null) {
      return setDefaultAddress(newAddressDocumentID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserDataEvent value) getUserData,
    required TResult Function(LogoutUserEvent value) logoutUser,
    required TResult Function(EditUserDataEvent value) editUserData,
    required TResult Function(AddUserAddressEvent value) addAddress,
    required TResult Function(GetUserAddressEvent value) getAddress,
    required TResult Function(SetDefaultUserAddressEvent value)
        setDefaultAddress,
    required TResult Function(AuthenticateUserEvent value) authenticateUser,
    required TResult Function(ClearAccountStateEvent value) clearState,
  }) {
    return setDefaultAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserDataEvent value)? getUserData,
    TResult? Function(LogoutUserEvent value)? logoutUser,
    TResult? Function(EditUserDataEvent value)? editUserData,
    TResult? Function(AddUserAddressEvent value)? addAddress,
    TResult? Function(GetUserAddressEvent value)? getAddress,
    TResult? Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
    TResult? Function(AuthenticateUserEvent value)? authenticateUser,
    TResult? Function(ClearAccountStateEvent value)? clearState,
  }) {
    return setDefaultAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserDataEvent value)? getUserData,
    TResult Function(LogoutUserEvent value)? logoutUser,
    TResult Function(EditUserDataEvent value)? editUserData,
    TResult Function(AddUserAddressEvent value)? addAddress,
    TResult Function(GetUserAddressEvent value)? getAddress,
    TResult Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
    TResult Function(AuthenticateUserEvent value)? authenticateUser,
    TResult Function(ClearAccountStateEvent value)? clearState,
    required TResult orElse(),
  }) {
    if (setDefaultAddress != null) {
      return setDefaultAddress(this);
    }
    return orElse();
  }
}

abstract class SetDefaultUserAddressEvent implements AccountEvent {
  const factory SetDefaultUserAddressEvent(final String newAddressDocumentID) =
      _$SetDefaultUserAddressEventImpl;

  String get newAddressDocumentID;

  /// Create a copy of AccountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetDefaultUserAddressEventImplCopyWith<_$SetDefaultUserAddressEventImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(Map<String, dynamic> data) editUserData,
    required TResult Function(
            String firstName,
            String lastName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        addAddress,
    required TResult Function() getAddress,
    required TResult Function(String newAddressDocumentID) setDefaultAddress,
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
    TResult? Function(Map<String, dynamic> data)? editUserData,
    TResult? Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String newAddressDocumentID)? setDefaultAddress,
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
    TResult Function(Map<String, dynamic> data)? editUserData,
    TResult Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult Function()? getAddress,
    TResult Function(String newAddressDocumentID)? setDefaultAddress,
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
    required TResult Function(AddUserAddressEvent value) addAddress,
    required TResult Function(GetUserAddressEvent value) getAddress,
    required TResult Function(SetDefaultUserAddressEvent value)
        setDefaultAddress,
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
    TResult? Function(AddUserAddressEvent value)? addAddress,
    TResult? Function(GetUserAddressEvent value)? getAddress,
    TResult? Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
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
    TResult Function(AddUserAddressEvent value)? addAddress,
    TResult Function(GetUserAddressEvent value)? getAddress,
    TResult Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
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
    required TResult Function(Map<String, dynamic> data) editUserData,
    required TResult Function(
            String firstName,
            String lastName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        addAddress,
    required TResult Function() getAddress,
    required TResult Function(String newAddressDocumentID) setDefaultAddress,
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
    TResult? Function(Map<String, dynamic> data)? editUserData,
    TResult? Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult? Function()? getAddress,
    TResult? Function(String newAddressDocumentID)? setDefaultAddress,
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
    TResult Function(Map<String, dynamic> data)? editUserData,
    TResult Function(String firstName, String lastName, String streetAddress,
            String city, String phoneNumber, String emailAddress)?
        addAddress,
    TResult Function()? getAddress,
    TResult Function(String newAddressDocumentID)? setDefaultAddress,
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
    required TResult Function(AddUserAddressEvent value) addAddress,
    required TResult Function(GetUserAddressEvent value) getAddress,
    required TResult Function(SetDefaultUserAddressEvent value)
        setDefaultAddress,
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
    TResult? Function(AddUserAddressEvent value)? addAddress,
    TResult? Function(GetUserAddressEvent value)? getAddress,
    TResult? Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
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
    TResult Function(AddUserAddressEvent value)? addAddress,
    TResult Function(GetUserAddressEvent value)? getAddress,
    TResult Function(SetDefaultUserAddressEvent value)? setDefaultAddress,
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
