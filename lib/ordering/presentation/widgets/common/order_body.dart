import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/presentation/manager/ordering_bloc.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/date_selection_text_field.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/next_step_button.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/saved_location_list.dart';
import 'package:nix_test_task/ordering/presentation/widgets/recipient/recipient_input_fields.dart';
import 'package:nix_test_task/ordering/presentation/widgets/recipient/select_recipient_address_widget.dart';
import 'package:nix_test_task/ordering/presentation/widgets/sender/select_sender_details_widget.dart';
import 'package:nix_test_task/ordering/presentation/widgets/sender/sender_input_fields.dart';

class OrderBody extends StatelessWidget {
  const OrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderingBloc, OrderingState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const Text(Texts.step1),
              const DateSelectionTextField(title: Texts.startDate),
              const SizedBox(height: NumericConstants.defaultVerticalPadding),
              const SelectSenderDetailsWidget(),
              if (state.isSenderAdding)
                const SenderInputFields()
              else
                SavedLocationList(users: state.savedUsers ?? []),
              const SizedBox(height: NumericConstants.defaultVerticalPadding),
              const SelectRecipientAddressWidget(),
              if (state.isRecipientAdding)
                const RecipientInputFields()
              else
                SavedLocationList(users: state.savedUsers ?? []),
              const NextStepButton(),
            ],
          ),
        );
      },
    );
  }
}
