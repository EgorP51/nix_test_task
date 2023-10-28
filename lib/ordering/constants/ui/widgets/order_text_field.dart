import 'package:flutter/material.dart';

class OrderTextField extends StatelessWidget {
  const OrderTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder()
      ),
    );
  }
}
