import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_text_styles.dart';

abstract final class AppTheme {
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    extensions: [AppColorTheme.light],
    scaffoldBackgroundColor: AppColors.scaffoldBackground,
    cardColor: AppColors.surface,
    canvasColor: AppColors.background,
    dividerColor: AppColors.border,
    textTheme: AppTextStyles.light,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.textOnPrimary,
      primaryContainer: AppColors.primaryContainer,
      onPrimaryContainer: AppColors.primary,
      secondary: AppColors.primaryDark,
      tertiary: AppColors.softAccent,
      surface: AppColors.surface,
      onSurface: AppColors.textPrimary,
      error: const Color(0xFFE53935),
      onError: Colors.white,
      outline: AppColors.border,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.textOnPrimary,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppTextStyles.titleLarge.copyWith(color: AppColors.textOnPrimary),
    ),
    buttonTheme: const ButtonThemeData(buttonColor: AppColors.primary, textTheme: ButtonTextTheme.primary),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textOnPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceSoft,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.surface,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textSecondary,
      elevation: 8,
      type: BottomNavigationBarType.fixed,
    ),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    extensions: [AppColorTheme.dark],
    scaffoldBackgroundColor: const Color(0xFF1F2421),
    cardColor: const Color(0xFF2A3128),
    canvasColor: const Color(0xFF1F2421),
    dividerColor: const Color(0xFF5A6B50),
    textTheme: AppTextStyles.dark,
    colorScheme: ColorScheme.dark(
      primary: const Color(0xFF7FB069),
      onPrimary: const Color(0xFF1F2421),
      primaryContainer: const Color(0xFFA5B88A),
      onPrimaryContainer: const Color(0xFF1F2421),
      secondary: const Color(0xFF648050),
      tertiary: const Color(0xFF99AC7B),
      surface: const Color(0xFF2A3128),
      onSurface: const Color(0xFFFFFFFF),
      error: const Color(0xFFE53935),
      onError: const Color(0xFF1F2421),
      outline: const Color(0xFF5A6B50),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF2A3128),
      foregroundColor: Color(0xFFFFFFFF),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(color: Color(0xFFFFFFFF), fontSize: 18, fontWeight: FontWeight.w600),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF7FB069),
        foregroundColor: const Color(0xFF1F2421),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color(0xFF7FB069),
        side: const BorderSide(color: Color(0xFF7FB069)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF3A4835),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFF5A6B50)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFF5A6B50)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Color(0xFF7FB069), width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF2A3128),
      selectedItemColor: Color(0xFF7FB069),
      unselectedItemColor: Color(0xFFBDBDBD),
      elevation: 8,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
