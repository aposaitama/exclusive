import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/cart_product_model/cart_product_model.dart';
import 'package:exclusive_web/repositories/checkout_repository/checkout_repository.dart';
import 'package:exclusive_web/services/cart_service/cart_service.dart';
import 'package:exclusive_web/services/order_service/order_service.dart';

class CheckoutService {
  final CheckoutRepository _checkoutRepository = locator<CheckoutRepository>();
  final OrderService _orderService = locator<OrderService>();
  final CartService _cartService = locator<CartService>();
  Future<bool> checkoutWithCard(
    String cardNum,
    String expMonth,
    String expYear,
    String cvv,
    List<CartProductModel> cartProducts,
    String firstName,
    String companyName,
    String streetAddress,
    String city,
    String phoneNumber,
    String emailAddress,
  ) async {
    final totalSum = cartProducts.fold<double>(
      0.0,
      (sum, product) => sum + (product.productPrice * product.quantity),
    );

    try {
      final paymentStatus = await _checkoutRepository.buyProducts(
        cardNum,
        expMonth,
        expYear,
        cvv,
        totalSum.toString(),
      );
      if (!paymentStatus) return false;

      await _orderService.createOrder(
        firstName,
        companyName,
        streetAddress,
        city,
        phoneNumber,
        emailAddress,
        cartProducts,
      );

      _cartService.clearCart();

      return true;
    } catch (e) {
      rethrow;
    }
  }
}
