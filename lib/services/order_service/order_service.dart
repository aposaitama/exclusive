import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/cart_product_model/cart_product_model.dart';
import 'package:exclusive_web/repositories/order_repository/order_repository.dart';

class OrderService {
  final OrderRepository _orderRepository = locator<OrderRepository>();

  Future<void> createOrder(
    String firstName,
    String companyName,
    String streetAddress,
    String city,
    String phoneNumber,
    String emailAddress,
    List<CartProductModel> productsInCart,
  ) async {
    final productIds = productsInCart.map((e) => e.id).toList();
    List<int> orderItemIds = [];
    for (final e in productsInCart) {
      final createdOrderItem = await _orderRepository.createOrderItem(
          e.id.toString(),
          e.quantity,
          e.colorsSelectedId.toString(),
          e.productSize ?? '');
      orderItemIds.add(createdOrderItem);
    }

    try {
      await _orderRepository.placeOrder(
        firstName,
        companyName,
        streetAddress,
        city,
        phoneNumber,
        emailAddress,
        productIds,
        orderItemIds,
      );
    } catch (e) {
      rethrow;
    }
  }
}
