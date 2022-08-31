import 'dart:developer';

import 'package:flutter/material.dart';
import '../classes/ui_helper_methods.dart';

/// This class builds the whole first screen
///
class UiBuild {
  /// method buildScreen returns a Scafold Widget to be used
  /// as the appBar and home attributes of the MaterialApp
  ///
  static buildScreen() {
    log('JPV building main Scafold', name: 'UiBuild');
    return Scaffold(
      appBar: buildAppBar(),
      body: buildFirstScreen(),
    );
  }

  /// adds the App Bar with the following characteristics:
  ///
  /// a leading back arrow
  /// and an action IconButton
  static PreferredSizeWidget buildAppBar() {
    log('JPV building appBar', name: 'buildAppBar');
    return AppBar(
      leading: const Icon(
        Icons.arrow_back_ios_new,
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.star_border),
          onPressed: () {
            log('JPV Contact is starred', name: 'buildAppBar');
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
