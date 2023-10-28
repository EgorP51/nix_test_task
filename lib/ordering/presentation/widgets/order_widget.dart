import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/presentation/widgets/order_body.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const OrderBody(),
    );
  }
}
