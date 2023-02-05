// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  final String title;
  double fontSize;
  Color textColor;
  FontWeight fontWeight;

  CustomTextWidget(
      {Key? key,
      required this.title,
      this.fontSize = 12,
      this.textColor = Colors.white,
      this.fontWeight = FontWeight.w500})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.inter(
          fontSize: fontSize, color: textColor, fontWeight: fontWeight),
    );
  }
}
