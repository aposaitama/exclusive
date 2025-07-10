import 'package:dio/dio.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/user_model/user_model.dart';
import 'package:exclusive_web/repositories/auth_repository/auth_repository.dart';
import 'package:exclusive_web/services/shared_preferences_service/shared_preferences_service.dart';
import 'package:exclusive_web/utils/extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository {
  final SharedPreferences prefs = locator<SharedPreferences>();
  final Dio _dio = locator<Dio>();
  final _authRepo = locator<AuthRepository>();

  Future<UserModel?> getUserData(
    String jwtToken,
  ) async {
    try {
      final response = await _dio.get(
        '/users/me',
        options: Options(headers: {'Authorization': 'Bearer $jwtToken'}),
        queryParameters: {
          'populate': '*',
        },
      );

      return UserModel.fromJson(response.data);
    } on DioException catch (e) {
      final message = e.response?.data['error']['message'] ?? 'Unknown error';
      throw 'Failed to fetch user data: $message';
    } catch (e) {
      throw 'Failed to fetch user data';
    }
  }

  Future<void> changeUserInfo(
    String jwtToken,
    String userid,
    Map<String, dynamic> data,
  ) async {
    final jwtToken = await _authRepo.getToken();

    await _dio.put(
      '/users/$userid',
      options: Options(headers: {'Authorization': 'Bearer $jwtToken'}),
      data: data,
    );
  }

  Future<void> addUserAddressRecord(
    String firstName,
    String lastName,
    String streetAddress,
    String city,
    String phoneNumber,
    String emailAddress,
    String userID,
  ) async {
    final response = await _dio.post(
      '/addresses',
      data: {
        "data": {
          "firstName": firstName,
          "lastName": lastName,
          "streetAddress": streetAddress,
          "city": city,
          "phoneNumber": phoneNumber,
          "emailAddress": emailAddress,
          "isDefault": false,
        }
      },
    );
    final documentId = response.data['data']['documentId'];
    if (documentId != null) {
      await _dio.put(
        '/addresses/$documentId',
        data: {
          "data": {
            "user": [userID]
          },
        },
      );
    }
  }

  Future<void> createUserReview(
    String productID,
    String reviewText,
    String userName,
    String userID,
    double rating,
  ) async {
    await _dio.post(
      '/reviews',
      data: {
        "data": {
          "product": productID,
          "userName": userName,
          "reviewText": reviewText,
          "userID": userID,
          "rating": rating,
        }
      },
    );
  }

  Future<List<AddressModel>> getUserAddreses(
    String userID,
  ) async {
    try {
      final response = await _dio.get(
        '/addresses?populate=user&filters[user][id][\$eq]=$userID',
      );
      if (response.isSuccess) {
        return (response.data['data'] as List)
            .map(
              (json) => AddressModel.fromJson(
                json as Map<String, dynamic>,
              ),
            )
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<void> setDefaultValueAddress(
    String addressDocumentId,
    bool value,
  ) async {
    try {
      await _dio.put(
        '/addresses/$addressDocumentId',
        data: {
          "data": {
            "isDefault": value,
          }
        },
      );
    } catch (e) {
      rethrow;
    }
  }
}
