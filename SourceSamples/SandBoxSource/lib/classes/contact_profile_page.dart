import 'package:flutter/material.dart';
import '../classes/ui_build.dart';
import '../classes/ui_themes.dart';

class ContactProfilePage extends StatelessWidget {
  const ContactProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: UiAppThemes.setLightTheme(),
        home: UiBuildMethods.buildScreen());
  }
}

// to control theme when you want light and dark control
//themeMode: ThemeMode.system,
//darkTheme: setDarkTheme(),
