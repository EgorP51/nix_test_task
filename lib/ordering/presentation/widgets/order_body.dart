import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/constants/ui/widgets/custom_divider.dart';
import 'package:nix_test_task/ordering/presentation/widgets/add_address_button.dart';
import 'package:nix_test_task/ordering/presentation/widgets/next_step_button.dart';
import 'package:nix_test_task/ordering/presentation/widgets/select_recipient_address_widget.dart';
import 'package:nix_test_task/ordering/presentation/widgets/select_sender_details_widget.dart';
import 'package:nix_test_task/ordering/presentation/widgets/text_field_with_title.dart';

class OrderBody extends StatelessWidget {
  const OrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Text(Texts.step1),
          const TextFieldWithTitle(title: Texts.startDate),
          ...senderWidgets(),
          ...recipientWidgets(),
          const NextStepButton(),
        ],
      ),
    );
  }

  List<Widget> senderWidgets() {
    return [
      const SelectSenderDetailsWidget(),
      const TextFieldWithTitle(title: Texts.fullName),
      const TextFieldWithTitle(title: Texts.email),
      const TextFieldWithTitle(title: Texts.phoneNumber),
      const CustomDivider(),
      const TextFieldWithTitle(title: Texts.country),
      const TextFieldWithTitle(title: Texts.city),
      TextFieldWithTitle(title: Texts.addressLine(1)),
      const AddAddressButton(),
      const TextFieldWithTitle(title: Texts.postcode),
    ];
  }

  List<Widget> recipientWidgets() {
    return [
      const SelectRecipientAddressWidget(),
      const TextFieldWithTitle(title: Texts.fullName),
      const TextFieldWithTitle(title: Texts.email),
      const TextFieldWithTitle(title: Texts.phoneNumber),
      const CustomDivider(),
      const TextFieldWithTitle(title: Texts.country),
      const TextFieldWithTitle(title: Texts.city),
      TextFieldWithTitle(title: Texts.addressLine(1)),
      const AddAddressButton(),
      const TextFieldWithTitle(title: Texts.postcode),
    ];
  }
}
