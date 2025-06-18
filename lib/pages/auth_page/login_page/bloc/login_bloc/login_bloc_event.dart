import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_bloc_event.freezed.dart';

@freezed
class LoginBlocEvent with _$LoginBlocEvent {
  const factory LoginBlocEvent.loginUser(String email, String password) =
      LoginUserBlocEvent;
}
