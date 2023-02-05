import 'package:flutter/material.dart';

class CustomColors {
  // Scaffold backgroundColor
  static Color scaffoldBackgrundColor = Color.fromARGB(255, 218, 209, 209);
  static Color white = const Color(0xffFFFFFF);
  static Color secundTextColor = const Color(0xffFFFFFF).withOpacity(0.7);

  // image or button green Color
  static Color greenColor = const Color(0xff24966D);
  static LinearGradient mainColor = const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomRight,
      colors: [
        Color.fromARGB(255, 20, 105, 74),
        Color(0xff042E2B),
      ]);

// Bottom Navigation Colors
  static Color selectNavTextColor = const Color(0xff042E2B);
  static Color unselectNavTextColor = const Color(0xffB4C1C0);
}
