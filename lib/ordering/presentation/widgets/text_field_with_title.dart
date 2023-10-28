import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';
import 'package:nix_test_task/ordering/constants/ui/order_text_styles.dart';
import 'package:nix_test_task/ordering/constants/ui/order_icons.dart';
import 'package:nix_test_task/ordering/constants/ui/widgets/order_text_field.dart';

class TextFieldWithTitle extends StatelessWidget {
  const TextFieldWithTitle({
    super.key,
    required this.title,
    required this.labelText,
  });

  final String title;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: NumericConstants.defaultPadding / 2,
        horizontal: NumericConstants.defaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: OrderTextStyles.headerSemiBold.copyWith(fontSize: 14),
          ),
          OrderTextField(
            labelText: labelText,
            icon: Padding(
              padding: const EdgeInsets.all(12),
              child: OrderIcons.iconTextFieldMap[title],
            ),
          ),
        ],
      ),
    );
  }
}
