import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_bloc_state.freezed.dart';

enum MessageSendingStatus { initial, successfull, failed }

@freezed
class ContactBlocState with _$ContactBlocState {
  const factory ContactBlocState({
    @Default(MessageSendingStatus.initial)
    MessageSendingStatus messageSendingStatus,
    @Default('') String errorMessage,
  }) = _ContactBlocState;
}
