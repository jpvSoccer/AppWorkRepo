// original methodology idea came from
// stackoverflow user:16448958 Yana Dior
//https://stackoverflow.com/questions/71633864/how-to-read-json-file-in-dart-console-app/72559734#72559734

import 'dart:io';
import 'dart:convert';
//import 'jsonModels/jsonObjectModels.dart';

const String JSONOBJECTSFILE = "sample.json";

/// This code will show how to access and decode a JSON
/// file that has 3 objects with a different number of items in each
///

void main() {
  // read json file into string`
  var jsonFileString = File(JSONOBJECTSFILE).readAsStringSync();
  //printJsonFileStringDebugger(jsonFileString);

  // decode json string into Maps
  final Map<String, dynamic> decodedJsonFileData = jsonDecode(jsonFileString);
//  printJsonObjectsDebugger(decodedJsonFileData);

  // extract all relevant objects
  //// sample json has three objects that can be extracted
  //   jsonObject1, jsonObject2, jsonObject3
  dynamic extractedObject1 = decodedJsonFileData["jsonObject1"];
  dynamic extractedObject2 = decodedJsonFileData["jsonObject2"];
  dynamic extractedObject3 = decodedJsonFileData["jsonObject3"];
  //printExtractedObjectsToManipulateDebugger(
  //    extractedObject1, extractedObject2, extractedObject3);

  //List<JSONOBJECTMODEL1>? formattedObject1;
  if (extractedObject1 != null) {
//    formattedObject1 = <JSONOBJECTMODEL1>[];
    extractedObject1.forEach((item) {
      //    print("\nExtracted Object Item: ${item}");
      print("keys: ${item.keys}");
      print("values: ${item.values}");
      print("mapKey1_1 value: ${item["mapKey1_1"]}");
      print("mapKey2_1 value: ${item["mapKey2_1"]}\n");
      //formattedObject1?.add(new JSONOBJECTMODEL1(
      //    value1_1: item["mapKey1_1"], value2_1: item["mapKey2_1"]));
    });
  }
  //printExtractedObjectDebugger(formattedObject1);

  // List<JSONOBJECTMODEL2>? formattedObject2;
  if (extractedObject2 != null) {
    //   formattedObject2 = <JSONOBJECTMODEL2>[];
    extractedObject2.forEach((item) {
      //     print("\nExtracted Object Item: ${item}");
      print("keys: ${item.keys}");
      print("values: ${item.values}");
      print("mapKey1_2 value: ${item["mapKey1_2"]}");
      print("mapKey2_2 value: ${item["mapKey2_2"]}");
      print("mapKey3_2 value: ${item["mapKey3_2"]}\n");
      //formattedObject2?.add(new JSONOBJECTMODEL2(
      //    value1_2: item["mapKey1_2"],
      //    value2_2: item["mapKey2_2"],
      //    value3_2: item["mapKey3_2"]));
      //print("Formatted JsonObject Item Info: ${item}");
    });
  }
  //printExtractedObjectDebugger(formattedObject2);

//  List<JSONOBJECTMODEL3>? formattedObject3;
  if (extractedObject3 != null) {
    //   formattedObject3 = <JSONOBJECTMODEL3>[];
    extractedObject3.forEach((item) {
//      print("\nExtracted Object Item: ${item}");
      print("keys: ${item.keys}");
      print("values: ${item.values}");
      print("mapKey1_3 value: ${item["mapKey1_3"]}");
      print("mapKey2_3 value: ${item["mapKey2_3"]}");
      print("mapKey3_3 value: ${item["mapKey3_3"]}");
      print("mapKey4_3 value: ${item["mapKey4_3"]}\n");
      //formattedObject3?.add(new JSONOBJECTMODEL3(
      //    value1_3: item["mapKey1_3"],
      //    value2_3: item["mapKey2_3"],
      //    value3_3: item["mapKey3_3"],
      //    value4_3: item["mapKey4_3"]));
      //print("Formatted JsonObject Item Info: ${item}");
    });
  }
  //printExtractedObjectDebugger(formattedObject2);

  //formattedObject1?.forEach((item) => print("JsonObject 1 Info: ${item}"));
  //formattedObject2?.forEach((item) => print("JsonObject 2 Info: ${item}"));
  //formattedObject3?.forEach((item) => print("JsonObject 3 Info: ${item}"));
}

printJsonFileStringDebugger(jsonFileString) {
  print("\nStart Json String Debug Printing");
  print("------------------------------------\n");
  print("read string length ${jsonFileString.length}");
  print("string created from json file read ${jsonFileString}");
  print("Stop Json String Debug Printing");
  print("------------------------------------\n");
}

printJsonObjectsDebugger(decodedJsonFileData) {
  print("\nStart Json Objects Debug Printing");
  print("------------------------------------\n");
  print("number of json objects found ${decodedJsonFileData.length}");
  print("decoded json objects ${decodedJsonFileData.keys}");
  print("maps for json objects ${decodedJsonFileData.values}");
  print(
      "all objects and their maps after decoding json string ${decodedJsonFileData}");
  print("json map entries ${decodedJsonFileData.entries}");
  print("first json object decoded ${decodedJsonFileData.keys.first}");
  print("map for first json object ${decodedJsonFileData.values.first}");
  print("Stop Json Objects Debug Printing");
  print("------------------------------------\n");
}

printExtractedObjectsToManipulateDebugger(
    extractedObject1, extractedObject2, extractedObject3) {
  print("object map pulled from jsonObject1 ${extractedObject1}");
  print("object map pulled from jsonObject2 ${extractedObject2}");
  print("object map pulled from jsonObject3 ${extractedObject3}");
}

printExtractedObjectDebugger(formattedObject1) {
  print("\nStart Extracted Object Debug Printing");
  print("------------------------------------\n");
  formattedObject1?.forEach((element) => print(element));
  print("\nformattedObject1 ${formattedObject1}");
  print("\nextracted ${formattedObject1?.length} objects");
  print("\nMap 0 JsonObject 0 ${formattedObject1?[0]}");
  //print("\nMap 1 JsonObject 1 ${formattedObject1?[1]}");
  print("\nStop Extracted Object Debug Printing");
  print("------------------------------------\n");
}
