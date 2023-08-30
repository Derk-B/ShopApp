part of 'message_form_bloc.dart';

abstract class MessageFormState extends Equatable {
  const MessageFormState();

  @override
  List<Object> get props => [];
}

final class MessageFormEditing extends MessageFormState {
  @override
  List<Object> get props => [];
}

final class MessageFormSubmitting extends MessageFormState {
  final Future<int> statusFromFuture;

  const MessageFormSubmitting(this.statusFromFuture);

  @override
  List<Object> get props => [];
}

final class MessageFormError extends MessageFormState {
  @override
  List<Object> get props => [];
}

final class MessageFormSuccess extends MessageFormState {
  @override
  List<Object> get props => [];
}
