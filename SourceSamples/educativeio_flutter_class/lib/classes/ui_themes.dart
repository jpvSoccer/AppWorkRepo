import 'dart:developer';

import 'package:flutter/material.dart';
import 'dart:io' show Platform;

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
  /// buttonTheme
  /// typography
  static ThemeData setDarkTheme() {
    log('JPV setting up theme data', name: 'setLightTheme');
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      iconTheme: const IconThemeData(
        color: Colors.orange,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.orange,
      ),
      typography: setTargetPlatform(),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }

  /// setLightTheme returns a ThemeData type with the following attributes.
  ///
  /// brightness
  /// appBarTheme
  /// iconTheme
  /// buttonTheme
  /// typography
  static ThemeData setLightTheme() {
    log('JPV setting up theme data', name: 'setLightTheme');
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      iconTheme: const IconThemeData(
        color: Colors.blue,
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blue,
      ),
      //colorScheme: const ColorScheme.light(), //TODO stop here
      typography: setTargetPlatform(),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }

  static Typography setTargetPlatform() {
    return Typography.material2021(
      platform: findPlatformType(),
    );
  }

  static TargetPlatform findPlatformType() {
    if (Platform.isAndroid) {
      log('JPV Platform is android', name: 'findPlatformType');
      return TargetPlatform.android;
    } else if (Platform.isMacOS) {
      log('JPV Platform is macOS', name: 'findPlatformType');
      return TargetPlatform.macOS;
    } else if (Platform.isIOS) {
      log('JPV Platform is iOS', name: 'findPlatformType');
      return TargetPlatform.iOS;
    } else if (Platform.isFuchsia) {
      log('JPV Platform is fuchsia', name: 'findPlatformType');
      return TargetPlatform.fuchsia;
    } else if (Platform.isWindows) {
      log('JPV Platform is windows', name: 'findPlatformType');
      return TargetPlatform.windows;
    } else {
      log('JPV Platform is linux', name: 'findPlatformType');
      return TargetPlatform.linux;
    }
  }
}
