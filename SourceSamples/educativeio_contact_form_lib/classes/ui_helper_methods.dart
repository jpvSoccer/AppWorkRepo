import 'package:flutter/material.dart';

/// this class has the methods that are called to build the first screen
class UiHelperMethods {
//TODO can this be combined into a sigle method?
  ///returns a Column widget of a container that holds the contact picture
  static addMyPicture() {
    return Column(children: <Widget>[
      addPicContainerViaUrl(),
    ]);
  }

  ///returns a Column widget of a container to present the contact name
  static Widget addMyName() {
    return Column(children: <Widget>[
      addNameContainer(),
    ]);
  }

  /// returns a Container widget that holds the contact picture
  static Widget addPicContainerViaUrl() {
    return Container(
//access to the internet on macOS is controlled
//file sandbox/macos/Runner/DebugProfile.entitlements
// add to enable internet access
//<key>com.apple.security.network.client</key>
//<true/>
      // ignore: sized_box_for_whitespace
      width: double.infinity,
      //height: 250,
      child: Image.network(
        "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
        height: 500,
        fit: BoxFit.fitHeight,
      ),
    );
  }

  /// returns a Container widget that holds the contact name
  static Widget addNameContainer() {
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
  static Widget addDivider() {
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
  static Widget addButtonsContainer() {
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

  /// returns a Row widget with calls to all the profile builder methods
  ///
  /// buildCallButton(), buildTextButton(), buildVideoCallButton(),
  /// buildEmailButton(), buildDirectionsButton(), buildPayButton(),
  static Widget profileActonItems() {
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

  /// returns a Column widget with a call feature
  static Widget buildCallButton() {
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

  /// returns a Column widget with a text feature
  static Widget buildTextButton() {
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

  /// returns a Column widget with a video call feature
  static Widget buildVideoCallButton() {
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

  /// returns a Column widget with an email feature
  static Widget buildEmailButton() {
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

  /// returns a Column widget with a directions feature
  static Widget buildDirectionsButton() {
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

  /// returns a Column widget for a pay feature
  static Widget buildPayButton() {
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

  /// returns a ListTile widget with the mobile phone number
  static Widget mobilePhoneListTile() {
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

  /// returns a ListTile widget with the other phone number
  static Widget otherPhoneListTile() {
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

  /// returns a ListTile widget with the work email
  static Widget emailListTile() {
    return const ListTile(
      leading: Icon(Icons.email),
      title: Text("priyanka@priyanka.com"),
      subtitle: Text("work"),
    );
  }

  /// returns a ListTile widget with the home address
  static Widget addressListTile() {
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
}
