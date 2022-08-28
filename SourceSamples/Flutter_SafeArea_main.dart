import 'package:flutter/material.dart';

void main() => runApp(HelloFlutterApp());

class HelloFlutterApp extends StatelessWidget {
  const HelloFlutterApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //Center widget is removed.
    // Text widget is placed wight under MaterialApp
    return const MaterialApp(
//      home: Text("Hello Flutter !"),
// SafeArea widget keeps text away from OS menus
      home: SafeArea(
          child: Text("Hello Flutter !"),
      ));
  }
}
