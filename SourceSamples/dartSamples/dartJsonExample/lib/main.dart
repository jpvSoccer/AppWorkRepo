// original methodology idea came from
// stackoverflow user:16448958 Yana Dior
//https://stackoverflow.com/questions/71633864/how-to-read-json-file-in-dart-console-app/72559734#72559734
//after analysis i determined that there was no need to a MODEL
// all the necessary data is there after jsonDecode

import 'dart:ffi';
import 'dart:io';
import 'dart:convert';
import 'dart:math';
import 'debugPrintMethods/debugPrintMethods.dart';

const String JSONOBJECTSFILE = "sample_3_objects.json";

/// This code will show how to access and decode a JSON
/// file that has 1 or 3 objects with a different number of maps in each
///

void main() {
  // read json file into string
  // the json file has named objects that contain
  // a list of one or more maps
  var jsonFileString = File(JSONOBJECTSFILE).readAsStringSync();
  //printJsonFileStringDebugger(jsonFileString);

  // decode json string into Maps
  dynamic decodedJsonFileData = jsonDecode(jsonFileString);
  //print("decoded json objects ${decodedJsonFileData.keys}");
  //decodedJsonFileData.keys.forEach((item) {
  //  print("found object: ${item}");
  //});
  //printJsonObjectsDebugger(decodedJsonFileData);

  // list will contain all first level objects found in json file
  List objectList = [];
  for (var objectKey in decodedJsonFileData.keys) {
    objectList.add(objectKey);
  }
  print("objectList: $objectList");
  //objectList.insert(3, "myNewObject");
  //print("objectList0: ${objectList.elementAt(0)}");

  //iterate through the json object list
  // and extract the associated maps for each object
  int objectCount = 0;
  for (String listOfMaps in objectList) {
    ++objectCount;
    if (objectCount == 1) {
      List<dynamic> extractedMap1 = decodedJsonFileData[listOfMaps];
      print("$listOfMaps $extractedMap1");
      extractedMap1
          .forEach((item) => print("Extracted map from $listOfMaps $item"));
    }
    if (objectCount == 2) {
      List<dynamic> extractedMap2 = decodedJsonFileData[listOfMaps];
      print("$listOfMaps $extractedMap2");
      extractedMap2
          .forEach((item) => print("Extracted map from $listOfMaps $item"));
    }
    ;
    if (objectCount == 3) {
      List<dynamic> extractedMap3 = decodedJsonFileData[listOfMaps];
      print("$listOfMaps $extractedMap3");
      extractedMap3
          .forEach((item) => print("Extracted map from $listOfMaps $item"));
    }
    ;
    if (objectCount == 4) {
      print(
          "WARNING: there is no 4th json object by the name of ${objectList.elementAt(objectCount - 1)}");
    }
    ;
  }
  exit(0);
//JPV  // extract all relevant objects
//JPV  //// sample json has three objects that can be extracted
//JPV  //   listOfMaps1, listOfMaps2, listOfMaps3
//JPV//  dynamic extractedMap1 = decodedJsonFileData["listOfMaps1"];
//JPV  dynamic extractedMap2 = decodedJsonFileData["listOfMaps2"];
//JPV  dynamic extractedMap3 = decodedJsonFileData["listOfMaps3"];
//JPV  //printExtractedObjectsToManipulateDebugger(
//JPV  //    extractedMap1, extractedMap2, extractedMap3);
//JPV
//JPV  int mapCount = 0;
//JPV  if (extractedMap1 != null) {
//JPV    extractedMap1.forEach((item) {
//JPV      //print(decodedJsonFileData.keys.first);
//JPV      ++mapCount;
//JPV      //print("\nExtracted Object Item: ${item}");
//JPV//      print("${item}  map ${mapCount} keys: ${item.keys}");
//JPV//      print("$item  map ${mapCount} values: ${item.values}");
//JPV      //print("mapKey1 value: ${item["mapKey1"]}");
//JPV      //print("mapKey2 value: ${item["mapKey2"]}\n");
//JPV    });
//JPV  }
//JPV  //printExtractedObjectDebugger(formattedObject1);
//JPV  mapCount = 0;
//JPV  if (extractedMap2 != null) {
//JPV    ++mapCount;
//JPV    extractedMap2.forEach((item) {
//JPV      //     print("\nExtracted Object Item: ${item}");
//JPV      print("$item  map ${mapCount} keys: ${item.keys}");
//JPV      print("$item  map ${mapCount} values: ${item.values}");
//JPV      //print("mapKey1 value: ${item["mapKey1"]}");
//JPV      //print("mapKey2 value: ${item["mapKey2"]}");
//JPV      //print("mapKey3 value: ${item["mapKey3"]}\n");
//JPV    });
//JPV  }
//JPV  //printExtractedObjectDebugger(formattedObject2);
//JPV
//JPV  mapCount = 0;
//JPV  if (extractedMap3 != null) {
//JPV    ++mapCount;
//JPV    extractedMap3.forEach((item) {
//JPV//      print("\nExtracted Object Item: ${item}");
//JPV      print("$item  map ${mapCount} keys: ${item.keys}");
//JPV      print("$item  map ${mapCount} values: ${item.values}");
//JPV      //print("mapKey1 value: ${item["mapKey1"]}");
//JPV      //print("mapKey2 value: ${item["mapKey2"]}");
//JPV      //print("mapKey3 value: ${item["mapKey3"]}");
//JPV      //print("mapKey4 value: ${item["mapKey4"]}\n");
//JPV    });
//JPV  }
//JPV  //printExtractedObjectDebugger(formattedObject2);
}
