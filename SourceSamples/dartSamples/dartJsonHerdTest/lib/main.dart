import 'dart:io';
import 'dart:convert';

const String HERDJSONFILE = "herd.json";

class GOAT {
  int? id;
  String? name;
  String? dob;
  String? weight;
  String? vaccines;
  String? notes;

  //{ } - implies named arguments
  GOAT({this.id, this.name, this.dob, this.weight, this.vaccines, this.notes});

  @override
  String toString() {
    return "{id:$id,name:$name,dob:$dob,this:$weight,this:$vaccines,this:$notes}";
  }
}

void main() {
  List<GOAT>? extractedGoats;
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
  String herdToExtract = "herd2";
  print("\nextracting herd: ${herdToExtract}\n");
  var herdValues = jsonmap[herdToExtract];
  //print("\nherd1 maps pulled from jsonmap ${herdValues}\n");
  if (herdValues != null) {
    extractedGoats = <GOAT>[];
    //Each item in value is of type::: _InternalLinkedHashMap<String, dynamic>
    herdValues.forEach((item) {
      extractedGoats?.add(new GOAT(
        id: item["id"],
        name: item["name"],
        dob: item["dob"],
        weight: item["weight"],
        vaccines: item["vaccines"],
        notes: item["notes"],
      ));
      //print("Goat Info: ${item}");
    });
  }
  //extractedGoats?.forEach((element) => print(element));
  //print("\nextractedGoats ${extractedGoats}");
  print("\nextracted ${extractedGoats?.length} goats");
  //print("\nMap 0 Goat 0 ${extractedGoats?[0]}\n");
  //print("\nMap 1 Goat 1 ${extractedGoats?[1]}\n");
  extractedGoats?.forEach((item) {
    print("Goat Info: ${item}");
  });
}
