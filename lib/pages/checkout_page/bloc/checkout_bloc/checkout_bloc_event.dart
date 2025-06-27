import 'package:exclusive_web/models/cart_product_model/cart_product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_bloc_event.freezed.dart';

@freezed
class CheckoutBlocEvent with _$CheckoutBlocEvent {
  const factory CheckoutBlocEvent.checkoutOnDelivery(
    List<CartProductModel> cartProducts,
  ) = CheckoutOnDeliveryEvent;
  const factory CheckoutBlocEvent.checkoutWithCard(
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
    String emailAddress,
  ) = CheckoutWithCardEvent;

  const factory CheckoutBlocEvent.checkoutWithCash(
    List<CartProductModel> cartProducts,
    String firstName,
    String companyName,
    String streetAddress,
    String city,
    String phoneNumber,
    String emailAddress,
  ) = CheckoutWithCashEvent;
}
