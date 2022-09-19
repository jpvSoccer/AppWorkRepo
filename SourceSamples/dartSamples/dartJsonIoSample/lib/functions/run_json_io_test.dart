import 'dart:io';

import '../classes/my_json_file_load_and_parse.dart';
import '../classes/my_json_modify_or_report_data.dart';
import '../classes/my_json_file_initialization.dart';
import '../constants/constants.dart';

final jsonFile = File(JSONFILE);
List fileData = [];
List dataList = [];

RunJsonIoTest(jsonFile) {
  // create instances for objects
  var my_json_file_initialization = new MyJsonFileInitialization(jsonFile);
  var my_json_file_load_and_parse = new MyJsonFileLoadAndParse(jsonFile);
  var my_json_modify_or_report_data = new MyJsonModifyOrReportData();

  // detect existing file or make a new one
  my_json_file_initialization.myInitializeJsonFile();
  // read data file into a list
  List jsonDataList = my_json_file_load_and_parse.myReadJsonFromFile();

/*
  // remove coment lines; lines containing #)
  // this is no onger needed with json format
  List jsonDataList = my_json_file_load_and_parse.myExtractJsonData(jsonData);

  my_json_modify_or_report_data.myReportAllAnimals(jsonDataList);
  my_json_modify_or_report_data.myReportAnimal(jsonDataList);
  my_json_modify_or_report_data.myAddEntry(jsonDataList);
  my_json_modify_or_report_data.myRemoveEntry(jsonDataList);
  my_json_modify_or_report_data.myChangeEntry(jsonDataList);
  */
  print(jsonDataList);
}
