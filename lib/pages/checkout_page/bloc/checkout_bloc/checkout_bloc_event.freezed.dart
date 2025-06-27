// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckoutBlocEvent {
  List<CartProductModel> get cartProducts => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartProductModel> cartProducts)
        checkoutOnDelivery,
    required TResult Function(
            List<CartProductModel> cartProducts,
            String cardNum,
            String expMonth,
            String expYear,
            String cvv,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        checkoutWithCard,
    required TResult Function(
            List<CartProductModel> cartProducts,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        checkoutWithCash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartProductModel> cartProducts)? checkoutOnDelivery,
    TResult? Function(
            List<CartProductModel> cartProducts,
            String cardNum,
            String expMonth,
            String expYear,
            String cvv,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCard,
    TResult? Function(
            List<CartProductModel> cartProducts,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartProductModel> cartProducts)? checkoutOnDelivery,
    TResult Function(
            List<CartProductModel> cartProducts,
            String cardNum,
            String expMonth,
            String expYear,
            String cvv,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCard,
    TResult Function(
            List<CartProductModel> cartProducts,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutOnDeliveryEvent value) checkoutOnDelivery,
    required TResult Function(CheckoutWithCardEvent value) checkoutWithCard,
    required TResult Function(CheckoutWithCashEvent value) checkoutWithCash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutOnDeliveryEvent value)? checkoutOnDelivery,
    TResult? Function(CheckoutWithCardEvent value)? checkoutWithCard,
    TResult? Function(CheckoutWithCashEvent value)? checkoutWithCash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutOnDeliveryEvent value)? checkoutOnDelivery,
    TResult Function(CheckoutWithCardEvent value)? checkoutWithCard,
    TResult Function(CheckoutWithCashEvent value)? checkoutWithCash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CheckoutBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckoutBlocEventCopyWith<CheckoutBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutBlocEventCopyWith<$Res> {
  factory $CheckoutBlocEventCopyWith(
          CheckoutBlocEvent value, $Res Function(CheckoutBlocEvent) then) =
      _$CheckoutBlocEventCopyWithImpl<$Res, CheckoutBlocEvent>;
  @useResult
  $Res call({List<CartProductModel> cartProducts});
}

/// @nodoc
class _$CheckoutBlocEventCopyWithImpl<$Res, $Val extends CheckoutBlocEvent>
    implements $CheckoutBlocEventCopyWith<$Res> {
  _$CheckoutBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckoutBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProducts = null,
  }) {
    return _then(_value.copyWith(
      cartProducts: null == cartProducts
          ? _value.cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckoutOnDeliveryEventImplCopyWith<$Res>
    implements $CheckoutBlocEventCopyWith<$Res> {
  factory _$$CheckoutOnDeliveryEventImplCopyWith(
          _$CheckoutOnDeliveryEventImpl value,
          $Res Function(_$CheckoutOnDeliveryEventImpl) then) =
      __$$CheckoutOnDeliveryEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CartProductModel> cartProducts});
}

/// @nodoc
class __$$CheckoutOnDeliveryEventImplCopyWithImpl<$Res>
    extends _$CheckoutBlocEventCopyWithImpl<$Res, _$CheckoutOnDeliveryEventImpl>
    implements _$$CheckoutOnDeliveryEventImplCopyWith<$Res> {
  __$$CheckoutOnDeliveryEventImplCopyWithImpl(
      _$CheckoutOnDeliveryEventImpl _value,
      $Res Function(_$CheckoutOnDeliveryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProducts = null,
  }) {
    return _then(_$CheckoutOnDeliveryEventImpl(
      null == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProductModel>,
    ));
  }
}

/// @nodoc

class _$CheckoutOnDeliveryEventImpl implements CheckoutOnDeliveryEvent {
  const _$CheckoutOnDeliveryEventImpl(final List<CartProductModel> cartProducts)
      : _cartProducts = cartProducts;

  final List<CartProductModel> _cartProducts;
  @override
  List<CartProductModel> get cartProducts {
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProducts);
  }

  @override
  String toString() {
    return 'CheckoutBlocEvent.checkoutOnDelivery(cartProducts: $cartProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutOnDeliveryEventImpl &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cartProducts));

  /// Create a copy of CheckoutBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutOnDeliveryEventImplCopyWith<_$CheckoutOnDeliveryEventImpl>
      get copyWith => __$$CheckoutOnDeliveryEventImplCopyWithImpl<
          _$CheckoutOnDeliveryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartProductModel> cartProducts)
        checkoutOnDelivery,
    required TResult Function(
            List<CartProductModel> cartProducts,
            String cardNum,
            String expMonth,
            String expYear,
            String cvv,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        checkoutWithCard,
    required TResult Function(
            List<CartProductModel> cartProducts,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        checkoutWithCash,
  }) {
    return checkoutOnDelivery(cartProducts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartProductModel> cartProducts)? checkoutOnDelivery,
    TResult? Function(
            List<CartProductModel> cartProducts,
            String cardNum,
            String expMonth,
            String expYear,
            String cvv,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCard,
    TResult? Function(
            List<CartProductModel> cartProducts,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCash,
  }) {
    return checkoutOnDelivery?.call(cartProducts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartProductModel> cartProducts)? checkoutOnDelivery,
    TResult Function(
            List<CartProductModel> cartProducts,
            String cardNum,
            String expMonth,
            String expYear,
            String cvv,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCard,
    TResult Function(
            List<CartProductModel> cartProducts,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCash,
    required TResult orElse(),
  }) {
    if (checkoutOnDelivery != null) {
      return checkoutOnDelivery(cartProducts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutOnDeliveryEvent value) checkoutOnDelivery,
    required TResult Function(CheckoutWithCardEvent value) checkoutWithCard,
    required TResult Function(CheckoutWithCashEvent value) checkoutWithCash,
  }) {
    return checkoutOnDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutOnDeliveryEvent value)? checkoutOnDelivery,
    TResult? Function(CheckoutWithCardEvent value)? checkoutWithCard,
    TResult? Function(CheckoutWithCashEvent value)? checkoutWithCash,
  }) {
    return checkoutOnDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutOnDeliveryEvent value)? checkoutOnDelivery,
    TResult Function(CheckoutWithCardEvent value)? checkoutWithCard,
    TResult Function(CheckoutWithCashEvent value)? checkoutWithCash,
    required TResult orElse(),
  }) {
    if (checkoutOnDelivery != null) {
      return checkoutOnDelivery(this);
    }
    return orElse();
  }
}

abstract class CheckoutOnDeliveryEvent implements CheckoutBlocEvent {
  const factory CheckoutOnDeliveryEvent(
          final List<CartProductModel> cartProducts) =
      _$CheckoutOnDeliveryEventImpl;

  @override
  List<CartProductModel> get cartProducts;

  /// Create a copy of CheckoutBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutOnDeliveryEventImplCopyWith<_$CheckoutOnDeliveryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckoutWithCardEventImplCopyWith<$Res>
    implements $CheckoutBlocEventCopyWith<$Res> {
  factory _$$CheckoutWithCardEventImplCopyWith(
          _$CheckoutWithCardEventImpl value,
          $Res Function(_$CheckoutWithCardEventImpl) then) =
      __$$CheckoutWithCardEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartProductModel> cartProducts,
      String cardNum,
      String expMonth,
      String expYear,
      String cvv,
      String firstName,
      String companyName,
      String streetAddress,
      String city,
      String phoneNumber,
      String emailAddress});
}

/// @nodoc
class __$$CheckoutWithCardEventImplCopyWithImpl<$Res>
    extends _$CheckoutBlocEventCopyWithImpl<$Res, _$CheckoutWithCardEventImpl>
    implements _$$CheckoutWithCardEventImplCopyWith<$Res> {
  __$$CheckoutWithCardEventImplCopyWithImpl(_$CheckoutWithCardEventImpl _value,
      $Res Function(_$CheckoutWithCardEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProducts = null,
    Object? cardNum = null,
    Object? expMonth = null,
    Object? expYear = null,
    Object? cvv = null,
    Object? firstName = null,
    Object? companyName = null,
    Object? streetAddress = null,
    Object? city = null,
    Object? phoneNumber = null,
    Object? emailAddress = null,
  }) {
    return _then(_$CheckoutWithCardEventImpl(
      null == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProductModel>,
      null == cardNum
          ? _value.cardNum
          : cardNum // ignore: cast_nullable_to_non_nullable
              as String,
      null == expMonth
          ? _value.expMonth
          : expMonth // ignore: cast_nullable_to_non_nullable
              as String,
      null == expYear
          ? _value.expYear
          : expYear // ignore: cast_nullable_to_non_nullable
              as String,
      null == cvv
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
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

class _$CheckoutWithCardEventImpl implements CheckoutWithCardEvent {
  const _$CheckoutWithCardEventImpl(
      final List<CartProductModel> cartProducts,
      this.cardNum,
      this.expMonth,
      this.expYear,
      this.cvv,
      this.firstName,
      this.companyName,
      this.streetAddress,
      this.city,
      this.phoneNumber,
      this.emailAddress)
      : _cartProducts = cartProducts;

  final List<CartProductModel> _cartProducts;
  @override
  List<CartProductModel> get cartProducts {
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProducts);
  }

  @override
  final String cardNum;
  @override
  final String expMonth;
  @override
  final String expYear;
  @override
  final String cvv;
  @override
  final String firstName;
  @override
  final String companyName;
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
    return 'CheckoutBlocEvent.checkoutWithCard(cartProducts: $cartProducts, cardNum: $cardNum, expMonth: $expMonth, expYear: $expYear, cvv: $cvv, firstName: $firstName, companyName: $companyName, streetAddress: $streetAddress, city: $city, phoneNumber: $phoneNumber, emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutWithCardEventImpl &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts) &&
            (identical(other.cardNum, cardNum) || other.cardNum == cardNum) &&
            (identical(other.expMonth, expMonth) ||
                other.expMonth == expMonth) &&
            (identical(other.expYear, expYear) || other.expYear == expYear) &&
            (identical(other.cvv, cvv) || other.cvv == cvv) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.streetAddress, streetAddress) ||
                other.streetAddress == streetAddress) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartProducts),
      cardNum,
      expMonth,
      expYear,
      cvv,
      firstName,
      companyName,
      streetAddress,
      city,
      phoneNumber,
      emailAddress);

  /// Create a copy of CheckoutBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutWithCardEventImplCopyWith<_$CheckoutWithCardEventImpl>
      get copyWith => __$$CheckoutWithCardEventImplCopyWithImpl<
          _$CheckoutWithCardEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartProductModel> cartProducts)
        checkoutOnDelivery,
    required TResult Function(
            List<CartProductModel> cartProducts,
            String cardNum,
            String expMonth,
            String expYear,
            String cvv,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        checkoutWithCard,
    required TResult Function(
            List<CartProductModel> cartProducts,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        checkoutWithCash,
  }) {
    return checkoutWithCard(cartProducts, cardNum, expMonth, expYear, cvv,
        firstName, companyName, streetAddress, city, phoneNumber, emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartProductModel> cartProducts)? checkoutOnDelivery,
    TResult? Function(
            List<CartProductModel> cartProducts,
            String cardNum,
            String expMonth,
            String expYear,
            String cvv,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCard,
    TResult? Function(
            List<CartProductModel> cartProducts,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCash,
  }) {
    return checkoutWithCard?.call(cartProducts, cardNum, expMonth, expYear, cvv,
        firstName, companyName, streetAddress, city, phoneNumber, emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartProductModel> cartProducts)? checkoutOnDelivery,
    TResult Function(
            List<CartProductModel> cartProducts,
            String cardNum,
            String expMonth,
            String expYear,
            String cvv,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCard,
    TResult Function(
            List<CartProductModel> cartProducts,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCash,
    required TResult orElse(),
  }) {
    if (checkoutWithCard != null) {
      return checkoutWithCard(
          cartProducts,
          cardNum,
          expMonth,
          expYear,
          cvv,
          firstName,
          companyName,
          streetAddress,
          city,
          phoneNumber,
          emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutOnDeliveryEvent value) checkoutOnDelivery,
    required TResult Function(CheckoutWithCardEvent value) checkoutWithCard,
    required TResult Function(CheckoutWithCashEvent value) checkoutWithCash,
  }) {
    return checkoutWithCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutOnDeliveryEvent value)? checkoutOnDelivery,
    TResult? Function(CheckoutWithCardEvent value)? checkoutWithCard,
    TResult? Function(CheckoutWithCashEvent value)? checkoutWithCash,
  }) {
    return checkoutWithCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutOnDeliveryEvent value)? checkoutOnDelivery,
    TResult Function(CheckoutWithCardEvent value)? checkoutWithCard,
    TResult Function(CheckoutWithCashEvent value)? checkoutWithCash,
    required TResult orElse(),
  }) {
    if (checkoutWithCard != null) {
      return checkoutWithCard(this);
    }
    return orElse();
  }
}

abstract class CheckoutWithCardEvent implements CheckoutBlocEvent {
  const factory CheckoutWithCardEvent(
      final List<CartProductModel> cartProducts,
      final String cardNum,
      final String expMonth,
      final String expYear,
      final String cvv,
      final String firstName,
      final String companyName,
      final String streetAddress,
      final String city,
      final String phoneNumber,
      final String emailAddress) = _$CheckoutWithCardEventImpl;

  @override
  List<CartProductModel> get cartProducts;
  String get cardNum;
  String get expMonth;
  String get expYear;
  String get cvv;
  String get firstName;
  String get companyName;
  String get streetAddress;
  String get city;
  String get phoneNumber;
  String get emailAddress;

  /// Create a copy of CheckoutBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutWithCardEventImplCopyWith<_$CheckoutWithCardEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckoutWithCashEventImplCopyWith<$Res>
    implements $CheckoutBlocEventCopyWith<$Res> {
  factory _$$CheckoutWithCashEventImplCopyWith(
          _$CheckoutWithCashEventImpl value,
          $Res Function(_$CheckoutWithCashEventImpl) then) =
      __$$CheckoutWithCashEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartProductModel> cartProducts,
      String firstName,
      String companyName,
      String streetAddress,
      String city,
      String phoneNumber,
      String emailAddress});
}

/// @nodoc
class __$$CheckoutWithCashEventImplCopyWithImpl<$Res>
    extends _$CheckoutBlocEventCopyWithImpl<$Res, _$CheckoutWithCashEventImpl>
    implements _$$CheckoutWithCashEventImplCopyWith<$Res> {
  __$$CheckoutWithCashEventImplCopyWithImpl(_$CheckoutWithCashEventImpl _value,
      $Res Function(_$CheckoutWithCashEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckoutBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartProducts = null,
    Object? firstName = null,
    Object? companyName = null,
    Object? streetAddress = null,
    Object? city = null,
    Object? phoneNumber = null,
    Object? emailAddress = null,
  }) {
    return _then(_$CheckoutWithCashEventImpl(
      null == cartProducts
          ? _value._cartProducts
          : cartProducts // ignore: cast_nullable_to_non_nullable
              as List<CartProductModel>,
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
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

class _$CheckoutWithCashEventImpl implements CheckoutWithCashEvent {
  const _$CheckoutWithCashEventImpl(
      final List<CartProductModel> cartProducts,
      this.firstName,
      this.companyName,
      this.streetAddress,
      this.city,
      this.phoneNumber,
      this.emailAddress)
      : _cartProducts = cartProducts;

  final List<CartProductModel> _cartProducts;
  @override
  List<CartProductModel> get cartProducts {
    if (_cartProducts is EqualUnmodifiableListView) return _cartProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartProducts);
  }

  @override
  final String firstName;
  @override
  final String companyName;
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
    return 'CheckoutBlocEvent.checkoutWithCash(cartProducts: $cartProducts, firstName: $firstName, companyName: $companyName, streetAddress: $streetAddress, city: $city, phoneNumber: $phoneNumber, emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutWithCashEventImpl &&
            const DeepCollectionEquality()
                .equals(other._cartProducts, _cartProducts) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.streetAddress, streetAddress) ||
                other.streetAddress == streetAddress) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartProducts),
      firstName,
      companyName,
      streetAddress,
      city,
      phoneNumber,
      emailAddress);

  /// Create a copy of CheckoutBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutWithCashEventImplCopyWith<_$CheckoutWithCashEventImpl>
      get copyWith => __$$CheckoutWithCashEventImplCopyWithImpl<
          _$CheckoutWithCashEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CartProductModel> cartProducts)
        checkoutOnDelivery,
    required TResult Function(
            List<CartProductModel> cartProducts,
            String cardNum,
            String expMonth,
            String expYear,
            String cvv,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        checkoutWithCard,
    required TResult Function(
            List<CartProductModel> cartProducts,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)
        checkoutWithCash,
  }) {
    return checkoutWithCash(cartProducts, firstName, companyName, streetAddress,
        city, phoneNumber, emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CartProductModel> cartProducts)? checkoutOnDelivery,
    TResult? Function(
            List<CartProductModel> cartProducts,
            String cardNum,
            String expMonth,
            String expYear,
            String cvv,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCard,
    TResult? Function(
            List<CartProductModel> cartProducts,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCash,
  }) {
    return checkoutWithCash?.call(cartProducts, firstName, companyName,
        streetAddress, city, phoneNumber, emailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CartProductModel> cartProducts)? checkoutOnDelivery,
    TResult Function(
            List<CartProductModel> cartProducts,
            String cardNum,
            String expMonth,
            String expYear,
            String cvv,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCard,
    TResult Function(
            List<CartProductModel> cartProducts,
            String firstName,
            String companyName,
            String streetAddress,
            String city,
            String phoneNumber,
            String emailAddress)?
        checkoutWithCash,
    required TResult orElse(),
  }) {
    if (checkoutWithCash != null) {
      return checkoutWithCash(cartProducts, firstName, companyName,
          streetAddress, city, phoneNumber, emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckoutOnDeliveryEvent value) checkoutOnDelivery,
    required TResult Function(CheckoutWithCardEvent value) checkoutWithCard,
    required TResult Function(CheckoutWithCashEvent value) checkoutWithCash,
  }) {
    return checkoutWithCash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckoutOnDeliveryEvent value)? checkoutOnDelivery,
    TResult? Function(CheckoutWithCardEvent value)? checkoutWithCard,
    TResult? Function(CheckoutWithCashEvent value)? checkoutWithCash,
  }) {
    return checkoutWithCash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckoutOnDeliveryEvent value)? checkoutOnDelivery,
    TResult Function(CheckoutWithCardEvent value)? checkoutWithCard,
    TResult Function(CheckoutWithCashEvent value)? checkoutWithCash,
    required TResult orElse(),
  }) {
    if (checkoutWithCash != null) {
      return checkoutWithCash(this);
    }
    return orElse();
  }
}

abstract class CheckoutWithCashEvent implements CheckoutBlocEvent {
  const factory CheckoutWithCashEvent(
      final List<CartProductModel> cartProducts,
      final String firstName,
      final String companyName,
      final String streetAddress,
      final String city,
      final String phoneNumber,
      final String emailAddress) = _$CheckoutWithCashEventImpl;

  @override
  List<CartProductModel> get cartProducts;
  String get firstName;
  String get companyName;
  String get streetAddress;
  String get city;
  String get phoneNumber;
  String get emailAddress;

  /// Create a copy of CheckoutBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckoutWithCashEventImplCopyWith<_$CheckoutWithCashEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
