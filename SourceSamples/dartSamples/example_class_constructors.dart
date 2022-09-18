import '../constants/constants.dart';

// a class using the named default constructor
// making an instance of a class using default constructor
//  var my_class_1 = new MyClass1();
// making another instance
//  var my_class_1_a = new MyClass1();
// overloading and calling class method
//  my_class_1_a.object_hello = "overloading instance variable";
//  my_class_1_a.printStuff();
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

// making an instance of a class with parameters in  constructor
// parameters are nullable
//  var my_class_2 = new MyClass2(7, "instantiated");
//  my_class_2.printStuff();
// overloading and calling class method
//  my_class_2.myInt = 1000;
//  my_class_2.printStuff();
//  var my_class_2_a = new MyClass2(null, null);
//  my_class_2_a.printStuff();
//  my_class_2_a.myInt = 8;
//  my_class_2_a.object_hello = "hi from main";
//  my_class_2_a.printStuff();
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

// try using named parameters
// var my_class_3 = new MyClass3(object_hello: "testing named parameter");
//  my_class_3.printStuff();
//  my_class_3.myInt = 8;
//  my_class_3.printStuff();
class MyClass3 {
  String? object_hello;
  MyClass3({this.object_hello}) {
    if (DEBUG1) print("$STRPREFIX constructor says: $MyClass3 $object_hello");
  }
}
