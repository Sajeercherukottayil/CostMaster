import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'models/question.dart';

const fontFamily = 'Manrope';

/// The light palette shared by the theme and the custom widgets.
abstract final class AppColors {
  /// Header bars and primary buttons.
  static const brand = Color(0xFF1E40AF);
  static const brandDark = Color(0xFF172E80);

  /// The main call to action, e.g. Start Mock Test.
  static const cta = Color(0xFFF97316);
  static const ctaDark = Color(0xFFEA580C);

  static const background = Color(0xFFEDF1F7);
  static const surface = Colors.white;
  static const ink = Color(0xFF111827);
  static const muted = Color(0xFF6B7280);
  static const faint = Color(0xFF9CA3AF);
  static const border = Color(0xFFDDE3EC);
  static const field = Color(0xFFF0F3F8);

  /// Selection, links and focus.
  static const accent = Color(0xFF1D4ED8);
  static const accentSoft = Color(0xFFDBE6FE);

  static const success = Color(0xFF16A34A);
  static const successSoft = Color(0xFFDCFCE7);
  static const successBright = Color(0xFF4ADE80);
  static const danger = Color(0xFFDC2626);
  static const dangerSoft = Color(0xFFFEE2E2);
  static const warning = Color(0xFFD97706);
  static const warningSoft = Color(0xFFFEF3C7);

  /// Green for a pass, red for a fail.
  static Color forScore(int percent) => percent >= 50 ? success : danger;
  static Color softForScore(int percent) =>
      percent >= 50 ? successSoft : dangerSoft;
}

/// A light background and a strong colour of the same hue.
typedef Tint = ({Color soft, Color strong});

const _blue = (soft: Color(0xFFE3ECFF), strong: Color(0xFF2563EB));
const _green = (soft: Color(0xFFDDF7E6), strong: Color(0xFF16A34A));
const _amber = (soft: Color(0xFFFDF0CF), strong: Color(0xFFD97706));
const _rose = (soft: Color(0xFFFFE4E8), strong: Color(0xFFE11D48));
const _violet = (soft: Color(0xFFEDE7FE), strong: Color(0xFF7C3AED));
const _teal = (soft: Color(0xFFD5F5F0), strong: Color(0xFF0D9488));
const _orange = (soft: Color(0xFFFFE9D6), strong: Color(0xFFEA580C));
const _sky = (soft: Color(0xFFDCF1FD), strong: Color(0xFF0284C7));

const Map<String, Tint> _subjectTints = {
  'law': _violet,
  'fa': _blue,
  'cost': _teal,
  'maths': _amber,
  'eco': _rose,
  'i_law': _violet,
  'i_fa': _blue,
  'i_tax': _orange,
  'i_cost': _teal,
  'i_om': _green,
  'i_caa': _sky,
  'i_fm': _rose,
  'i_ma': _amber,
};

const _subjectIcons = {
  'law': Icons.gavel_rounded,
  'fa': Icons.account_balance_wallet_rounded,
  'cost': Icons.calculate_rounded,
  'maths': Icons.functions_rounded,
  'eco': Icons.trending_up_rounded,
  'i_law': Icons.gavel_rounded,
  'i_fa': Icons.account_balance_rounded,
  'i_tax': Icons.receipt_long_rounded,
  'i_cost': Icons.calculate_rounded,
  'i_om': Icons.hub_rounded,
  'i_caa': Icons.fact_check_rounded,
  'i_fm': Icons.insights_rounded,
  'i_ma': Icons.pie_chart_rounded,
};

Tint subjectTint(Subject s) => _subjectTints[s.id] ?? _blue;

IconData subjectIcon(Subject s) =>
    _subjectIcons[s.id] ?? Icons.menu_book_rounded;

ThemeData buildTheme() {
  final scheme = ColorScheme.fromSeed(seedColor: AppColors.accent).copyWith(
    primary: AppColors.accent,
    onPrimary: Colors.white,
    primaryContainer: AppColors.accentSoft,
    onPrimaryContainer: AppColors.accent,
    secondary: AppColors.ink,
    onSecondary: Colors.white,
    error: AppColors.danger,
    surface: AppColors.surface,
    onSurface: AppColors.ink,
    onSurfaceVariant: AppColors.muted,
    surfaceContainerLowest: Colors.white,
    surfaceContainerLow: AppColors.background,
    surfaceContainer: AppColors.field,
    surfaceContainerHigh: const Color(0xFFEBECF0),
    surfaceContainerHighest: const Color(0xFFE3E5EA),
    outline: AppColors.faint,
    outlineVariant: AppColors.border,
  );
  final radius = BorderRadius.circular(14);
  final text = ThemeData(colorScheme: scheme, fontFamily: fontFamily).textTheme;
  const buttonText = TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );

  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    fontFamily: fontFamily,
    textTheme: text.copyWith(
      displaySmall: text.displaySmall?.copyWith(
        fontWeight: FontWeight.w800,
        letterSpacing: -1,
      ),
      headlineMedium: text.headlineMedium?.copyWith(
        fontWeight: FontWeight.w800,
        letterSpacing: -0.8,
      ),
      headlineSmall: text.headlineSmall?.copyWith(
        fontWeight: FontWeight.w800,
        letterSpacing: -0.5,
      ),
      titleLarge: text.titleLarge?.copyWith(
        fontWeight: FontWeight.w800,
        letterSpacing: -0.3,
      ),
      titleMedium: text.titleMedium?.copyWith(fontWeight: FontWeight.w700),
      titleSmall: text.titleSmall?.copyWith(fontWeight: FontWeight.w700),
      bodyMedium: text.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
      labelLarge: text.labelLarge?.copyWith(fontWeight: FontWeight.w700),
    ),
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.brand,
      foregroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
      centerTitle: false,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      titleTextStyle: TextStyle(
        fontFamily: fontFamily,
        fontSize: 19,
        fontWeight: FontWeight.w800,
        color: Colors.white,
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: AppColors.surface,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: const BorderSide(color: AppColors.border),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.brand,
        foregroundColor: Colors.white,
        disabledBackgroundColor: const Color(0xFFD1D5DB),
        disabledForegroundColor: Colors.white,
        minimumSize: const Size(64, 52),
        shape: RoundedRectangleBorder(borderRadius: radius),
        textStyle: buttonText,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.ink,
        minimumSize: const Size(64, 52),
        shape: RoundedRectangleBorder(borderRadius: radius),
        side: const BorderSide(color: AppColors.border, width: 1.5),
        textStyle: buttonText,
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.accent,
        textStyle: buttonText.copyWith(fontSize: 14),
      ),
    ),
    chipTheme: const ChipThemeData(
      showCheckmark: false,
      side: BorderSide(color: AppColors.border),
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      backgroundColor: AppColors.surface,
      selectedColor: AppColors.brand,
      labelStyle: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        color: AppColors.ink,
      ),
      secondaryLabelStyle: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surface,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      prefixIconColor: AppColors.muted,
      hintStyle: const TextStyle(color: AppColors.faint),
      border: OutlineInputBorder(
        borderRadius: radius,
        borderSide: const BorderSide(color: AppColors.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: radius,
        borderSide: const BorderSide(color: AppColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: radius,
        borderSide: const BorderSide(color: AppColors.accent, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: radius,
        borderSide: const BorderSide(color: AppColors.danger),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: radius,
        borderSide: const BorderSide(color: AppColors.danger, width: 1.5),
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      height: 66,
      elevation: 0,
      backgroundColor: AppColors.surface,
      surfaceTintColor: Colors.transparent,
      indicatorColor: AppColors.accentSoft,
      labelTextStyle: WidgetStateProperty.resolveWith(
        (states) => TextStyle(
          fontFamily: fontFamily,
          fontSize: 11.5,
          fontWeight: states.contains(WidgetState.selected)
              ? FontWeight.w800
              : FontWeight.w600,
          color: states.contains(WidgetState.selected)
              ? AppColors.brand
              : AppColors.muted,
        ),
      ),
      iconTheme: WidgetStateProperty.resolveWith(
        (states) => IconThemeData(
          size: 24,
          color: states.contains(WidgetState.selected)
              ? AppColors.brand
              : AppColors.muted,
        ),
      ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.surface,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.surface,
      surfaceTintColor: Colors.transparent,
      showDragHandle: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: AppColors.ink,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    dividerTheme: const DividerThemeData(color: AppColors.border, space: 1),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.brand,
      linearTrackColor: AppColors.field,
    ),
  );
}
