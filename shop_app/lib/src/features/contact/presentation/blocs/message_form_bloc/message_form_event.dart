part of 'message_form_bloc.dart';

abstract class MessageFormEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class MessageFormEdit extends MessageFormEvent {
  @override
  List<Object> get props => [];
}

class MessageFormSend extends MessageFormEvent {
  final ContactMessageEntity entity;

  MessageFormSend(this.entity);

  @override
  List<Object> get props => [entity];
}
