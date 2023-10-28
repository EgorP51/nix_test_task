import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/constants/ui/widgets/custom_divider.dart';
import 'package:nix_test_task/ordering/presentation/manager/ordering_bloc.dart';
import 'package:nix_test_task/ordering/presentation/widgets/add_address_button.dart';
import 'package:nix_test_task/ordering/presentation/widgets/date_selection_text_field.dart';
import 'package:nix_test_task/ordering/presentation/widgets/next_step_button.dart';
import 'package:nix_test_task/ordering/presentation/widgets/saved_location_list.dart';
import 'package:nix_test_task/ordering/presentation/widgets/select_recipient_address_widget.dart';
import 'package:nix_test_task/ordering/presentation/widgets/select_sender_details_widget.dart';
import 'package:nix_test_task/ordering/presentation/widgets/text_field_with_title.dart';

class OrderBody extends StatelessWidget {
  const OrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderingBloc, OrderingState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const Text(Texts.step1),
              const DateSelectionTextField(title: Texts.startDate),
              const SelectSenderDetailsWidget(),
              if (state.isSenderAdding == true)
                ...senderWidgets()
              else
                SavedLocationList(users: state.savedUsers ?? []),
              SelectRecipientAddressWidget(),
              ...recipientWidgets(),
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
      TextFieldWithTitle(
        title: '${Texts.addressLine}1',
        labelText: Texts.addressLabel1,
      ),
      const AddAddressButton(),
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
      TextFieldWithTitle(
        title: '${Texts.addressLine}1',
        labelText: Texts.addressLabel2,
      ),
      const AddAddressButton(),
      const TextFieldWithTitle(
        title: Texts.postcode,
        labelText: Texts.postcodeLabel2,
      ),
    ];
  }
}
