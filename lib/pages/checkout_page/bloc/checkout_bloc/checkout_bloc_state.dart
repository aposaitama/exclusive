import 'package:freezed_annotation/freezed_annotation.dart';

part 'checkout_bloc_state.freezed.dart';

enum CheckoutStatus { initial, successfull, failed }

@freezed
class CheckoutBlocState with _$CheckoutBlocState {
  const factory CheckoutBlocState({
    @Default(CheckoutStatus.initial) CheckoutStatus status,
    @Default('') String errorMessage,
  }) = _CheckoutBlocState;
}
