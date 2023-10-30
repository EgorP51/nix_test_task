import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nix_test_task/ordering/presentation/manager/ordering_bloc.dart';
import 'package:nix_test_task/ordering/presentation/widgets/common/order_widget.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderingBloc()..add(InitialEvent()),
      child: const OrderWidget(),
    );
  }
}
