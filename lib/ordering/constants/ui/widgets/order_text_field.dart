import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/constants/ui/order_colors.dart';
import 'package:nix_test_task/ordering/constants/ui/order_text_styles.dart';

class OrderTextField extends StatelessWidget {
  const OrderTextField({
    super.key,
    this.icon,
    this.labelText,
    this.readOnly,
    this.onTap, this.controller,
    this.contentPadding,
  });

  final Widget? icon;
  final String? labelText;
  final bool? readOnly;
  final void Function()? onTap;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly ?? false,
      onTap: onTap,
      controller: controller,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: icon,
        labelText: labelText,
        labelStyle: OrderTextStyles.textRegular.copyWith(
          color: OrderColors.gray1,
        ),
        contentPadding: contentPadding,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: OrderColors.gray3,
            width: 0.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: OrderColors.gray2,
            width: 2,
          ),
        ),
      ),
    );
  }
}
