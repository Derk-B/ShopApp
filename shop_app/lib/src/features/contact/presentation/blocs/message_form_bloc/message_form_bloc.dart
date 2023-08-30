import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shop_app/src/features/contact/domain/entities/contact_message_entity.dart';
import 'package:shop_app/src/features/contact/domain/usecases/send_message.dart';

part 'message_form_event.dart';
part 'message_form_state.dart';

class MessageFormBloc extends Bloc<MessageFormEvent, MessageFormState> {
  MessageFormBloc() : super(MessageFormEditing()) {
    on<MessageFormSend>((event, emit) {
      Future<int> statusFromFuture = SendMessage(event.entity).call();

      emit(MessageFormSubmitting(statusFromFuture));
    });
    on<MessageFormReceiveStatus>((event, emit)) {
        if ( == 200){
          emit(MessageFormSuccess());
        } else {
          emit(MessageFormError());
        }
    }
  }
}
