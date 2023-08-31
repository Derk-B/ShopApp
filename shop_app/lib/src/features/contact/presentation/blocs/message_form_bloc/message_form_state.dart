part of 'message_form_bloc.dart';

abstract class MessageFormState extends Equatable {
  const MessageFormState();

  @override
  List<Object> get props => [];
}

final class MessageFormEditing extends MessageFormState {}

final class MessageFormSubmitting extends MessageFormState {}

final class MessageFormError extends MessageFormState {}

final class MessageFormSuccess extends MessageFormState {}
