import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_bloc_event.freezed.dart';

@freezed
class ContactBlocEvent with _$ContactBlocEvent {
  const factory ContactBlocEvent.sendMessage(
    String userName,
    String userEmail,
    String userPhone,
    String userMessage,
  ) = SendMessageBlocEvent;
}
