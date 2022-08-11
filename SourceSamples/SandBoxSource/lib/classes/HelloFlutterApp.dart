import 'package:flutter/material.dart';

//Stateless Widget example
class HelloFlutterApp extends StatelessWidget {
  const HelloFlutterApp({Key? key}) : super(key: key);

  static const String _title = "Educative IO App";
  static const String _centerText = "Hello My Flutter";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Scaffold Widget
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          leading: const Icon(Icons.home),
          actions: <Widget>[
            IconButton(
                iconSize: 50, onPressed: () {}, icon: const Icon(Icons.refresh))
          ],
        ),
        body: const Center(
          child: Text(_centerText),
        ),
      ),
      //Added SafeArea widget.
      //Try removing it to see text glued to the top left corner
      //home: SafeArea(
      //  child: Text("Hello Flutter !"),
    );
  }
}
