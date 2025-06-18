import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  final SharedPreferences _prefs;

  SharedPreferencesService(this._prefs);

  // Future<SharedPreferences> _prefs() async =>
  //     await SharedPreferences.getInstance();

  Future<void> saveUserId(int userId) async {
    await _prefs.setInt(
      'user_id',
      userId,
    );
  }

  Future<void> saveToken(String token) async {
    // final _prefs = await _prefs();
    await _prefs.setString('jwt_token', token);
  }

  Future<void> removeToken() async {
    // final prefs = await _prefs();
    await _prefs.remove('jwt_token');
  }

  Future<String?> getToken() async {
    // final prefs = await _prefs();
    return _prefs.getString('jwt_token');
  }

  Future<int?> getUserId() async {
    // final prefs = await _prefs();

    return _prefs.getInt('user_id');
  }
}
