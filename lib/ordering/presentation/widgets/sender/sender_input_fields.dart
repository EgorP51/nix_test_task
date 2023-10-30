import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/constants/ui/widgets/custom_divider.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/add_address_button.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/text_field_with_title.dart';
import 'package:nix_test_task/ordering/presentation/widgets/sender/sender_addresses_widget.dart';

class SenderInputFields extends StatelessWidget {
  const SenderInputFields({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFieldWithTitle(
          title: Texts.fullName,
          labelText: Texts.nameLabel1,
        ),
        TextFieldWithTitle(
          title: Texts.email,
          labelText: Texts.emailLabel1,
        ),
        TextFieldWithTitle(
          title: Texts.phoneNumber,
          labelText: Texts.phoneLabel1,
        ),
        CustomDivider(),
        TextFieldWithTitle(
          title: Texts.country,
          labelText: Texts.countryLabel1,
        ),
        TextFieldWithTitle(
          title: Texts.city,
          labelText: Texts.cityLabel1,
        ),
        SenderAddressesWidget(),
        AddAddressButton(isSender: true),
        SizedBox(height: NumericConstants.defaultVerticalPadding),
        TextFieldWithTitle(
          title: Texts.postcode,
          labelText: Texts.phoneLabel1,
        ),
      ],
    );
  }
}
