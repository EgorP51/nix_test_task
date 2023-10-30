import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nix_test_task/ordering/constants/ui/order_colors.dart';

class OrderTextStyles {
  static TextStyle headerBold = GoogleFonts.roboto(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headerSemiBold = GoogleFonts.roboto(
    fontSize: 24.0,
    color: OrderColors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textMedium = GoogleFonts.roboto(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textRegular = GoogleFonts.roboto(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
