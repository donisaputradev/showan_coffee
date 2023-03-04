import 'package:flutter/material.dart';
import 'package:showan_coffee/core/core.dart';

class LightTheme {
  LightTheme(this.primaryColor);

  final Color primaryColor;
  static Color disabledTextColor = AppColors.grey;
  static Color disabledColor = AppColors.grey[100]!;
  static const Color textSolidColor = Colors.black;
  static Color errorColor = AppColors.dustRed[700]!;
  static Color dividerColor = AppColors.greyChateau[100]!;
  static const inputBackgroundColor = Color(0xFFFAFAFA);
  static const Color scaffoldColor = Colors.white;
  static const Color cardColor = Colors.white;
  static const Color appBarColor = Colors.white;

  ColorScheme get scheme => ColorScheme.light(
        primary: primaryColor,
        surface: primaryColor,
        secondary: primaryColor,
      );

  ButtonThemeData get button => ButtonThemeData(
        buttonColor: primaryColor,
        disabledColor: disabledTextColor,
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.dp12,
          horizontal: Dimens.dp24,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
        ),
      );

  OutlinedButtonThemeData get outlineButton => OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: BorderSide(
            color: primaryColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.dp8),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: Dimens.dp12,
            horizontal: Dimens.dp24,
          ),
          textStyle: text.labelLarge?.copyWith(
            color: primaryColor,
          ),
        ),
      );

  ElevatedButtonThemeData get elevatedButton => ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: scheme.onPrimary,
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.dp8),
          ),
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(
            vertical: Dimens.dp12,
            horizontal: Dimens.dp24,
          ),
          textStyle: text.labelLarge?.copyWith(
            color: scheme.onPrimary,
            fontFamily: 'Poppins',
          ),
          elevation: 0,
        ),
      );

  CardTheme get card => CardTheme(
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          side: BorderSide(
            color: dividerColor.withOpacity(.3),
          ),
        ),
        color: cardColor,
      );

  AppBarTheme get appBar => AppBarTheme(
        color: appBarColor,
        titleTextStyle: text.titleLarge?.copyWith(
          fontFamily: 'Poppins',
          color: textSolidColor,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        toolbarTextStyle: text.titleLarge?.copyWith(
          color: textSolidColor,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        elevation: .15,
        shadowColor: dividerColor.withOpacity(0.5),
        iconTheme: IconThemeData(
          color: primaryColor,
          size: Dimens.dp24,
        ),
        actionsIconTheme: IconThemeData(
          color: primaryColor,
          size: Dimens.dp24,
        ),
      );

  InputDecorationTheme get inputDecoration => InputDecorationTheme(
        filled: true,
        fillColor: inputBackgroundColor,
        contentPadding: const EdgeInsets.symmetric(
          vertical: Dimens.dp12,
          horizontal: Dimens.dp16,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Dimens.dp8),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Dimens.dp8),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(Dimens.dp8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor,
          ),
          borderRadius: BorderRadius.circular(Dimens.dp8),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: errorColor,
          ),
          borderRadius: BorderRadius.circular(Dimens.dp8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: errorColor,
          ),
          borderRadius: BorderRadius.circular(Dimens.dp8),
        ),
      );

  BottomNavigationBarThemeData get bottomNav => BottomNavigationBarThemeData(
        backgroundColor: cardColor,
        elevation: 8,
        unselectedItemColor: AppColors.grey[300],
        selectedLabelStyle: const TextStyle(fontSize: Dimens.dp12),
        unselectedLabelStyle: const TextStyle(fontSize: Dimens.dp12),
      );

  TabBarTheme get tabBar => TabBarTheme(
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            color: primaryColor,
            width: Dimens.dp2,
          ),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: primaryColor,
        unselectedLabelColor: disabledTextColor,
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
      );

  TextTheme get text => TextTheme(
        bodyLarge: const TextStyle(
          color: textSolidColor,
          fontSize: Dimens.dp14,
          fontWeight: FontWeight.normal,
        ),
        // Use for regular text
        bodyMedium: TextStyle(
          color: disabledTextColor,
          fontSize: Dimens.dp12,
          fontWeight: FontWeight.normal,
        ),
        // Use for heading text
        headlineSmall: const TextStyle(
          color: textSolidColor,
          fontWeight: FontWeight.w600,
          fontSize: Dimens.dp24,
        ),
        // Use for title text, AppBar
        titleLarge: const TextStyle(
          color: textSolidColor,
          fontWeight: FontWeight.w700,
          fontSize: Dimens.dp16,
        ),
        // Use for sub title text
        titleMedium: const TextStyle(
          color: textSolidColor,
          fontWeight: FontWeight.w600,
          fontSize: Dimens.dp14,
        ),

        labelLarge: const TextStyle(
          fontSize: Dimens.dp14,
          fontWeight: FontWeight.w600,
        ),
        // Use for caption
        bodySmall: TextStyle(
          fontSize: Dimens.dp10,
          color: disabledTextColor,
        ),
      );

  FloatingActionButtonThemeData get floatingButton =>
      FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        elevation: 2,
      );

  BottomSheetThemeData get bottomSheet => const BottomSheetThemeData(
        backgroundColor: scaffoldColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(Dimens.dp20),
          ),
        ),
      );

  DividerThemeData get divider => DividerThemeData(
        color: dividerColor,
        thickness: 1,
      );

  ThemeData get toTheme {
    return ThemeData(
      fontFamily: 'Poppins',
      primaryColor: primaryColor,
      scaffoldBackgroundColor: scaffoldColor,
      canvasColor: scaffoldColor,
      disabledColor: disabledColor,
      textTheme: text,
      cardTheme: card,
      appBarTheme: appBar,
      dividerColor: dividerColor,
      unselectedWidgetColor: disabledColor,
      buttonTheme: button,
      inputDecorationTheme: inputDecoration,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      outlinedButtonTheme: outlineButton,
      elevatedButtonTheme: elevatedButton,
      bottomNavigationBarTheme: bottomNav,
      tabBarTheme: tabBar,
      floatingActionButtonTheme: floatingButton,
      bottomSheetTheme: bottomSheet,
      dividerTheme: divider,
      colorScheme: scheme.copyWith(error: errorColor),
    );
  }
}
