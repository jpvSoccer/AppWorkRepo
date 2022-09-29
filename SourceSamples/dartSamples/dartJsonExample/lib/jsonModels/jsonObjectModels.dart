// json model for object type 1
// returns a map of the json object each time the class is instantiated
class JSONOBJECTMODEL1 {
  int? mapKey1_1;
  String? mapKey2_1;
  JSONOBJECTMODEL1({this.mapKey1_1, this.mapKey2_1});
  @override
  String toString() {
    return "{mapKey1_1:$mapKey1_1,mapKey2_1:$mapKey2_1}";
  }
}

// json model for object type 1
// returns a map of the json object each time the class is instantiated
class JSONOBJECTMODEL2 {
  int? mapKey1_2;
  String? mapKey2_2;
  String? mapKey3_2;
  JSONOBJECTMODEL2({this.mapKey1_2, this.mapKey2_2, this.mapKey3_2});
  @override
  String toString() {
    return "{mapKey1_2:$mapKey1_2,mapKey2_2:$mapKey2_2,mapKey3_2:$mapKey3_2}";
  }
}

// json model for object type 1
// returns a map of the json object each time the class is instantiated
class JSONOBJECTMODEL3 {
  int? mapKey1_3;
  String? mapKey2_3;
  String? mapKey3_3;
  String? mapKey4_3;
  JSONOBJECTMODEL3(
      {this.mapKey1_3, this.mapKey2_3, this.mapKey3_3, this.mapKey4_3});
  @override
  String toString() {
    return "{mapKey1_3:$mapKey1_3,mapKey2_3:$mapKey2_3,mapKey3_2:$mapKey3_3,mapKey4_3:$mapKey4_3}";
  }
}
