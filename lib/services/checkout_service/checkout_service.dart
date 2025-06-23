import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/repositories/checkout_repository/checkout_repository.dart';

class CheckoutService {
  final CheckoutRepository _checkoutRepository = locator<CheckoutRepository>();
  Future<bool> placeOrder(
    String cardNum,
    String expMonth,
    String expYear,
    String cvv,
    String summ,
  ) async {
    try {
      final paymentStatus = await _checkoutRepository.buyProducts(
        cardNum,
        expMonth,
        expYear,
        cvv,
        summ,
      );

      return paymentStatus;
    } catch (e) {
      rethrow;
    }
  }
}
