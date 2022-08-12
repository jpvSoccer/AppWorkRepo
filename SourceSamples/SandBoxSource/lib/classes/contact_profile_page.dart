import 'package:flutter/material.dart';
import '../settings/constants.dart';

class ContactProfilePage extends StatelessWidget {
  const ContactProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            leading: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.star_border),
                color: Colors.black,
                onPressed: () {
                  print("Contact is Starred");
                },
              )
            ],
          ),
          body: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 250,
                    child: Image.network(
                      "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ],
          ),
// to fix exception when trying to access image
//to file sandbox/macos/Runner/DebugProfile.entitlements
//<key>com.apple.security.network.client</key>
//<true/>

// empty container
//          body: Container(
//            color: Colors.blue,
//          ),
//                title: Text(
//          appTitle,
//          style: const TextStyle(fontSize: 15),
//        ))));
        ));
  }
}

//class MyStateVar1 extends State<ContactProfilePage> {
//  MyStateVar1({Key? key});
//
//  String displayText = englishGreeting;:w

//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(
//            appTitle,
//            style: const TextStyle(fontSize: 15),
//          ),
//          leading: const Icon(Icons.home),
//          actions: <Widget>[
//            IconButton(
//                iconSize: 25,
//                onPressed: () {
//                  setState(() {
//                    displayText = displayText == englishGreeting
//                        ? spanishGreeting
//                        : englishGreeting;
//                  });
//                },
//                icon: const Icon(Icons.refresh))
//          ],
//        ),
//        body: Center(
//          child: Text(
//            displayText,
//            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//          ),
//        ),
//      ),
//    );
//  }
//}
//
