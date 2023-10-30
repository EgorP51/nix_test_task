import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/constants/ui/order_text_styles.dart';
import 'package:nix_test_task/ordering/constants/ui/order_icons.dart';
import 'package:nix_test_task/ordering/constants/ui/widgets/order_text_field.dart';
import 'package:nix_test_task/ordering/presentation/manager/ordering_bloc.dart';

class TextFieldWithTitle extends StatelessWidget {
  const TextFieldWithTitle({
    required this.isSender,
    required this.title,
    required this.labelText,
    this.icon,
    super.key,
  });

  final String title;
  final String labelText;
  final Widget? icon;
  final bool isSender;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: NumericConstants.defaultVerticalPadding / 2,
                ),
                child: Text(
                  title,
                  style: OrderTextStyles.headerSemiBold.copyWith(fontSize: 14),
                ),
              ),
              OrderTextField(
                labelText: labelText,
                icon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: icon ?? OrderIcons.iconTextFieldMap[title],
                ),
                onChanged: (value) {
                  BlocProvider.of<OrderingBloc>(context).add(
                    Validate(isSender, title, value),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
