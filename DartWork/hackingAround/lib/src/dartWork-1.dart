// jvogel dart work

import 'constants.dart';
import 'classes.dart';

void main() {
  if (DEBUG1) print("$STRPREFIX in main method");

// making an instance of a class using default constructor
  var my_class_1 = new MyClass1();

// making another instance
  var my_class_1_a = new MyClass1();

// overloading and calling class method
  my_class_1_a.object_hello = "overloading instance variable";
  my_class_1_a.printStuff();

// making an instance of a class with parameters in  constructor
// parameters are nullable
  var my_class_2 = new MyClass2(7, "instantiated");
  my_class_2.printStuff();
// overloading and calling class method
  my_class_2.myInt = 1000;
  my_class_2.printStuff();

  var my_class_2_a = new MyClass2(null, null);
  my_class_2_a.printStuff();
  my_class_2_a.myInt = 8;
  my_class_2_a.object_hello = "hi from main";
  my_class_2_a.printStuff();

// try using named parameters
  var my_class_3 = new MyClass3(object_hello: "testing named parameter");
//  my_class_3.printStuff();
//  my_class_3.myInt = 8;
//  my_class_3.printStuff();
}
