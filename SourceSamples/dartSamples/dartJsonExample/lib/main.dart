import 'dart:io';
import 'dart:convert';
import 'debugPrintMethods/debugPrintMethods.dart';

/// This code will show how to access and decode a JSON
/// file that has the following structure:
/// a map with keys of topLevelKeys and values of a list-of-maps
///   {
///    "topLevelKey": [
///        {
///            "mapKey1": 0,
///            "mapKey2": "value1",
///        },
///        {
///            "mapKey1": "value5",
///            "mapKey2": "value6"
///        }
///    ]
///  }
///

const String JSONOBJECTSFILE = "sample_3_objects.json";
//const String JSONOBJECTSFILE = "sample_1_object.json";

void main() {
  // read json file into string
  String? jsonFileString = File(JSONOBJECTSFILE).readAsStringSync();
  //printJsonFileStringDebugger(jsonFileString);

  // decode json string into a Map
  dynamic decodedJsonFileData = jsonDecode(jsonFileString);
  List topLevelKeysList = [];
  decodedJsonFileData.keys.forEach((item) {
    print("adding key to top level keys list $item");
    topLevelKeysList.add(item);
  });
  decodedJsonFileData.values.forEach((item) => print("found value $item"));
  //printJsonObjectsDebugger(decodedJsonFileData);
  // create a list that will contain all first level keys found in json file
  //for (var objectKey in decodedJsonFileData.keys) {
  //  topLevelKeysList.add(objectKey);
  //}
  //print("objects: $topLevelKeysList");
  //print("object 0: ${topLevelKeysList[0]}");
  //print("object 1: ${topLevelKeysList[1]}");
  //print("object 2: ${topLevelKeysList[2]}");
  //topLevelKeysList.insert(3, "myNewObject");
  //print("topLevelKeysList: ${topLevelKeysList.elementAt(0)}");

  //iterate through the json top-level object key list
  // and extract the associated maps for each key
  int objectCount = 0;
  for (String topLevelKey in topLevelKeysList) {
    ++objectCount;
    if (objectCount == 1) {
      List<dynamic> extractedMapList0 = decodedJsonFileData[topLevelKey];
      //print("$topLevelKey $extractedMapList");
      print("\nobject $topLevelKey");
      print("number of maps ${extractedMapList0.length}");
      int mapCount = 0;
      for (dynamic item in extractedMapList0) {
        ++mapCount;
        //print("map $mapCount $item");
      }
      //print("map 0 from $topLevelKey is ${extractedMapList0[0]}");
      if (mapCount == 1) {
        Map map0 = extractedMapList0[0];
        print("number of k-v pairs ${map0.length}");
        print({
          map0.keys.elementAt(objectCount - 1),
          map0.values.elementAt(objectCount - 1)
        });
        print({
          map0.keys.elementAt(objectCount - 0),
          map0.values.elementAt(objectCount - 0)
        });
      }
      //extractedMapList1
      //    .forEach((item) => print("Extracted map from $topLevelKey $item"));
    }
    if (objectCount == 2) {
      List<dynamic> extractedMapList1 = decodedJsonFileData[topLevelKey];
      print("\nobject $topLevelKey");
      print("number of maps ${extractedMapList1.length}");
      int mapCount = 0;
      for (dynamic item in extractedMapList1) {
        ++mapCount;
        //  print("map $mapCount $item");
      }
//      if (mapCount == 1) {
//        Map map0 = extractedMapList1[0];
//        print("number of k-v pairs ${map0.length}");
//        print({
//          map0.keys.elementAt(objectCount - 1),
//          map0.values.elementAt(objectCount - 1)
//        });
//        print({
//          map0.keys.elementAt(objectCount - 0),
//          map0.values.elementAt(objectCount - 0)
//        });
//      }
      if (mapCount == 2) {
        Map map1 = extractedMapList1[0];
        Map map2 = extractedMapList1[1];
        print("map 1 number of k-v pairs ${map1.length}");
        print({
          map1.keys.elementAt(objectCount - 2),
          map1.values.elementAt(objectCount - 2)
        });
        print({
          map1.keys.elementAt(objectCount - 1),
          map1.values.elementAt(objectCount - 1)
        });
        print({
          map1.keys.elementAt(objectCount - 0),
          map1.values.elementAt(objectCount - 0)
        });
        print("map 2 number of k-v pairs ${map2.length}");
        print({
          map2.keys.elementAt(objectCount - 2),
          map2.values.elementAt(objectCount - 2)
        });
        print({
          map2.keys.elementAt(objectCount - 1),
          map2.values.elementAt(objectCount - 1)
        });
        print({
          map2.keys.elementAt(objectCount - 0),
          map2.values.elementAt(objectCount - 0)
        });
      }
      //print("map 0 from $topLevelKey is ${extractedMapList2[0]}");
      //print("map 1 from $topLevelKey is ${extractedMapList2[1]}");
      //extractedMapList2
      //    .forEach((item) => print("Extracted map from $topLevelKey $item"));
    }
    ;
    if (objectCount == 3) {
      List<dynamic> extractedMapList2 = decodedJsonFileData[topLevelKey];
      //print("$topLevelKey $extractedMapList2");
      print("\nobject $topLevelKey");
      print("number of maps ${extractedMapList2.length}");
      int mapCount = 0;
      for (dynamic item in extractedMapList2) {
        ++mapCount;
        //print("map $mapCount $item");
      }
      if (mapCount == 3) {
        Map map0 = extractedMapList2[0];
        Map map1 = extractedMapList2[1];
        Map map2 = extractedMapList2[2];
        print("map0 number of k-v pairs ${map0.length}");
        print({
          map0.keys.elementAt(objectCount - 3),
          map0.values.elementAt(objectCount - 3)
        });
        print({
          map0.keys.elementAt(objectCount - 2),
          map0.values.elementAt(objectCount - 2)
        });
        print({
          map0.keys.elementAt(objectCount - 1),
          map0.values.elementAt(objectCount - 1)
        });
        print({
          map0.keys.elementAt(objectCount - 0),
          map0.values.elementAt(objectCount - 0)
        });
        print("map1 number of k-v pairs ${map1.length}");
        print({
          map1.keys.elementAt(objectCount - 3),
          map1.values.elementAt(objectCount - 3)
        });
        print({
          map1.keys.elementAt(objectCount - 2),
          map1.values.elementAt(objectCount - 2)
        });
        print({
          map1.keys.elementAt(objectCount - 1),
          map1.values.elementAt(objectCount - 1)
        });
        print({
          map1.keys.elementAt(objectCount - 0),
          map1.values.elementAt(objectCount - 0)
        });
        print("map2 number of k-v pairs ${map2.length}");
        print({
          map2.keys.elementAt(objectCount - 3),
          map2.values.elementAt(objectCount - 3)
        });
        print({
          map2.keys.elementAt(objectCount - 2),
          map2.values.elementAt(objectCount - 2)
        });
        print({
          map2.keys.elementAt(objectCount - 1),
          map2.values.elementAt(objectCount - 1)
        });
        print({
          map2.keys.elementAt(objectCount - 0),
          map2.values.elementAt(objectCount - 0)
        });
      }
      //print("map 0 from $topLevelKey is ${extractedMapList2[0]}");
      //print("map 1 from $topLevelKey is ${extractedMapList2[1]}");
      //print("map 2 from $topLevelKey is ${extractedMapList2[2]}");
      //extractedMapList2
      //    .forEach((item) => print("Extracted map from $topLevelKey $item"));
    }
    ;
    if (objectCount == 4) {
      print(
          "WARNING: there is no 4th json object by the name of ${topLevelKeysList.elementAt(objectCount - 1)}");
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
