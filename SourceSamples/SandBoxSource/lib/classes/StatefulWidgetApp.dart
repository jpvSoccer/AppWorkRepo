import 'package:flutter/material.dart';
import '../settings/constants.dart';

class StatefulWidgetApp extends StatefulWidget {
  const StatefulWidgetApp({Key? key}) : super(key: key);

  @override
  MyStateVar1 createState() => MyStateVar1();
}

class MyStateVar1 extends State<StatefulWidgetApp> {
  MyStateVar1({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            appTitle,
            style: const TextStyle(fontSize: 15),
          ),
          leading: const Icon(Icons.home),
          actions: <Widget>[
            IconButton(
                iconSize: 25,
                onPressed: () {
                  setState(() {
                    displayText = displayText == englishGreeting
                        ? spanishGreeting
                        : englishGreeting;
                  });
                },
                icon: const Icon(Icons.refresh))
          ],
        ),
        body: Center(
          child: Text(displayText),
        ),
      ),
    );
  }
}
