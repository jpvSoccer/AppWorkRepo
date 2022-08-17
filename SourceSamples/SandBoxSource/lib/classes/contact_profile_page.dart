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
              AddStarIcon(),
            ],
          ),
          body: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  AddPicContainerViaUrl(),
                  AddNameContainer(),
                ],
              ),
              AddDivider(),
              AddButtonsContainer(),
            ],
          ),
        ));
//see docs.flutter.dev >> Building macOS apps with Flutter
// macOS limits app access to device features
// by default you are not able to access the internet
// to fix exception when trying to access image
//to file sandbox/macos/Runner/DebugProfile.entitlements
//<key>com.apple.security.network.client</key>
//<true/>
  }
}

Widget AddStarIcon() {
  return IconButton(
    icon: const Icon(Icons.star_border),
    color: Colors.black,
    onPressed: () {
      print("Contact is Starred");
    },
  );
}

Widget AddDivider() {
  return const Divider(
    color: Colors.grey,
  );
}

Widget AddButtonsContainer() {
  return Container(
    margin: const EdgeInsets.only(top: 8, bottom: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildCallButton(),
      ],
    ),
  );
}

Widget buildCallButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.call,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
    ],
  );
}

Widget AddPicContainerViaUrl() {
  return Container(
    // ignore: sized_box_for_whitespace
    width: double.infinity,
    height: 250,
    child: Image.network(
      "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
      height: 250,
      fit: BoxFit.cover,
    ),
  );
}

Widget AddNameContainer() {
  return Container(
    // ignore: sized_box_for_whitespace
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const <Widget>[
        Padding(padding: EdgeInsets.all(8.0)),
        Text(
          "Priyanka Tyagi",
          style: TextStyle(fontSize: 30),
        ),
      ],
    ),
  );
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
