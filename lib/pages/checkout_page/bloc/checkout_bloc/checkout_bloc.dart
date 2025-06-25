import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/checkout_page/bloc/checkout_bloc/checkout_bloc_event.dart';
import 'package:exclusive_web/pages/checkout_page/bloc/checkout_bloc/checkout_bloc_state.dart';
import 'package:exclusive_web/repositories/auth_repository/auth_repository.dart';
import 'package:exclusive_web/services/checkout_service/checkout_service.dart';

class CheckoutBloc extends Bloc<CheckoutBlocEvent, CheckoutBlocState> {
  final _checkoutService = locator<CheckoutService>();

  CheckoutBloc() : super(const CheckoutBlocState()) {
    on<CheckoutWithCardEvent>(
      _checkoutWithCard,
    );
  }

  Future<void> _checkoutWithCard(
    CheckoutWithCardEvent event,
    Emitter<CheckoutBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        status: CheckoutStatus.initial,
        errorMessage: '',
      ),
    );
    try {
      final paymentStatus = await _checkoutService.checkoutWithCard(
        event.cardNum,
        event.expMonth,
        event.expYear,
        event.cvv,
        event.cartProducts,
        event.firstName,
        event.companyName,
        event.streetAddress,
        event.city,
        event.phoneNumber,
        event.emailAddress,
      );
      if (paymentStatus) {
        emit(
          state.copyWith(
            status: CheckoutStatus.successfull,
          ),
        );
      } else if (!paymentStatus) {
        emit(
          state.copyWith(
            status: CheckoutStatus.failed,
          ),
        );
      }
      emit(
        state.copyWith(
          status: CheckoutStatus.initial,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: CheckoutStatus.failed,
          errorMessage: e.toString(),
        ),
      );
      emit(
        state.copyWith(
          status: CheckoutStatus.initial,
        ),
      );
    }
  }
}
