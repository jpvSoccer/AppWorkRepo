// jvogel dart work
// trying to put classes in a seperate file

import "dart:io";
import 'constants.dart';

class MyFileParse {
  File file;

  MyFileParse(this.file);

  myExtractDataFromFile() {
    List parsedList = [];
    print("Extracting data from file\n");
    List fileData = file.readAsLinesSync();
    // remove comment lines by building a new list without commented lines
    fileData.forEach((element) {
      if (!(element.contains("#", 0))) {
        parsedList.add(element);
      }
    });
    print("raw data read from data file:\n$fileData \n\n");
    print("the parsed list is:\n $parsedList\n");
    int parsedListLength = parsedList.length;
    print("we have data for $parsedListLength animals\n");
    for (var i = 0; i < parsedListLength; i++) {
      String testMe = parsedList[i];
      print("animal record is: $testMe");
      List parsedListElement$i = parsedList[i].split(" ");
      for (var j = 0; j < parsedListElement$i.length; j++) {
        print(
          parsedListElement$i[j],
        );
      }
    }
    parsedList.forEach((element) {
      //print(element);
      List parsedListElement = element.split(" ");
      String animalId = parsedListElement[0];
      String animalName = parsedListElement[1];
      String animalDob = parsedListElement[2];
      String animalGender = parsedListElement[3];
      String animalWeight = parsedListElement[4];
      //print(animalId);
    });

    //fileData.removeWhere((element) => false); not tested or used

    // this is if we want to work with a string instead of a list
    // String fileData = file.readAsStringSync();
    //String parsedStringNoSpaces = fileData.replaceAll(' ', '');
    //List parsedString = parsedStringNoSpaces.split(",");
    //List parsedString = fileData.split(" ");
    //print("parsed data read from data filei:\n$parsedString\n\n");
    //parsedString.forEach(print);
    //parsedString.forEach((element) => print(element));

    //this is if we want to work with a non-blocking method
    // this lets the program continue while file access is running
    //Future<String> fileData = file.readAsString();
    //fileData.then((c) => print(c));
  }
}

class MyFileInitialization {
  File file;
  MyFileInitialization(this.file);

  printTestFilePath() {
    print(file.path);
  }

  removeOldTestFile() {
    print("JPV removing data file");
    Process.runSync('rm', ['../data/test.txt']);
  }

  myInitializeFile() {
    if (file.existsSync() == false) {
      print("\nAnimal data file does not exist; creating new data file\n");
      print("Adding commented header to data file\n");
      file.createSync();
      file.writeAsStringSync("#Data file ussage\n", mode: FileMode.append);
      file.writeAsStringSync("#first char # is comment line\n",
          mode: FileMode.append);
      file.writeAsStringSync("#here are the currently supported fields\n",
          mode: FileMode.append);
      file.writeAsStringSync("#animalId NAME DOB GENDER WEIGHT\n",
          mode: FileMode.append);
    } else {
      print("Existing animal data file found\n");
    }
  }
}

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
