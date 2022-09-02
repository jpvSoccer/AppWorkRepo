import 'dart:developer';

import 'package:flutter/material.dart';
import '../classes/ui_build.dart';
import '../classes/ui_themes.dart';

enum AppTheme { light, dark }

/// main entry class for the contact page application
///
/// this app has the following attributes:
/// appBar with a leading return and a the ability
/// to start the contact page (right now it just logs a message to the terminal)
class ContactProfilePage extends StatefulWidget {
  const ContactProfilePage({Key? key}) : super(key: key);
  @override
  ContactProfilePageState createState() => ContactProfilePageState();
}

class ContactProfilePageState extends State<ContactProfilePage> {
  var currentTheme = AppTheme.light;
  @override
  Widget build(BuildContext context) {
    log('JPV building Material APP', name: 'ContactProfilePage');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: currentTheme == AppTheme.dark
          ? UiAppThemes.setDarkTheme()
          : UiAppThemes.setLightTheme(),
      home: Scaffold(
        appBar: UiBuild.buildAppBar(),
        body: UiBuild.buildFirstScreen(),
        floatingActionButton: addFloatingActionButton(),
      ),
    );
  }

// JPV this must be in the statefull widget class!!!
  Widget addFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          currentTheme == AppTheme.dark
              ? currentTheme = AppTheme.light
              : currentTheme = AppTheme.dark;
        });
      },
      child: const Icon(Icons.threesixty),
    );
  }
}
