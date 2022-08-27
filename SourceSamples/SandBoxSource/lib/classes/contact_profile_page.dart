import 'package:flutter/material.dart';
import '../functions/ui_build_funcs.dart';
import '../functions/ui_theme_funcs.dart';
import '../functions/ui_build_appbar_funcs.dart';

class ContactProfilePage extends StatelessWidget {
  const ContactProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: setLightTheme(),
        home: buildScreen());
  }
}

// to control theme when you want light and dark control
//themeMode: ThemeMode.system,
//darkTheme: setDarkTheme(),