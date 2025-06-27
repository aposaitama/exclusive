import 'package:dio/dio.dart';
import 'package:exclusive_web/di/service_locator.dart';

class OrderRepository {
  final Dio _dio = locator<Dio>();

  Future<void> placeOrder(
    String firstName,
    String companyName,
    String streetAddress,
    String city,
    String phoneNumber,
    String emailAddress,
    List<int> productsId,
    List<int> orderItemsId,
  ) async {
    try {
      await _dio.post('/orders', data: {
        "data": {
          "firstName": firstName,
          "companyName": companyName,
          "streetAddress": streetAddress,
          "city": city,
          "phoneNumber": phoneNumber,
          "emailAddress": emailAddress,
          "products": productsId,
          "order_items": orderItemsId,
        },
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<int> createOrderItem(
    String productId,
    int quantity,
    String product_color,
    String productSize,
  ) async {
    try {
      final response = await _dio.post(
        '/order-items',
        data: {
          "data": {
            "product": productId,
            "quantity": quantity,
            "product_color": product_color,
            "productSize": productSize,
          },
        },
      );
      return response.data['data']['id'];
    } catch (e) {
      rethrow;
    }
  }
}
