import 'package:flutter/material.dart';
import '../classes/ui_build.dart';
import '../classes/ui_themes.dart';

/// main entry class for the contact page application
///
/// this app has the following attributes:
/// appBar with a leading return and a the ability
/// to start the contact page (right now it just logs a message to the terminal)
class ContactProfilePage extends StatelessWidget {
  const ContactProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: UiAppThemes.setLightTheme(),
      home: UiBuild.buildScreen(),
    );
  }
}

// to control theme when you want light and dark control
//themeMode: ThemeMode.system,
//darkTheme: setDarkTheme(),
