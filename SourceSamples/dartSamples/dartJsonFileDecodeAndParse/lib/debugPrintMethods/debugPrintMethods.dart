printJsonFileStringDebugger(jsonFileString) {
  print("------------------------------------");
  print("Start Json String Debug Printing");
  print("read string length ${jsonFileString.length}");
  print("string created from json file read ${jsonFileString}");
  print("Stop Json String Debug Printing");
  print("------------------------------------\n");
}

printExtractedObjectDebugger(formattedObject1) {
  print("------------------------------------");
  print("Start Extracted Object Debug Printing");
  formattedObject1?.forEach((element) => print(element));
  print("\nformattedObject1 ${formattedObject1}");
  print("\nextracted ${formattedObject1?.length} objects");
  print("\nMap 0 JsonObject 0 ${formattedObject1?[0]}");
  //print("\nMap 1 JsonObject 1 ${formattedObject1?[1]}");
  print("Stop Extracted Object Debug Printing");
  print("------------------------------------");
}

printJsonObjectsDebugger(decodedJsonFileData) {
  print("------------------------------------");
  print("Start Json Objects Debug Printing");
  print("number of json objects found ${decodedJsonFileData.length}");
  print("keys for decoded json objects ${decodedJsonFileData.keys}");
  print(
      "values for objects: lists of maps for json objects ${decodedJsonFileData.values}");
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
  print("------------------------------------");
  print("Start Objects to Manipulate Debug Printing");
  if (extractedObject1 != null) {
    print("object map/s pulled from jsonObject1 ${extractedObject1}");
  }
  if (extractedObject2 != null) {
    print("object map/s pulled from jsonObject2 ${extractedObject2}");
  }
  if (extractedObject3 != null) {
    print("object map/s pulled from jsonObject3 ${extractedObject3}");
  }
  print("Stop Objects to Manipulate Debug Printing");
  print("------------------------------------\n");
}
