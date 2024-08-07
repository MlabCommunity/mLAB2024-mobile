import 'package:flutter/material.dart';
import 'package:quiz_app/core/theme/app_color_scheme.dart';
import 'package:quiz_app/core/theme/app_text_theme.dart';

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  enabledBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: AppColorScheme.border,
      width: 1,
    ),
  ),
  focusedBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: AppColorScheme.primary,
      width: 2,
    ),
  ),
  errorBorder: const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: AppColorScheme.error,
      width: 2,
    ),
  ),
  labelStyle: textTheme.bodyMedium,
  hintStyle: textTheme.bodyMedium!.copyWith(color: const Color(0xFF8391A1)),
  floatingLabelBehavior: FloatingLabelBehavior.never,
  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
);