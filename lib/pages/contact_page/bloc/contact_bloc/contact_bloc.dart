import 'package:bloc/bloc.dart';
import 'package:exclusive_web/di/service_locator.dart';
import 'package:exclusive_web/pages/contact_page/bloc/contact_bloc/contact_bloc_event.dart';
import 'package:exclusive_web/pages/contact_page/bloc/contact_bloc/contact_bloc_state.dart';
import 'package:exclusive_web/services/contact_service/contact_service.dart';

class ContactBloc extends Bloc<ContactBlocEvent, ContactBlocState> {
  final _contactService = locator<ContactService>();
  ContactBloc() : super(const ContactBlocState()) {
    on<SendMessageBlocEvent>(
      _sendMessage,
    );
  }

  Future<void> _sendMessage(
    ContactBlocEvent event,
    Emitter<ContactBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        messageSendingStatus: MessageSendingStatus.initial,
        errorMessage: '',
      ),
    );
    try {
      await _contactService.sendMessage(
        event.userName,
        event.userEmail,
        event.userPhone,
        event.userMessage,
      );
      emit(
        state.copyWith(
          messageSendingStatus: MessageSendingStatus.successfull,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          messageSendingStatus: MessageSendingStatus.failed,
          errorMessage: e.toString(),
        ),
      );
    }
    emit(
      state.copyWith(
        messageSendingStatus: MessageSendingStatus.initial,
        errorMessage: '',
      ),
    );
  }
}
