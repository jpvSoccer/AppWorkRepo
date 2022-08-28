import 'package:flutter/material.dart';

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

