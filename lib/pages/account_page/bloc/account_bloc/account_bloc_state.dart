import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_bloc_state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  factory AccountState({
    @Default(false) bool isAuthenticated,
  }) = _AccountState;
}
