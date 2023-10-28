import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/constants/ui/order_colors.dart';
import 'package:nix_test_task/ordering/constants/ui/order_text_styles.dart';

class SelectRecipientAddressWidget extends StatelessWidget {
  SelectRecipientAddressWidget({super.key});

  bool isAdding = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: NumericConstants.defaultPadding / 2,
        horizontal: NumericConstants.defaultPadding,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Texts.recipientDetails,
            style: OrderTextStyles.headerBold.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 33,
                  decoration: BoxDecoration(
                    color: isAdding ? OrderColors.orange : OrderColors.gray5,
                    borderRadius: BorderRadius.circular(
                      NumericConstants.smallButtonRadius,
                    ),
                  ),
                  child: Text(
                    Texts.addAddress,
                    style: OrderTextStyles.textRegular.copyWith(
                      color: OrderColors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  height: 33,
                  decoration: BoxDecoration(
                    color: isAdding ? OrderColors.gray5 : OrderColors.orange,
                    borderRadius: BorderRadius.circular(
                      NumericConstants.smallButtonRadius,
                    ),
                  ),
                  child: Text(
                    Texts.selectAddress,
                    style: OrderTextStyles.textRegular.copyWith(
                      color: OrderColors.gray2,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
