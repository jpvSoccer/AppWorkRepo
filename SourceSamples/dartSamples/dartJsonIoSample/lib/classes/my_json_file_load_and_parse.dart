import "dart:io";

class MyJsonFileLoadAndParse {
  File jsonFile;

  MyJsonFileLoadAndParse(this.jsonFile);

  myReadJsonFromFile() {
    print("Extracting data from file\n");
    List fileData = jsonFile.readAsLinesSync();
    return fileData;
  }

  myExtractJsonData(List fileData) {
    List parsedList = [];
    // remove comment lines by building a new list without commented lines

    fileData.forEach((element) {
      if (!(element.contains("#", 0))) {
        parsedList.add(element);
      }
    });
    return parsedList;
  }

//    print("the parsed list is:\n $parsedList\n");
//    int parsedListLength = parsedList.length;
//    print("we have data for $parsedListLength animals\n");
//    for (var i = 0; i < parsedListLength; i++) {
//      String testMe = parsedList[i];
//      print("animal record is: $testMe");
//      List parsedListElement$i = parsedList[i].split(" ");
//      for (var j = 0; j < parsedListElement$i.length; j++) {
//        print(
//          parsedListElement$i[j],
//        );
//      }
//    }
//    parsedList.forEach((element) {
//      //print(element);
//      List parsedListElement = element.split(" ");
//      String animalId = parsedListElement[0];
//      String animalName = parsedListElement[1];
//      String animalDob = parsedListElement[2];
//      String animalGender = parsedListElement[3];
//      String animalWeight = parsedListElement[4];
//      //print(animalId);
//    });

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
