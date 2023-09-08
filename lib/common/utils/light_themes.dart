import 'package:flutter/material.dart';
import '../../assets_gen/fonts.gen.dart';

ThemeData myThemeData = ThemeData(
  fontFamily: MyFontFamily.ubuntu,
  primaryColor: const Color(0xFF1455AC),
  brightness: Brightness.light,
  highlightColor: Colors.white,
  hintColor: const Color(0xFF9E9E9E),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF1455AC),
    secondary: Color(0xFF004C8E),
    tertiary: Color(0xFFF9D4A8),
    tertiaryContainer: Color(0xFFADC9F3),
    onTertiaryContainer: Color(0xFF33AF74),
    primaryContainer: Color(0xFF9AECC6),
    secondaryContainer: Color.fromARGB(255, 202, 209, 250),
  ),
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
  useMaterial3: true,
);
