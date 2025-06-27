import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_event.freezed.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.getUserData() = GetUserDataEvent;

  const factory AccountEvent.logoutUser() = LogoutUserEvent;

  const factory AccountEvent.editUserData() = EditUserDataEvent;

  const factory AccountEvent.authenticateUser() = AuthenticateUserEvent;

  const factory AccountEvent.clearState() = ClearAccountStateEvent;
}
