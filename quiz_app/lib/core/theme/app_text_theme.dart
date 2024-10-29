import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_color_scheme.dart';

final TextTheme textTheme = TextTheme(
  headlineLarge: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 32, height: 1.2, color: AppColorScheme.textPrimary),
  headlineMedium: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w700, height: 1.2, color: AppColorScheme.textPrimary),
  headlineSmall: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w700, height: 1.2, color: AppColorScheme.textPrimary),
  bodyLarge: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w400, height: 1.5, color: AppColorScheme.textPrimary),
  bodyMedium: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w400, height: 1.5, color: AppColorScheme.textPrimary),
  bodySmall: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400, height: 1.5, color: AppColorScheme.textPrimary),
  labelLarge: GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w700, color: AppColorScheme.textPrimary),
  labelMedium: GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w700, color: AppColorScheme.textPrimary),
  labelSmall: GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w700, color: AppColorScheme.textPrimary),
);
