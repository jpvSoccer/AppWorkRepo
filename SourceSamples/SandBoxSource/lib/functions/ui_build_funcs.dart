import 'package:flutter/material.dart';

/// setDarkTheme returns a ThemeData type with the following attributes.
///
/// brightness
/// appBarTheme
/// iconTheme
ThemeData setDarkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.blue),
    ),
    iconTheme: const IconThemeData(
      color: Colors.indigo,
    ),
  );
}

/// setLightTheme returns a ThemeData type with the following attributes.
///
/// brightness
/// appBarTheme
/// iconTheme
ThemeData setLightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.blue),
    ),
    iconTheme: const IconThemeData(
      color: Colors.indigo,
    ),
  );
}

PreferredSizeWidget buildAppBar() {
  return AppBar(
    leading: const Icon(
      Icons.arrow_back_ios_new,
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.star_border),
        onPressed: () {
          print("Contact is starred");
        },
      ),
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

Widget buildScreen() {
  return Scaffold(
    appBar: buildAppBar(),
    body: buildFirstScreen(),
  );
}

Widget buildFirstScreen() {
  return ListView(
    children: <Widget>[
      addMyPicture(),
      addMyName(),
      addDivider(),
      addButtonsContainer(),
      addDivider(),
      mobilePhoneListTile(),
      otherPhoneListTile(),
      addDivider(),
      emailListTile(),
      addDivider(),
      addressListTile(),
    ],
  );
}

Widget addMyPicture() {
  return Column(children: <Widget>[
    addPicContainerViaUrl(),
  ]);
}

Widget addMyName() {
  return Column(children: <Widget>[
    addNameContainer(),
  ]);
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
      //height: 400,
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

/// addDivider is a function that creates a grey dividing line on the UI
Widget addDivider() {
  return const Divider(
    color: Colors.grey,
  );
}

/// create the container for the action buttons
///
/// create a local theme for the actions container
///
/// overide the local theme for the Pay button
///
/// add the action buttons to the container
Widget addButtonsContainer() {
  return Container(
    margin: const EdgeInsets.only(top: 8, bottom: 8),
    child: Theme(
      data: ThemeData(
        iconTheme: const IconThemeData(color: Colors.pink),
      ),
      child: profileActonItems(),
    ),
  );
}

Widget profileActonItems() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      buildCallButton(),
      buildTextButton(),
      buildVideoCallButton(),
      buildEmailButton(),
      buildDirectionsButton(),
      buildPayButton(),
    ],
  );
}

Widget buildCallButton() {
  return Column(
    children: <Widget>[
      IconButton(
        icon: const Icon(
          Icons.call,
          //color: Colors.indigo.shade800,
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
        icon: const Icon(
          Icons.message,
          //color: Colors.indigo.shade800,
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
        icon: const Icon(
          Icons.video_call,
          //color: Colors.indigo.shade800,
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
        icon: const Icon(
          Icons.email,
          //color: Colors.indigo.shade800,
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
        icon: const Icon(
          Icons.directions,
          //color: Colors.indigo.shade800,
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
        icon: const Icon(
          Icons.attach_money,
          color: Colors.greenAccent,
        ),
        onPressed: () {},
      ),
      const Text("Pay"),
    ],
  );
}

Widget mobilePhoneListTile() {
  return ListTile(
    leading: const Icon(Icons.call),
    title: const Text("330-803-3390"),
    subtitle: const Text("mobile"),
    trailing: IconButton(
      icon: const Icon(Icons.message),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}

Widget otherPhoneListTile() {
  return ListTile(
    leading: Text(""),
    title: const Text("440-440-3390"),
    subtitle: const Text("other"),
    trailing: IconButton(
      icon: const Icon(Icons.message),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}

Widget emailListTile() {
  return const ListTile(
    leading: Icon(Icons.email),
    title: Text("priyanka@priyanka.com"),
    subtitle: Text("work"),
  );
}

Widget addressListTile() {
  return ListTile(
    leading: Icon(Icons.location_on),
    title: const Text("234 Sunset St, Burlingame"),
    subtitle: const Text("home"),
    trailing: IconButton(
      icon: const Icon(Icons.directions),
      color: Colors.indigo.shade500,
      onPressed: () {},
    ),
  );
}
