import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/constants/texts.dart';
import 'package:nix_test_task/ordering/constants/ui/order_colors.dart';
import 'package:nix_test_task/ordering/constants/ui/order_text_styles.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/order_body.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(Texts.ordering, style: OrderTextStyles.headerSemiBold),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios),
        iconTheme: const IconThemeData(color: OrderColors.black),
      ),
      body: const OrderBody(),
    );
  }
}
