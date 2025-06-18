import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bloc_state.freezed.dart';

enum RegisterStatus { initial, successfull, failed }

@freezed
class RegisterBlocState with _$RegisterBlocState {
  const factory RegisterBlocState({
    @Default(RegisterStatus.initial) RegisterStatus status,
    @Default('') String errorMessage,
  }) = _RegisterBlocState;
}
