import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/models/user_model/user_model.dart';
import 'package:exclusive_web/repositories/user_repository/user_repository.dart';
import 'package:exclusive_web/services/product_service/product_service.dart';

class UserService {
  final UserRepository _userRepository = locator<UserRepository>();
  final _productService = locator<ProductService>();

  Future<UserModel?> getUserData(String jwtToken) async {
    return await _userRepository.getUserData(
      jwtToken,
    );
  }

  Future<void> updateUserData(
    String jwtToken,
    String userID,
    Map<String, dynamic> data,
  ) async {
    await _userRepository.changeUserInfo(
      jwtToken,
      userID,
      data,
    );
  }

  Future<void> addUserAddress(
    String firstName,
    String lastName,
    String streetAddress,
    String city,
    String phoneNumber,
    String emailAddress,
    String userID,
  ) async {
    await _userRepository.addUserAddressRecord(
      firstName,
      lastName,
      streetAddress,
      city,
      phoneNumber,
      emailAddress,
      userID,
    );
  }

  Future<void> createReview(
    String productDocumentID,
    String productID,
    String reviewText,
    String userName,
    String userID,
    double rating,
    double previusRating,
    int previusRatingCount,
  ) async {
    // await _productService.changeProductRating(
    //   productDocumentID,
    //   previusRatingCount,
    //   previusRating + rating,
    // );

    await _userRepository.createUserReview(
      productID,
      reviewText,
      userName,
      userID,
      rating,
    );
  }

  Future<List<AddressModel>> getUserAddress(
    String userID,
  ) async {
    return await _userRepository.getUserAddreses(
      userID,
    );
  }

  Future<void> setDefaultValueAddress(
    String addressId,
    bool value,
  ) async {
    await _userRepository.setDefaultValueAddress(
      addressId,
      value,
    );
  }
}
