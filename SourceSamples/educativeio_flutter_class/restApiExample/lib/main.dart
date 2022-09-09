import 'package:flutter/material.dart';

void main() => runApp(const HelloFlutterApp());

class HelloFlutterApp extends StatelessWidget {
  const HelloFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Center(
        child: Text("Hello Mutter !"),
      ),
      debugShowMaterialGrid: true,
    );
  }
}
