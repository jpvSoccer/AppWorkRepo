import 'dart:io';
import 'dart:convert';

const String HERDJSONFILE = "herd.json";

class ANIMAL {
  int? id;
  String? name;
  String? dob;
  String? weight;
  String? vaccines;
  String? notes;

  //{ } - implies named arguments
  ANIMAL(
      {this.id, this.name, this.dob, this.weight, this.vaccines, this.notes});

  @override
  String toString() {
    return "{id:$id,name:$name,dob:$dob,this:$weight,this:$vaccines,this:$notes}";
  }
}

void main() {
  List<ANIMAL>? extractedAnimal;
  //read file contents
  var herdFileString = File(HERDJSONFILE).readAsStringSync();
  //print("\njson string from file read ${herdFileString}\n");
  //pass the read string to JsonDecoder
  final Map<String, dynamic> jsonmap = jsonDecode(herdFileString);
  //print("\nall maps after decoding herd file string ${jsonmap}\n");

  //print("\nread string length ${jsonString.length}");
  //print("\nread string ${jsonString}");

  //print("\nmap length ${jsonmap.length}\n");
  //print("\map entries ${jsonmap.entries}\n");
  print("\nherd map keys ${jsonmap.keys}\n");
  //print("\nherd map keys first ${jsonmap.keys.first}\n");
  //print("\herd nmap values ${jsonmap.values}\n");
  //print("\herd nmap values first ${jsonmap.values.first}\n");

  //DataModel - key = "herd1", value = "ARRAY of Objects"
  String herdToExtract = "jsonObject0";
  print("\nextracting herd: ${herdToExtract}\n");
  var herdValues = jsonmap[herdToExtract];
  print("\nherd maps pulled from jsonmap ${herdValues}\n");
  if (herdValues != null) {
    extractedAnimal = <ANIMAL>[];
    //Each item in value is of type::: _InternalLinkedHashMap<String, dynamic>
    herdValues.forEach((item) {
      extractedAnimal?.add(new ANIMAL(
        id: item["id"],
        name: item["name"],
        dob: item["dob"],
        weight: item["weight"],
        vaccines: item["vaccines"],
        notes: item["notes"],
      ));
      //print("Animal Info: ${item}");
    });
  }
  //extractedAnimal?.forEach((element) => print(element));
  //print("\nextractedAnimal ${extractedAnimal}");
  print("\nextracted ${extractedAnimal?.length} animals");
  //print("\nMap 0 Animal 0 ${extractedAnimal?[0]}\n");
  //print("\nMap 1 Animal 1 ${extractedAnimal?[1]}\n");
  extractedAnimal?.forEach((item) {
    print("Animal Info: ${item}");
  });
}
