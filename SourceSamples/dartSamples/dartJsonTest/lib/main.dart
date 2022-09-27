import 'dart:io';
import 'dart:convert';

const String FILEPATH = "user.json";
const JsonDecoder decoder = JsonDecoder();

class USER {
  int? id;
  String? user;
  String? password;

  //{ } - implies named arguments
  USER({this.id, this.user, this.password});

  @override
  String toString() {
    return "{id:$id,user:$user,password:$password}";
  }
}

void main() {
  List<USER>? eMP;
  //synchronously read file contents
  var jsonString = File(FILEPATH).readAsStringSync();
  print("\nread string length\n ${jsonString.length}");
  print("\nread string \n ${jsonString}");
  //pass the read string to JsonDecoder class to convert into corresponding Objects
  final Map<String, dynamic> jsonmap = decoder.convert(jsonString);
  print("\nlength\n ${jsonmap.length}");
  print("\nentries\n ${jsonmap.entries}");
  print("\nkeys\n ${jsonmap.keys}");
  print("\nvalues\n ${jsonmap.values}");
  print("\nvalues\n ${jsonmap.values.first}");
  print("\nmap\n ${jsonmap}");

  //DataModel - key = "users", value = "ARRAY of Objects"
  var value = jsonmap["users"];
  if (value != null) {
    eMP = <USER>[];
    //Each item in value is of type::: _InternalLinkedHashMap<String, dynamic>
    value.forEach((item) => eMP?.add(new USER(
        id: item["id"], user: item["user"], password: item["password"])));
  }
  eMP?.forEach((element) => print(element));
}
