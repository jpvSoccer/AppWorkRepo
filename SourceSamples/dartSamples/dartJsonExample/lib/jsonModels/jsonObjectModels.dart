// json model for object type 1
// returns a map of the json object each time the class is instantiated
class JSONOBJECTMODEL1 {
  int? value1_1;
  String? value2_1;
  //constructor uses named values
  JSONOBJECTMODEL1({this.value1_1, this.value2_1});
  @override
  String toString() {
    return "{mapKey1_1:$value1_1,mapKey2_1:$value2_1}";
  }
}

// json model for object type 1
// returns a map of the json object each time the class is instantiated
class JSONOBJECTMODEL2 {
  int? value1_2;
  String? value2_2;
  String? value3_2;
  JSONOBJECTMODEL2({this.value1_2, this.value2_2, this.value3_2});
  @override
  String toString() {
    return "{mapKey1_2:$value1_2,mapKey2_2:$value2_2,mapKey3_2:$value3_2}";
  }
}

// json model for object type 1
// returns a map of the json object each time the class is instantiated
class JSONOBJECTMODEL3 {
  int? value1_3;
  String? value2_3;
  String? value3_3;
  String? value4_3;
  JSONOBJECTMODEL3(
      {this.value1_3, this.value2_3, this.value3_3, this.value4_3});
  @override
  String toString() {
    return "{mapKey1_3:$value1_3,mapKey2_3:$value2_3,mapKey3_2:$value3_3,mapKey4_3:$value4_3}";
  }
}
