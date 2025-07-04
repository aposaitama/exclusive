import 'package:exclusive_web/models/user_model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_bloc_state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  factory AccountState({
    @Default(false) bool isAuthenticated,
    UserModel? userInfo,
    @Default([]) List<AddressModel> userAddresses,
  }) = _AccountState;
}
