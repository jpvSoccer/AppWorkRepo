import 'package:flutter/material.dart';
import '../classes/ui_helper_methods.dart';

class UiBuildMethods {
  static buildScreen() {
    return Scaffold(
      appBar: buildAppBar(),
      body: buildFirstScreen(),
    );
  }

//Methods

  /// buildAppBar is a PreferredSizeWidget
  ///
  /// that adds the App Bar with the following characteristics:
  ///
  /// a leading back arrow
  /// and an action IconButton
  static PreferredSizeWidget buildAppBar() {
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

  /// buildFirstScreen is a Widget that builds all
  /// the elements of the first UI screen using
  /// methods from the MyUiMethods class:
  ///
  /// addMyPicture, addMyName, addDivider, addButtonsContainer,
  /// mobilePhoneListTile, otherPhoneListTile,
  /// emailListTile, and addressListTile
  ///
  static Widget buildFirstScreen() {
    return ListView(
      children: <Widget>[
        UiHelperMethods.addMyPicture(),
        UiHelperMethods.addMyName(),
        UiHelperMethods.addDivider(),
        UiHelperMethods.addButtonsContainer(),
        UiHelperMethods.addDivider(),
        UiHelperMethods.mobilePhoneListTile(),
        UiHelperMethods.otherPhoneListTile(),
        UiHelperMethods.addDivider(),
        UiHelperMethods.emailListTile(),
        UiHelperMethods.addDivider(),
        UiHelperMethods.addressListTile(),
      ],
    );
  }
}
