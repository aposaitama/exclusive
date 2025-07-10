import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_event.freezed.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.getUserData() = GetUserDataEvent;

  const factory AccountEvent.logoutUser() = LogoutUserEvent;

  const factory AccountEvent.editUserData(
    Map<String, dynamic> data,
  ) = EditUserDataEvent;

  const factory AccountEvent.addAddress(
    String firstName,
    String lastName,
    String streetAddress,
    String city,
    String phoneNumber,
    String emailAddress,
  ) = AddUserAddressEvent;

  const factory AccountEvent.getAddress() = GetUserAddressEvent;

  const factory AccountEvent.setDefaultAddress(String newAddressDocumentID) =
      SetDefaultUserAddressEvent;

  const factory AccountEvent.authenticateUser() = AuthenticateUserEvent;

  const factory AccountEvent.clearState() = ClearAccountStateEvent;
  const factory AccountEvent.createProductReview(
    String productDocumentID,
    String productID,
    String reviewText,
    String userName,
    double rating,
    double previusRating,
    int previusRatingCount,
  ) = CreateReviewEvent;
}
