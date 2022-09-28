import 'dart:io';
import 'dart:convert';

/// This code will show how to access and decode a JSON
/// file that has 3 different object types
///

const String JSONOBJECTSFILE = "sample.json";

// json model for object type 0
// returns a map of the json object each time the class is instantiated
class JSONOBJECTMODEL0 {
  int? objectKeyForId0;
  String? objectKeyForText0;

  //note: named arguments surrounded by {}
  JSONOBJECTMODEL0({this.objectKeyForId0, this.objectKeyForText0});

  @override
  String toString() {
    return "{objectKeyForId0:$objectKeyForId0,objectKeyForText0:$objectKeyForText0}";
  }
}

void main() {
  List<JSONOBJECTMODEL0>? extractedJsonObject;

  //read file contents
  var jsonFileString = File(JSONOBJECTSFILE).readAsStringSync();
  //print("\nstring created from json file read\n ${jsonFileString}\n");
  //print("\nread string length ${jsonFileString.length}");

  //pass the read string to JsonDecoder
  final Map<String, dynamic> jsonObjects = jsonDecode(jsonFileString);
  print("\nnumber of json objects found ${jsonObjects.length}\n");
  print("\ndecoded json objects ${jsonObjects.keys}\n");
  print("\maps for json objects ${jsonObjects.values}\n");
  print(
      "\nall objects and their maps after decoding json string\n ${jsonObjects}\n");
  print("\json map entries ${jsonObjects.entries}\n");
  print("\nfirst json object decoded ${jsonObjects.keys.first}\n");
  print("\map for first json object ${jsonObjects.values.first}\n");

  //DataModel - key = "herd1", value = "ARRAY of Objects"
  String objectToExtract = "jsonObject3";
  print("\nextracting json object: ${objectToExtract}\n");
  var objectValue = jsonObjects[objectToExtract];
  print("\nobject map pulled from jsonObjects ${objectValue}\n");
  if (objectValue != null) {
    extractedJsonObject = <JSONOBJECTMODEL0>[];
    //Each item in value is of type::: _InternalLinkedHashMap<String, dynamic>
    objectValue.forEach((item) {
      extractedJsonObject?.add(new JSONOBJECTMODEL0(
        objectKeyForId0: item["objectKeyForId"],
        objectKeyForText0: item["objectKeyForText"],
      ));
      //print("JsonObject Info: ${item}");
    });
  }
  //extractedJsonObject?.forEach((element) => print(element));
  //print("\nextractedJsonObject ${extractedJsonObject}");
  print("\nextracted ${extractedJsonObject?.length} objects");
  //print("\nMap 0 JsonObject 0 ${extractedJsonObject?[0]}\n");
  //print("\nMap 1 JsonObject 1 ${extractedJsonObject?[1]}\n");
  extractedJsonObject?.forEach((item) {
    print("JsonObject Info: ${item}");
  });
}
