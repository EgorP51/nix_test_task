import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/constants/ui/order_icons.dart';
import 'package:nix_test_task/ordering/presentation/manager/ordering_bloc.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/text_field_with_title.dart';

class RecipientAddressesWidget extends StatelessWidget {
  const RecipientAddressesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderingBloc, OrderingState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            state.recipientAddressLineCount,
            (index) => TextFieldWithTitle(
              title: '${Texts.addressLine} ${index + 1}',
              labelText: Texts.addressLabel2,
              icon: OrderIcons.iconTextFieldMap[Texts.addressLine],
            ),
          ),
        );
      },
    );
  }
}
