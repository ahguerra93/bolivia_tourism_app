import 'package:flutter/material.dart';

abstract final class AppColors {
  // Brand colors - Bolivia Tourism App
  static const Color primary = Color(0xFF648050);
  static const Color primaryDark = Color(0xFF4A603A);
  static const Color primaryContainer = Color(0xFFA5B88A);
  static const Color softAccent = Color(0xFFD4E5B4);

  // Neutral colors
  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFFAFBF8);
  static const Color surfaceSoft = Color(0xFFF6FCEE);
  static const Color scaffoldBackground = Color(0xFFCED8B7);
  static const Color border = Color(0xFFE5ECE0);

  // Typography colors
  static const Color textPrimary = Color(0xFF1F2421);
  static const Color textSecondary = Color(0xFF6B7563);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Status colors
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFE53935);
  static const Color warning = Color(0xFFFB8C00);
  static const Color info = Color(0xFF1976D2);
}

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  final Color primary;
  final Color primaryDark;
  final Color primaryContainer;
  final Color softAccent;
  final Color background;
  final Color surface;
  final Color surfaceSoft;
  final Color scaffoldBackground;
  final Color border;
  final Color textPrimary;
  final Color textSecondary;
  final Color textOnPrimary;

  AppColorTheme({
    required this.primary,
    required this.primaryDark,
    required this.primaryContainer,
    required this.softAccent,
    required this.background,
    required this.surface,
    required this.surfaceSoft,
    required this.scaffoldBackground,
    required this.border,
    required this.textPrimary,
    required this.textSecondary,
    required this.textOnPrimary,
  });

  static AppColorTheme get light => AppColorTheme(
    primary: AppColors.primary,
    primaryDark: AppColors.primaryDark,
    primaryContainer: AppColors.primaryContainer,
    softAccent: AppColors.softAccent,
    background: AppColors.background,
    surface: AppColors.surface,
    surfaceSoft: AppColors.surfaceSoft,
    scaffoldBackground: AppColors.scaffoldBackground,
    border: AppColors.border,
    textPrimary: AppColors.textPrimary,
    textSecondary: AppColors.textSecondary,
    textOnPrimary: AppColors.textOnPrimary,
  );

  static AppColorTheme get dark => AppColorTheme(
    primary: Color(0xFF7FB069),
    primaryDark: Color(0xFF648050),
    primaryContainer: Color(0xFFA5B88A),
    softAccent: Color(0xFF99AC7B),
    background: Color(0xFF1F2421),
    surface: Color(0xFF2A3128),
    surfaceSoft: Color(0xFF3A4835),
    scaffoldBackground: Color(0xFF4A6041),
    border: Color(0xFF5A6B50),
    textPrimary: Color(0xFFFFFFFF),
    textSecondary: Color(0xFFD4E5B4),
    textOnPrimary: Color(0xFF1F2421),
  );

  @override
  ThemeExtension<AppColorTheme> copyWith({
    Color? primary,
    Color? primaryDark,
    Color? primaryContainer,
    Color? softAccent,
    Color? background,
    Color? surface,
    Color? surfaceSoft,
    Color? scaffoldBackground,
    Color? border,
    Color? textPrimary,
    Color? textSecondary,
    Color? textOnPrimary,
  }) {
    return AppColorTheme(
      primary: primary ?? this.primary,
      primaryDark: primaryDark ?? this.primaryDark,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      softAccent: softAccent ?? this.softAccent,
      background: background ?? this.background,
      surface: surface ?? this.surface,
      surfaceSoft: surfaceSoft ?? this.surfaceSoft,
      scaffoldBackground: scaffoldBackground ?? this.scaffoldBackground,
      border: border ?? this.border,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textOnPrimary: textOnPrimary ?? this.textOnPrimary,
    );
  }

  @override
  ThemeExtension<AppColorTheme> lerp(covariant ThemeExtension<AppColorTheme>? other, double t) {
    if (other is! AppColorTheme) {
      return this;
    }
    return AppColorTheme(
      primary: Color.lerp(primary, other.primary, t) ?? primary,
      primaryDark: Color.lerp(primaryDark, other.primaryDark, t) ?? primaryDark,
      primaryContainer: Color.lerp(primaryContainer, other.primaryContainer, t) ?? primaryContainer,
      softAccent: Color.lerp(softAccent, other.softAccent, t) ?? softAccent,
      background: Color.lerp(background, other.background, t) ?? background,
      surface: Color.lerp(surface, other.surface, t) ?? surface,
      surfaceSoft: Color.lerp(surfaceSoft, other.surfaceSoft, t) ?? surfaceSoft,
      scaffoldBackground: Color.lerp(scaffoldBackground, other.scaffoldBackground, t) ?? scaffoldBackground,
      border: Color.lerp(border, other.border, t) ?? border,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t) ?? textPrimary,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t) ?? textSecondary,
      textOnPrimary: Color.lerp(textOnPrimary, other.textOnPrimary, t) ?? textOnPrimary,
    );
  }
}

extension AppColorThemeExtension on BuildContext {
  AppColorTheme get colors => Theme.of(this).extension<AppColorTheme>()!;
}
