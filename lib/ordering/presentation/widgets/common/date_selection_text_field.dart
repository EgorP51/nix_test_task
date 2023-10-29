import 'package:flutter/material.dart';
import 'package:nix_test_task/ordering/constants/numeric_constants.dart';
import 'package:nix_test_task/ordering/constants/ui/order_text_styles.dart';
import 'package:nix_test_task/ordering/constants/ui/order_icons.dart';
import 'package:nix_test_task/ordering/constants/ui/widgets/order_text_field.dart';

class DateSelectionTextField extends StatefulWidget {
  const DateSelectionTextField({super.key, required this.title});

  final String title;

  @override
  _DateSelectionTextFieldState createState() {
    return _DateSelectionTextFieldState();
  }
}

class _DateSelectionTextFieldState extends State<DateSelectionTextField> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: NumericConstants.defaultVerticalPadding,
        horizontal: NumericConstants.defaultHorizontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.title,
            style: OrderTextStyles.headerSemiBold.copyWith(fontSize: 14),
          ),
          OrderTextField(
            readOnly: true,
            icon: Padding(
              padding: const EdgeInsets.all(12),
              child: OrderIcons.iconTextFieldMap[widget.title],
            ),
            onTap: () => _selectDate(context),
            controller: TextEditingController(
              text: "${selectedDate.toLocal()}".split(' ')[0],
            ),
          ),
        ],
      ),
    );
  }
}
