import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/values/colors.dart';

class TextStyles {
  static TextStyle DMSans = GoogleFonts.dmSans(
      fontWeight: FontWeight.w700, fontSize: 40, color: AppColors.Orange);
  static TextStyle Montserrat = GoogleFonts.montserrat(
      fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.Blue);
  static TextStyle NunitoSans = GoogleFonts.nunitoSans(
      fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.Blue);
  static TextStyle Gelasio = GoogleFonts.gelasio(
      fontWeight: FontWeight.w500, fontSize: 24, color: AppColors.Black);
}
