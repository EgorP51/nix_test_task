import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';
import 'package:nix_test_task/ordering/constants/ui/order_colors.dart';
import 'package:nix_test_task/ordering/constants/ui/order_text_styles.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/presentation/manager/ordering_bloc.dart';

class AddAddressButton extends StatelessWidget {
  const AddAddressButton({super.key, required this.isSender});

  final bool isSender;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: NumericConstants.defaultHorizontalPadding,
        ),
        child: InkWell(
          onTap: () {
            BlocProvider.of<OrderingBloc>(context).add(
              isSender ? AddSenderAddressLine() : AddRecipientAddressLine(),
            );
          },
          child: Text(
            Texts.addAddressLine,
            style: OrderTextStyles.textMedium.copyWith(
              color: OrderColors.orange,
            ),
          ),
        ),
      ),
    );
  }
}
