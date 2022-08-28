import 'package:flutter/material.dart';

class UiHelperMethods {
  static addMyPicture() {
    return Column(children: <Widget>[
      addPicContainerViaUrl(),
    ]);
  }

  static addMyName() {
    return Column(children: <Widget>[
      addNameContainer(),
    ]);
  }

  static addPicContainerViaUrl() {
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

  static addNameContainer() {
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
  static addDivider() {
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
  static addButtonsContainer() {
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

  static profileActonItems() {
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

  static buildCallButton() {
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

  static buildTextButton() {
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

  static buildVideoCallButton() {
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

  static buildEmailButton() {
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

  static buildDirectionsButton() {
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

  static buildPayButton() {
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

  static mobilePhoneListTile() {
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

  static otherPhoneListTile() {
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

  static emailListTile() {
    return const ListTile(
      leading: Icon(Icons.email),
      title: Text("priyanka@priyanka.com"),
      subtitle: Text("work"),
    );
  }

  static addressListTile() {
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
