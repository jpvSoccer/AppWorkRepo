import 'package:flutter/material.dart';
//import '../settings/constants.dart';
import '../functions/ui_build_funcs.dart';

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
              mobilePhoneListTile(),
              otherPhoneListTile(),
              addDivider(),
              emailListTile(),
              addDivider(),
              addressListTile(),
            ],
          ),
        ));
  }
}
