import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc_state.freezed.dart';

enum LoginStatus { initial, loading, successfull, failed }

@freezed
class LoginBlocState with _$LoginBlocState {
  const factory LoginBlocState({
    @Default(LoginStatus.initial) LoginStatus loginStatus,
    @Default('') String errorMessage,
  }) = _LoginBlocState;
}
