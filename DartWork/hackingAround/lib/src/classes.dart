// jvogel dart work
// trying to put classes in a seperate file

import 'constants.dart';

// a class using the named default constructor
class MyClass1 {
  String object_hello = "instantiated";
  // default constructor
  MyClass1() {
    if (DEBUG1) print("$STRPREFIX constructor says: $MyClass1 $object_hello");
  }

  // class method
  printStuff() {
    if (DEBUG1) print("$STRPREFIX $object_hello");
  }
}

class MyClass2 {
  String? object_hello;
  int? myInt;
  MyClass2(this.myInt, this.object_hello) {
    if (DEBUG1)
      print(
          "$STRPREFIX constructor says: $MyClass2 $object_hello with myInt set as $myInt");
  }
  printStuff() {
    if (DEBUG1)
      print(
          "$STRPREFIX in method of $MyClass2 myInst is: $myInt and object_hello is: $object_hello");
  }
}

// using named parameters
class MyClass3 {
  String? object_hello;
  MyClass3({this.object_hello}) {
    if (DEBUG1) print("$STRPREFIX constructor says: $MyClass3 $object_hello");
  }
}
