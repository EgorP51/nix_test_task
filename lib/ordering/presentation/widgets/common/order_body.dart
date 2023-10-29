import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/constants/ui/widgets/custom_divider.dart';
import 'package:nix_test_task/ordering/presentation/manager/ordering_bloc.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/add_address_button.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/date_selection_text_field.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/next_step_button.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/saved_location_list.dart';
import 'package:nix_test_task/ordering/presentation/widgets/recipient/recipient_addresses_widget.dart';
import 'package:nix_test_task/ordering/presentation/widgets/recipient/select_recipient_address_widget.dart';
import 'package:nix_test_task/ordering/presentation/widgets/sender/select_sender_details_widget.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/text_field_with_title.dart';
import 'package:nix_test_task/ordering/presentation/widgets/sender/sender_addresses_widget.dart';

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
                ...senderWidgets()
              else
                SavedLocationList(users: state.savedUsers ?? []),
              const SizedBox(height: NumericConstants.defaultVerticalPadding),
              const SelectRecipientAddressWidget(),
              if (state.isRecipientAdding)
                ...recipientWidgets()
              else
                SavedLocationList(users: state.savedUsers ?? []),
              const NextStepButton(),
            ],
          ),
        );
      },
    );
  }

  List<Widget> senderWidgets() {
    return [
      const TextFieldWithTitle(
        title: Texts.fullName,
        labelText: Texts.nameLabel1,
      ),
      const TextFieldWithTitle(
        title: Texts.email,
        labelText: Texts.emailLabel1,
      ),
      const TextFieldWithTitle(
        title: Texts.phoneNumber,
        labelText: Texts.phoneLabel1,
      ),
      const CustomDivider(),
      const TextFieldWithTitle(
        title: Texts.country,
        labelText: Texts.countryLabel1,
      ),
      const TextFieldWithTitle(
        title: Texts.city,
        labelText: Texts.cityLabel1,
      ),
      const SenderAddressesWidget(),
      const AddAddressButton(isSender: true),
      const SizedBox(height: NumericConstants.defaultVerticalPadding),
      const TextFieldWithTitle(
        title: Texts.postcode,
        labelText: Texts.phoneLabel1,
      ),
    ];
  }

  List<Widget> recipientWidgets() {
    return [
      const TextFieldWithTitle(
        title: Texts.fullName,
        labelText: Texts.nameLabel2,
      ),
      const TextFieldWithTitle(
        title: Texts.email,
        labelText: Texts.emailLabel2,
      ),
      const TextFieldWithTitle(
        title: Texts.phoneNumber,
        labelText: Texts.phoneLabel2,
      ),
      const CustomDivider(),
      const TextFieldWithTitle(
        title: Texts.country,
        labelText: Texts.countryLabel2,
      ),
      const TextFieldWithTitle(
        title: Texts.city,
        labelText: Texts.cityLabel2,
      ),
      const RecipientAddressesWidget(),
      const AddAddressButton(isSender: false),
      const SizedBox(height: NumericConstants.defaultVerticalPadding),
      const TextFieldWithTitle(
        title: Texts.postcode,
        labelText: Texts.postcodeLabel2,
      ),
    ];
  }
}
