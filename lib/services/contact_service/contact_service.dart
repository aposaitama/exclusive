import 'package:dio/dio.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/repositories/contact_repository/contact_repository.dart';

class ContactService {
  final _contactRepo = locator<ContactRepository>();

  Future<void> sendMessage(
    String userName,
    String userEmail,
    String userPhone,
    String userMessage,
  ) async {
    try {
      await _contactRepo.sendMessage(
        userName,
        userEmail,
        userPhone,
        userMessage,
      );
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Sending failed: $message';
    } catch (e) {
      throw 'Sending failed';
    }
  }
}
