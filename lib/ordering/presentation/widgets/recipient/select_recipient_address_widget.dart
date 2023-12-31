import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/constants/ui/order_colors.dart';
import 'package:nix_test_task/ordering/constants/ui/order_text_styles.dart';
import 'package:nix_test_task/ordering/presentation/manager/ordering_bloc.dart';

class SelectRecipientAddressWidget extends StatelessWidget {
  const SelectRecipientAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrderingBloc, OrderingState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: NumericConstants.defaultVerticalPadding,
            horizontal: NumericConstants.defaultHorizontalPadding,
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
                    child: InkWell(
                      borderRadius: BorderRadius.circular(
                        NumericConstants.smallButtonRadius,
                      ),
                      onTap: () {
                        BlocProvider.of<OrderingBloc>(context).add(
                          ChangeRecipientDetails(),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 33,
                        decoration: BoxDecoration(
                          color: state.isRecipientAdding
                              ? OrderColors.orange
                              : OrderColors.gray5,
                          borderRadius: BorderRadius.circular(
                            NumericConstants.smallButtonRadius,
                          ),
                        ),
                        child: Text(
                          Texts.addAddress,
                          style: OrderTextStyles.textRegular.copyWith(
                            color: state.isRecipientAdding
                                ? OrderColors.white
                                : OrderColors.gray2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: InkWell(
                      borderRadius: BorderRadius.circular(
                        NumericConstants.smallButtonRadius,
                      ),
                      onTap: () {
                        BlocProvider.of<OrderingBloc>(context).add(
                          ChangeRecipientDetails(),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        height: 33,
                        decoration: BoxDecoration(
                          color: state.isRecipientAdding
                              ? OrderColors.gray5
                              : OrderColors.orange,
                          borderRadius: BorderRadius.circular(
                            NumericConstants.smallButtonRadius,
                          ),
                        ),
                        child: Text(
                          Texts.selectAddress,
                          style: OrderTextStyles.textRegular.copyWith(
                            color: state.isRecipientAdding
                                ? OrderColors.gray2
                                : OrderColors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
