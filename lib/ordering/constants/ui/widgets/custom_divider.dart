import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: NumericConstants.defaultHorizontalPadding,
      ),
      child: Divider(),
    );
  }
}
