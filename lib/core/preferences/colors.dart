import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static final Color primaryColor = darkBlue[900]!;
  static final Color green = polarGreen[900]!;
  static final Color greenSoft = polarGreen[100]!;
  static final Color orange = crayola[900]!;
  static final Color orangeSecond = crayola[700]!;
  static final Color orangeSoft = crayola[100]!;
  static final Color red = dustRed[900]!;
  static final Color redSoft = dustRed[100]!;
  static final Color purple = geekBlue[900]!;
  static final Color greySoft = greyChateau[100]!;
  static const Color greyTrans = Color(0xFFF2F2F2);
  static final Color softBlue = geekBlue[300]!;
  static const Color ethColor = Color(0xFF343434);
  static final Color primaryGradient1 = darkBlue[700]!;
  static final Color primaryGradient2 = darkBlue[500]!;

  static const geekBlue = MaterialColor(0xFFADC6FF, {
    100: Color(0xFFF0F5FF),
    300: Color(0xFFD6E4FF),
    500: Color(0xFFADC6FF),
    700: Color(0xFF597EF7),
    900: Color(0xFF5E00BB),
  });

  static const darkBlue = MaterialColor(0xFF3086F3, {
    100: Color(0xFF97C2F9),
    300: Color(0xFF64A4F6),
    500: Color(0xFF2D83EC),
    700: Color(0xFF0F51A2),
    900: Color(0xFF0A51AB),
  });

  static const polarGreen = MaterialColor(0xFFB7EB8F, {
    100: Color(0xFFF6FFED),
    300: Color(0xFFD9F7BE),
    500: Color(0xFFB7EB8F),
    700: Color(0xFF73D13D),
    900: Color(0xFF389E0D),
  });

  static const crayola = MaterialColor(0xFFFFFB8F, {
    100: Color(0xFFFEFFE6),
    300: Color(0xFFFFFFB8),
    500: Color(0xFFFFFB8F),
    700: Color(0xFFFA8C16),
    900: Color(0xFFD46B08),
  });

  static const dustRed = MaterialColor(0xFFFFA39E, {
    100: Color(0xFFFFF1F0),
    300: Color(0xFFFFCCC7),
    500: Color(0xFFFFA39E),
    700: Color(0xFFFF4D4F),
    900: Color(0xFFCF1322),
  });

  static const greyChateau = MaterialColor(0xFFA0A4A8, {
    100: Color(0xFFB3B6B9),
    300: Color(0xFFAAADB1),
    500: Color(0xFFA0A4A8),
    700: Color(0xFF909497),
    900: Color(0xFF808386),
  });

  static const grey = MaterialColor(0xFF808080, {
    100: Color(0xFF999999),
    300: Color(0xFF8D8D8D),
    500: Color(0xFF808080),
    700: Color(0xFF737373),
    900: Color(0xFF666666),
  });
}
