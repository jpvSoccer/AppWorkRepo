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
  List<dynamic> herd1MapList;
  List<dynamic> herd2MapList;
  List<dynamic> herd3MapList;

  int herdCount = 0;
  // cycle through each herd
  decodedHerdFileData.keys.forEach((herdName) {
    //print("adding $herdName to top level keys list");
    herdNamesList.add(herdName);
    ++herdCount;
    int animalCount = 0;
    if (herdCount == 1) {
      herd1MapList = decodedHerdFileData[herdName];
      herd1MapList.forEach((herdAnimalMap) {
        ++animalCount;
        print("-------------------------------");
        //print(herdAnimalMap);
        print(herdAnimalMap["id"]);
        print(herdAnimalMap["name"]);
        print(herdAnimalMap["dob"]);
        print(herdAnimalMap["weight"]);
        print(herdAnimalMap["vaccines"]);
        print(herdAnimalMap["notes"]);
      });
      //print("animal count for ${herdNamesList[0]} is $animalCount");
      //print("number of maps in $herdName is ${herd1MapList.length}");
    }
    if (herdCount == 2) {
      herd2MapList = decodedHerdFileData[herdName];
      //print("number of maps  for $herdName is ${herd2MapList.length}");
    }
    if (herdCount == 3) {
      herd3MapList = decodedHerdFileData[herdName];
      //print("number of maps  for $herdName is ${herd3MapList.length}");
    }
    if (herdCount > SUPPORTEDNUMBEROFHERDS) {
      print("Error: top level object key count out of range!");
      print("Contact developer to add more capacity to APP");
    }
  });
  print("Found a total of $herdCount herd/s");
  herdNamesList.forEach((herdName) {
    print("Herd name found $herdName");
  });
}
