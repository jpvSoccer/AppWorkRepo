import 'package:flutter/material.dart';
//import '../settings/constants.dart';

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
              addStarIcon(),
            ],
          ),
          body: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  addPicContainerViaUrl(),
                  addNameContainer(),
                ],
              ),
              addDivider(),
              addButtonsContainer(),
              addDivider(),
            ],
          ),
        ));
  }
}

Widget badAddAppBar() {
  return AppBar(
    backgroundColor: Colors.purple,
    leading: const Icon(
      Icons.arrow_back,
      color: Colors.black,
    ),
    actions: <Widget>[
      addStarIcon(),
    ],
  );
}

Widget addStarIcon() {
  return IconButton(
    icon: const Icon(Icons.star_border),
    color: Colors.black,
    onPressed: () {
      print("Contact is Starred");
    },
  );
}

Widget addDivider() {
  return const Divider(
    color: Colors.grey,
  );
}

Widget addButtonsContainer() {
  return Container(
    margin: const EdgeInsets.only(top: 8, bottom: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildCallButton(),
        buildTextButton(),
        buildVideoCallButton(),
        buildEmailButton(),
        buildDirectionsButton(),
        buildPayButton(),
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
      const Text("Call"),
    ],
  );
}

Widget buildTextButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.message,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      const Text("Text"),
    ],
  );
}

Widget buildVideoCallButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.video_call,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      const Text("Video"),
    ],
  );
}

Widget buildEmailButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.email,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      const Text("Email"),
    ],
  );
}

Widget buildDirectionsButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.directions,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      const Text("Directions"),
    ],
  );
}

Widget buildPayButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: Icon(
          Icons.attach_money,
          color: Colors.indigo.shade800,
        ),
        onPressed: () {},
      ),
      const Text("Pay"),
    ],
  );
}

Widget addPicContainerViaUrl() {
  return Container(
//access to the internet on macOS is controlled
//file sandbox/macos/Runner/DebugProfile.entitlements
// add to enable internet access
//<key>com.apple.security.network.client</key>
//<true/>
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

Widget addNameContainer() {
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

// this sort of works, but i have not figured how to use it
//          appBar: AddAppBar(),
//class AddAppBar extends StatelessWidget implements PreferredSizeWidget {
//  @override
//  Size get preferredSize => const Size.fromHeight(50);
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: Colors.purple,
//      child: Icon(Icons.arrow_back, color: Colors.black),
//    );
//  }
//}
