import 'dart:ui';

import 'package:arch_v2/product/init/theme/custom_theme.dart';
import 'package:arch_v2/product/init/theme/theme.dart';
import 'package:flutter/src/material/app_bar_theme.dart';
import 'package:flutter/src/material/floating_action_button_theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:google_fonts/google_fonts.dart';

final class CustomLightTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    colorScheme: CustomColorTheme.lightScheme(),

    /// font kullanmak Istersem(),
    fontFamily: GoogleFonts.roboto().fontFamily,
    floatingActionButtonTheme: floatingActionButtonThemeData,
    appBarTheme: appBarTheme,
  );

  /// burada kisilestirmeler de Bulanabilirim
  @override
  final FloatingActionButtonThemeData floatingActionButtonThemeData =
      FloatingActionButtonThemeData();

  @override
  AppBarThemeData appBarTheme = AppBarThemeData();
}
