part of 'message_form_bloc.dart';

abstract class MessageFormEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class MessageFormSend extends MessageFormEvent {
  final ContactMessageEntity entity;

  MessageFormSend(this.entity);

  @override
  List<Object> get props => [];
}

class MessageFormReceiveStatus extends MessageFormEvent {
  final int status;

  MessageFormReceiveStatus(this.status);

  @override
  List<Object> get props => [];
}
