import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/data/data.dart';
import 'package:nix_test_task/ordering/data/models/user_model.dart';
import 'package:nix_test_task/ordering/utils/validation_util.dart';

part 'ordering_event.dart';

part 'ordering_state.dart';

class OrderingBloc extends Bloc<OrderingEvent, OrderingState> {
  final ValidationUtil validation = ValidationUtil();

  OrderingBloc() : super(const OrderingState()) {
    on<InitialEvent>((event, emit) {
      List<UserModel> savedUsers = Data.savedUsers;
      emit(state.copyWith(savedUsers: savedUsers));
    });

    on<ChangeSenderDetails>((event, emit) {
      emit(state.copyWith(isSenderAdding: !state.isSenderAdding));
    });

    on<ChangeRecipientDetails>((event, emit) {
      emit(state.copyWith(isRecipientAdding: !state.isRecipientAdding));
    });

    on<AddSenderAddressLine>((event, emit) {
      emit(state.copyWith(
        senderAddressLineCount: state.senderAddressLineCount + 1,
      ));
    });

    on<AddRecipientAddressLine>((event, emit) {
      emit(state.copyWith(
        recipientAddressLineCount: state.recipientAddressLineCount + 1,
      ));
    });

    on<Validate>((event, emit) {
      if (event.isSender) {
        switch (event.title) {
          case Texts.fullName:
            add(ValidateSenderName(event.value));
            break;
          case Texts.email:
            add(ValidateSenderEmail(event.value));
            break;
          case Texts.phoneNumber:
            add(ValidateSenderPhone(event.value));
            break;
        }
      } else {
        switch (event.title) {
          case Texts.fullName:
            add(ValidateRecipientName(event.value));
            break;
          case Texts.email:
            add(ValidateRecipientEmail(event.value));
            break;
          case Texts.phoneNumber:
            add(ValidateRecipientPhone(event.value));
            break;
        }
      }
    });

    on<ValidateSenderName>((event, emit) {
      bool isValidSenderName = validation.validateName(event.text);
      emit(state.copyWith(isValidSenderName: isValidSenderName));
    });

    on<ValidateSenderEmail>((event, emit) {
      bool isValidSenderEmail = validation.validateEmail(event.text);
      emit(state.copyWith(isValidSenderEmail: isValidSenderEmail));
    });

    on<ValidateSenderPhone>((event, emit) {
      bool isValidSenderPhone = validation.validatePhone(event.text);
      emit(state.copyWith(isValidSenderPhone: isValidSenderPhone));
    });

    on<ValidateRecipientName>((event, emit) {
      bool isValidRecipientName = validation.validateName(event.text);
      emit(state.copyWith(isValidRecipientName: isValidRecipientName));
    });

    on<ValidateRecipientPhone>((event, emit) {
      bool isValidRecipientPhone = validation.validatePhone(event.text);
      emit(state.copyWith(isValidRecipientPhone: isValidRecipientPhone));
    });

    on<ValidateRecipientEmail>((event, emit) {
      bool isValidRecipientEmail = validation.validateEmail(event.text);
      emit(state.copyWith(isValidRecipientEmail: isValidRecipientEmail));
    });

    on<SubmitForm>((event, emit) {
      // The logic for checking the form and moving on to the next steps will be located here.
      if (kDebugMode) {
        print(
          'isValidSenderName : ${state.isValidSenderName}\n'
          'isValidSenderEmail : ${state.isValidSenderEmail}\n'
          'isValidSenderPhone : ${state.isValidSenderPhone}\n'
          'isValidRecipientName : ${state.isValidRecipientName}\n'
          'isValidRecipientPhone : ${state.isValidRecipientPhone}\n'
          'isValidRecipientEmail : ${state.isValidRecipientEmail}\n',
        );
      }
    });
  }
}
