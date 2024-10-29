import 'package:flutter/material.dart';

abstract class AppColorScheme {
  static const Color primary = Color(0xFF116DF6);
  static const Color onPrimary = Color(0xFFFDFEFF);
  static const Color secondary = Color(0xFFE2F2FF);
  static const Color onSecondary = primary;
  static const Color primaryLight = Color(0xFF008FFF);
  static const Color primaryDark = Color(0xFF0050C7);

  static const Color disabled = Color(0xFFDADDDE);

  static const Color surface = Color(0xFFF4F6F7);
  static const Color surfaceContainer = Color(0xFFFDFEFF);
  static const Color border = Color(0xFFE6E9EB);
  static const Color dottedBorder = Color(0xFFD4D4D8);

  static const Color textPrimary = Color(0xFF2E2E2E);
  static const Color textSecondary = Color(0xFF53575A);
  static const Color textContrast = Color(0xFFFDFEFF);

  static const Color success = Color(0xFF008557);
  static const Color successLight = Color(0xFFE8FAF0);
  static const Color successDark = Color(0xFF0D4F2B);

  static const Color error = Color(0xFFDB340B);
  static const Color errorLight = Color(0xFFFFF3F0);
  static const Color errorDark = Color(0xFF611000);

  static const Color warning = Color(0xFFB26205);
  static const Color warningLight = Color(0xFFFFF9E6);
  static const Color warningDark = Color(0xFF4D2B05);
  static const Color warningContrast = Color(0xFFFFD84D);

  static const Color info = Color(0xFF0A69FA);
  static const Color infoLight = Color(0xFFF2F7FF);
  static const Color infoDark = Color(0xFF042961);

  static const Color inactiveSwitchTrackColor = Color(0xFFDADDDE);

  static const Color questionBoxContainerColor = Color(0xFFF4F4F5);
  static const Color dialogBackground = Color(0xFFF4F4F5);
}
