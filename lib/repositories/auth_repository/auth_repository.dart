import 'package:dio/dio.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

//TODO refactor.
class AuthRepository {
  final SharedPreferences prefs = locator<SharedPreferences>();
  final Dio _dio = locator<Dio>();
  final _sharedPreferencesService = locator<SharedPreferencesService>();
  Future<void> saveToken(String token) async {
    await _sharedPreferencesService.saveToken(token);
  }

  //delete token when logout
  Future<void> removeToken() async {
    await _sharedPreferencesService.removeToken();
  }

  //get jwt-token
  Future<String?> getToken() async {
    final userToken = await _sharedPreferencesService.getToken();
    if (userToken != null) {
      return userToken;
    }
    return null;
  }

  Future<String> register(
    String userName,
    String email,
    String password,
  ) async {
    try {
      final response = await _dio.post(
        '/auth/local/register',
        data: {
          'username': userName,
          'email': email,
          'password': password,
        },
      );
      final token = response.data['jwt'];
      final userId = response.data['user']['id'];

      await _sharedPreferencesService.saveUserId(
        userId,
      );
      await saveToken(
        token,
      );

      return token;
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Register failed: $message';
    } catch (e) {
      throw 'Register failed';
    }
  }

  Future<String> login(String email, String password) async {
    try {
      final response = await _dio.post(
        '/auth/local',
        data: {'identifier': email, 'password': password},
      );

      final token = response.data['jwt'];
      final userId = response.data['user']['id'];

      await _sharedPreferencesService.saveUserId(userId);
      await saveToken(token);
      return token;
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Login failed: $message';
    } catch (e) {
      throw 'Login failed';
    }
  }

  Future<void> logout() async {
    try {
      await removeToken();
    } catch (e) {}
  }
}
