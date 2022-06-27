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
    // String fileData = file.readAsStringSync();
    List fileData = file.readAsLinesSync();
    // remove comment lines
    fileData.forEach((element) {
      if (!(element.contains("#", 0))) {
        parsedList.add(element);
      }
    });
    print("data read from data file:\n$fileData \n\n");
    //parsedList.remove(null);
    print(parsedList);
    //fileData.removeWhere((element) => false); not tested or used

    //String parsedStringNoSpaces = fileData.replaceAll(' ', '');
    //List parsedString = parsedStringNoSpaces.split(",");

    //List parsedString = fileData.split(" ");
    //print("parsed data read from data filei:\n$parsedString\n\n");
    //parsedString.forEach(print);

    //parsedString.forEach((element) => print(element));
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
