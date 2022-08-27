import 'package:flutter/material.dart';

/// setDarkTheme returns a ThemeData type with the following attributes.
///
/// brightness
/// appBarTheme
/// iconTheme
ThemeData setDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.blue),
    ),
    iconTheme: const IconThemeData(
      color: Colors.indigo,
    ),
  );
}

/// setLightTheme returns a ThemeData type with the following attributes.
///
/// brightness
/// appBarTheme
/// iconTheme
ThemeData setLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.blue),
    ),
    iconTheme: const IconThemeData(
      color: Colors.indigo,
    ),
  );
}
