import 'dart:io';
import 'dart:convert';

const String FILEPATH = "herd.json";
const JsonDecoder decoder = JsonDecoder();

class GOAT {
  int? id;
  String? name;
  String? dob;
  String? weight;
  String? notes;

  //{ } - implies named arguments
  GOAT({this.id, this.name, this.dob, this.weight, this.notes});

  @override
  String toString() {
    return "{id:$id,name:$name,dob:$dob,this:$weight,this:$notes}";
  }
}

void main() {
  List<GOAT>? extractedMap;
  //synchronously read file contents
  var jsonString = File(FILEPATH).readAsStringSync();
  //pass the read string to JsonDecoder class to convert into corresponding Objects
  final Map<String, dynamic> jsonmap = jsonDecode(jsonString);
  //final Map<String, dynamic> jsonmap = decoder.convert(jsonString);

  print("\nread string length ${jsonString.length}");
  print("\nread string ${jsonString}");

  print("\nmap ${jsonmap}");
  print("\nmap length ${jsonmap.length}");
  print("\map nentries ${jsonmap.entries}");
  print("\nmap keys ${jsonmap.keys}");
  print("\nmap keys first ${jsonmap.keys.first}");
  print("\nmap values ${jsonmap.values}");
  print("\nmap values first ${jsonmap.values.first}");

  //DataModel - key = "herd1", value = "ARRAY of Objects"
  var value = jsonmap["herd1"];
  print("\nvalue json map\n ${value}");
  if (value != null) {
    extractedMap = <GOAT>[];
    //Each item in value is of type::: _InternalLinkedHashMap<String, dynamic>
    value.forEach((item) {
      extractedMap?.add(new GOAT(
        id: item["id"],
        name: item["name"],
        dob: item["dob"],
        weight: item["weight"],
        notes: item["notes"],
      ));
      print("\nitem ${item}");
    });
  }
  extractedMap?.forEach((element) => print(element));
  print("\nextractedMap ${extractedMap}");
  print("\nextractedMap length ${extractedMap?.length}");
  print("\nMap 0 ${extractedMap?[0]}");
  print("\nMap 1 ${extractedMap?[1]}");
}
