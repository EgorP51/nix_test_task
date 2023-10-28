import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';
import 'package:nix_test_task/ordering/constants/ui/order_colors.dart';
import 'package:nix_test_task/ordering/constants/ui/order_text_styles.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';

class AddAddressButton extends StatelessWidget {
  const AddAddressButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: NumericConstants.defaultPadding,
        ),
        child: InkWell(
          onTap: () {},
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
