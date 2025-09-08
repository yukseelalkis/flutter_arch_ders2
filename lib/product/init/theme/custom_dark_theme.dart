import 'package:arch_v2/product/init/theme/custom_theme.dart';
import 'package:arch_v2/product/init/theme/theme.dart';
import 'package:flutter/material.dart';

final class CustomDarkTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    colorScheme: CustomColorTheme.darkScheme(),
    floatingActionButtonTheme: floatingActionButtonThemeData,
    appBarTheme: appBarTheme,
  );

  @override
  final FloatingActionButtonThemeData floatingActionButtonThemeData =
      FloatingActionButtonThemeData();

  @override
  final AppBarThemeData appBarTheme = AppBarThemeData();
}
