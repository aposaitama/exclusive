import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/auth_page/register_page/bloc/register_bloc/register_bloc_event.dart';
import 'package:exclusive_web/pages/auth_page/register_page/bloc/register_bloc/register_bloc_state.dart';
import 'package:exclusive_web/repositories/auth_repository/auth_repository.dart';

class RegisterBloc extends Bloc<RegisterBlocEvent, RegisterBlocState> {
  final _auth = locator<AuthRepository>();

  RegisterBloc() : super(const RegisterBlocState()) {
    on<RegisterUserBlocEvent>(
      _registerUser,
    );
  }

  Future<void> _registerUser(
    RegisterUserBlocEvent event,
    Emitter<RegisterBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        status: RegisterStatus.initial,
        errorMessage: '',
      ),
    );
    try {
      await _auth.register(
        event.userName,
        event.email,
        event.password,
      );
      emit(
        state.copyWith(
          status: RegisterStatus.successfull,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: RegisterStatus.failed,
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
