import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/auth_page/login_page/bloc/login_bloc/login_bloc_event.dart';
import 'package:exclusive_web/pages/auth_page/login_page/bloc/login_bloc/login_bloc_state.dart';
import 'package:exclusive_web/repositories/auth_repository/auth_repository.dart';

class LoginBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  final _auth = locator<AuthRepository>();

  LoginBloc() : super(const LoginBlocState()) {
    on<LoginUserBlocEvent>(
      _loginUser,
    );
  }

  Future<void> _loginUser(
    LoginUserBlocEvent event,
    Emitter<LoginBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        loginStatus: LoginStatus.initial,
        errorMessage: '',
      ),
    );
    try {
      emit(
        state.copyWith(
          loginStatus: LoginStatus.loading,
        ),
      );
      await _auth.login(
        event.email,
        event.password,
      );
      emit(
        state.copyWith(
          loginStatus: LoginStatus.successfull,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          loginStatus: LoginStatus.failed,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
