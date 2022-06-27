// jvogel dart work
import 'dart:io';
import 'constants.dart';
import 'classes.dart';

final file = File('../data/test.txt');

void main() {
  var my_file_initialization = new MyFileInitialization(file);
  var my_file_parse = new MyFileParse(file);
  //my_file_initialization.printTestFilePath();
  //my_file_initialization.removeOldTestFile();
  my_file_initialization.myInitializeFile();
  my_file_parse.myExtractDataFromFile();

//    file.writeAsStringSync("animalId, NAME, DOB, GENDER, WEIGHT\n",
//        mode: FileMode.append);

// this lets the program continue while file access is running
//  Future<String> fileData = file.readAsString();
//  fileData.then((c) => print(c));

// making an instance of a class using default constructor
//  var my_class_1 = new MyClass1();

// making another instance
//  var my_class_1_a = new MyClass1();

// overloading and calling class method
//  my_class_1_a.object_hello = "overloading instance variable";
//  my_class_1_a.printStuff();

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

// try using named parameters
  // var my_class_3 = new MyClass3(object_hello: "testing named parameter");
//  my_class_3.printStuff();
//  my_class_3.myInt = 8;
//  my_class_3.printStuff();
}
