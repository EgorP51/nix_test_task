part of 'ordering_bloc.dart';

abstract class OrderingEvent extends Equatable {
  const OrderingEvent();

  @override
  List<Object?> get props => [];
}

class InitialEvent extends OrderingEvent {}

class ChangeSenderDetails extends OrderingEvent {}

class ChangeRecipientDetails extends OrderingEvent {}

class AddSenderAddressLine extends OrderingEvent {}

class AddRecipientAddressLine extends OrderingEvent {}

class ValidateSenderName extends OrderingEvent {
  const ValidateSenderName(this.text);

  final String text;

  @override
  List<Object?> get props => [text];
}

class Validate extends OrderingEvent {
  const Validate(this.isSender, this.title, this.value);

  final bool isSender;
  final String title;
  final String value;

  @override
  List<Object?> get props {
    return [
      isSender,
      title,
      value,
    ];
  }
}

class ValidateSenderEmail extends OrderingEvent {
  const ValidateSenderEmail(this.text);

  final String text;

  @override
  List<Object?> get props => [text];
}

class ValidateSenderPhone extends OrderingEvent {
  const ValidateSenderPhone(this.text);

  final String text;

  @override
  List<Object?> get props => [text];
}

class ValidateRecipientName extends OrderingEvent {
  const ValidateRecipientName(this.text);

  final String text;

  @override
  List<Object?> get props => [text];
}

class ValidateRecipientEmail extends OrderingEvent {
  const ValidateRecipientEmail(this.text);

  final String text;

  @override
  List<Object?> get props => [text];
}

class ValidateRecipientPhone extends OrderingEvent {
  const ValidateRecipientPhone(this.text);

  final String text;

  @override
  List<Object?> get props => [text];
}

class SubmitForm extends OrderingEvent {}
