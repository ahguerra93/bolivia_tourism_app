import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract final class AppTextStyles {
  static TextStyle get displayLarge => GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.w700, height: 1.25);

  static TextStyle get displayMedium => GoogleFonts.inter(fontSize: 28, fontWeight: FontWeight.w700, height: 1.29);

  static TextStyle get displaySmall => GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w700, height: 1.33);

  static TextStyle get headlineLarge => GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.w700, height: 1.33);

  static TextStyle get headlineMedium => GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w700, height: 1.4);

  static TextStyle get headlineSmall => GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w700, height: 1.44);

  static TextStyle get titleLarge => GoogleFonts.inter(fontSize: 18, fontWeight: FontWeight.w600, height: 1.44);

  static TextStyle get titleMedium => GoogleFonts.inter(fontSize: 16, fontWeight: FontWeight.w600, height: 1.5);

  static TextStyle get titleSmall => GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600, height: 1.57);

  static TextStyle get bodyLarge => GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400, height: 1.57);

  static TextStyle get bodyMedium => GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w400, height: 1.67);

  static TextStyle get bodySmall => GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w400, height: 1.67);

  static TextStyle get labelLarge => GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w600, height: 1.57);

  static TextStyle get labelMedium => GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w600, height: 1.67);

  static TextStyle get labelSmall => GoogleFonts.inter(fontSize: 11, fontWeight: FontWeight.w600, height: 1.73);

  // Light theme text styles
  static TextTheme get light => TextTheme(
    displayLarge: displayLarge.copyWith(color: const Color(0xFF1F2421)),
    displayMedium: displayMedium.copyWith(color: const Color(0xFF1F2421)),
    displaySmall: displaySmall.copyWith(color: const Color(0xFF1F2421)),
    headlineLarge: headlineLarge.copyWith(color: const Color(0xFF1F2421)),
    headlineMedium: headlineMedium.copyWith(color: const Color(0xFF1F2421)),
    headlineSmall: headlineSmall.copyWith(color: const Color(0xFF1F2421)),
    titleLarge: titleLarge.copyWith(color: const Color(0xFF1F2421)),
    titleMedium: titleMedium.copyWith(color: const Color(0xFF1F2421)),
    titleSmall: titleSmall.copyWith(color: const Color(0xFF1F2421)),
    bodyLarge: bodyLarge.copyWith(color: const Color(0xFF1F2421)),
    bodyMedium: bodyMedium.copyWith(color: const Color(0xFF6B7563)),
    bodySmall: bodySmall.copyWith(color: const Color(0xFF6B7563)),
    labelLarge: labelLarge.copyWith(color: const Color(0xFF1F2421)),
    labelMedium: labelMedium.copyWith(color: const Color(0xFF1F2421)),
    labelSmall: labelSmall.copyWith(color: const Color(0xFF6B7563)),
  );

  // Dark theme text styles
  static TextTheme get dark => TextTheme(
    displayLarge: displayLarge.copyWith(color: const Color(0xFFFFFFFF)),
    displayMedium: displayMedium.copyWith(color: const Color(0xFFFFFFFF)),
    displaySmall: displaySmall.copyWith(color: const Color(0xFFFFFFFF)),
    headlineLarge: headlineLarge.copyWith(color: const Color(0xFFFFFFFF)),
    headlineMedium: headlineMedium.copyWith(color: const Color(0xFFFFFFFF)),
    headlineSmall: headlineSmall.copyWith(color: const Color(0xFFF0F0F0)),
    titleLarge: titleLarge.copyWith(color: const Color(0xFFFFFFFF)),
    titleMedium: titleMedium.copyWith(color: const Color(0xFFFFFFFF)),
    titleSmall: titleSmall.copyWith(color: const Color(0xFFF0F0F0)),
    bodyLarge: bodyLarge.copyWith(color: const Color(0xFFE0E0E0)),
    bodyMedium: bodyMedium.copyWith(color: const Color(0xFFBDBDBD)),
    bodySmall: bodySmall.copyWith(color: const Color(0xFFBDBDBD)),
    labelLarge: labelLarge.copyWith(color: const Color(0xFFFFFFFF)),
    labelMedium: labelMedium.copyWith(color: const Color(0xFFE0E0E0)),
    labelSmall: labelSmall.copyWith(color: const Color(0xFFBDBDBD)),
  );
}
