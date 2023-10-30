import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/presentation/pages/order_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: OrderPage(),
    );
  }
}
