import 'package:flutter/material.dart';

//JPV need to have methods defined as static, since
// i am not instantiating this class

/// returns a ThemeData type
///
/// setDarkTheme and setLightTheme are methods to customize the APP theme
class UiAppThemes {
  /// setDarkTheme returns a ThemeData type with the following attributes.
  ///
  /// brightness
  /// appBarTheme
  /// iconTheme
  static ThemeData setDarkTheme() {
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
  static ThemeData setLightTheme() {
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
}
