import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';

class SelectSenderDetailsWidget extends StatelessWidget {
  const SelectSenderDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: NumericConstants.defaultPadding / 2,
        horizontal: NumericConstants.defaultPadding,
      ),
      child: SizedBox(
        height: 50,
        child: Placeholder(),
      ),
    );
  }
}
