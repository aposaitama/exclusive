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
        },
      });
    } catch (e) {
      rethrow;
    }
  }
}
