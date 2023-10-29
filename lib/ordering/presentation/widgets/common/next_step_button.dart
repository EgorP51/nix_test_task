import 'package:flutter/cupertino.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/constants/ui/order_colors.dart';
import 'package:nix_test_task/ordering/constants/ui/order_text_styles.dart';

class NextStepButton extends StatelessWidget {
  const NextStepButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: NumericConstants.defaultHorizontalPadding,
        vertical: NumericConstants.defaultVerticalPadding * 2
      ),
      child: SizedBox(
        width: double.infinity,
        child: CupertinoButton(
          color: OrderColors.orange,
          borderRadius: BorderRadius.circular(NumericConstants.buttonRadius),
          child: Text(
            Texts.nextStep,
            style: OrderTextStyles.textMedium.copyWith(
              color: OrderColors.white,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
