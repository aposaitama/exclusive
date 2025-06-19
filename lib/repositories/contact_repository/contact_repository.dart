import 'package:dio/dio.dart';
import 'package:exclusive_web/di/service_locator.dart';

class ContactRepository {
  final Dio _dio = locator<Dio>();

  Future<void> sendMessage(
    String userName,
    String userEmail,
    String userPhone,
    String userMessage,
  ) async {
    await _dio.post(
      '/contact-messages',
      data: {
        "data": {
          "userName": userName,
          "userEmail": userEmail,
          "userPhone": userPhone,
          "userMessage": userMessage,
        },
      },
    );
  }
}
