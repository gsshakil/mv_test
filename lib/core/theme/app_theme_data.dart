import 'package:flutter/material.dart';

class AppThemData {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);

  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme,
        canvasColor: colorScheme.surface,
        scaffoldBackgroundColor: colorScheme.surface,
        highlightColor: Colors.transparent,
        focusColor: focusColor,
        textTheme: const TextTheme(
          headlineMedium: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
          headlineSmall: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          labelMedium: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
          labelSmall: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Color(0xFF51555e),
          ),
        ));
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFF4E53EE),
    onPrimary: Colors.black,
    secondary: Color(0xFFD4C4FC),
    onSecondary: Color(0xFF322942),
    error: Colors.redAccent,
    onError: Colors.white,
    surface: Color(0xFFFAFBFB),
    surfaceContainer: Color(0xFF27272d),
    onSurface: Color(0xFF241E30),
    surfaceDim: Color.fromARGB(255, 207, 248, 221),
    surfaceTint: Color.fromARGB(255, 249, 239, 153),
    surfaceBright: Color.fromARGB(255, 121, 122, 123),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFF4E53EE),
    secondary: Color(0xFFD4C4FC),
    surface: Color(0xFF101114),
    surfaceContainer: Color(0xFF27272d),
    error: Colors.redAccent,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    surfaceDim: Color.fromARGB(255, 207, 248, 221),
    surfaceTint: Color.fromARGB(255, 249, 239, 153),
    surfaceBright: Color.fromARGB(255, 121, 122, 123),
    brightness: Brightness.dark,
  );
}
