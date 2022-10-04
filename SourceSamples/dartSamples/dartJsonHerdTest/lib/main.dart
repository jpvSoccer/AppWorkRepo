import 'dart:io';
import 'dart:convert';

const String HERDJSONFILE = "herd_1herd.json";
const int SUPPORTEDNUMBEROFHERDS = 3;

void main() {
  // read json herd file into a string
  String? herdFileString = File(HERDJSONFILE).readAsStringSync();
  //print("herd json file pre-decode:\n $herdFileString");

// decode herd string into herd names and animal maps
  // keys go into herdNamesList
  // maps go into extractedMapList0,1,2
  dynamic decodedHerdFileData = jsonDecode(herdFileString);

  List herdNamesList = [];
  int herdCount = 0;
  List<dynamic> herd1MapList;
  List<dynamic> herd2MapList;
  List<dynamic> herd3MapList;

  decodedHerdFileData.keys.forEach((item) {
    ++herdCount;
    //print("adding $item to top level keys list");
    herdNamesList.add(item);
    int animalCount = 0;
    if (herdCount == 1) {
      ++animalCount;
      herd1MapList = decodedHerdFileData[item];
      herd1MapList.forEach((item) {
        //print(item);
        print(item["id"]);
        print(item["name"]);
        print(item["dob"]);
        print(item["weight"]);
        print(item["vaccines"]);
        print(item["notes"]);
      });
      //print("number of maps for $item is ${herd1MapList.length}");
    }
    if (herdCount == 2) {
      herd2MapList = decodedHerdFileData[item];
      //print("number of maps  for $item is ${herd2MapList.length}");
    }
    if (herdCount == 3) {
      herd3MapList = decodedHerdFileData[item];
      //print("number of maps  for $item is ${herd3MapList.length}");
    }
    if (herdCount > SUPPORTEDNUMBEROFHERDS) {
      print("Error: top level object key count out of range!");
      print("Contact developer to add more capacity to APP");
    }
  });
  print("Found a total of $herdCount herd/s");
  herdNamesList.forEach((item) {
    print("Herd name found $item");
  });
  exit(0);

//  List<ANIMAL>? extractedAnimal;
//  //read file contents
//  var herdFileString = File(HERDJSONFILE).readAsStringSync();
//  //print("\njson string from file read ${herdFileString}\n");
//  //pass the read string to JsonDecoder
//  final Map<String, dynamic> jsonmap = jsonDecode(herdFileString);
//  //print("\nall maps after decoding herd file string ${jsonmap}\n");
//
//  //print("\nread string length ${jsonString.length}");
//  //print("\nread string ${jsonString}");
//
//  //print("\nmap length ${jsonmap.length}\n");
//  //print("\map entries ${jsonmap.entries}\n");
//  print("\nherd map keys ${jsonmap.keys}\n");
//  //print("\nherd map keys first ${jsonmap.keys.first}\n");
//  //print("\herd nmap values ${jsonmap.values}\n");
//  //print("\herd nmap values first ${jsonmap.values.first}\n");
//
//  //DataModel - key = "herd1", value = "ARRAY of Objects"
//  String herdToExtract = "jsonObject0";
//  print("\nextracting herd: ${herdToExtract}\n");
//  var herdValues = jsonmap[herdToExtract];
//  print("\nherd maps pulled from jsonmap ${herdValues}\n");
//  if (herdValues != null) {
//    extractedAnimal = <ANIMAL>[];
//    //Each item in value is of type::: _InternalLinkedHashMap<String, dynamic>
//    herdValues.forEach((item) {
//      extractedAnimal?.add(new ANIMAL(
//        id: item["id"],
//        name: item["name"],
//        dob: item["dob"],
//        weight: item["weight"],
//        vaccines: item["vaccines"],
//        notes: item["notes"],
//      ));
//      //print("Animal Info: ${item}");
//    });
//  }
//  //extractedAnimal?.forEach((element) => print(element));
//  //print("\nextractedAnimal ${extractedAnimal}");
//  print("\nextracted ${extractedAnimal?.length} animals");
//  //print("\nMap 0 Animal 0 ${extractedAnimal?[0]}\n");
//  //print("\nMap 1 Animal 1 ${extractedAnimal?[1]}\n");
//  extractedAnimal?.forEach((item) {
//    print("Animal Info: ${item}");
//  });
}
