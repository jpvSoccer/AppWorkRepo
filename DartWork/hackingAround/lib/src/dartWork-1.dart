// jvogel dart work
import 'dart:io';
import 'constants.dart';
import 'classes.dart';

final file = File('../data/test.txt');
List fileData = [];
List dataList = [];

void main() {
  var my_file_initialization = new MyFileInitialization(file);
  var my_file_parse = new MyFileParse(file);
  var my_modify_or_report_data = new MyModifyOrReportData();

  // detect existing file or make a new one
  my_file_initialization.myInitializeFile();

  // read data file into a list
  fileData = my_file_parse.myReadDataFromFile();

  // remove coment lines; lines containing #)
  dataList = my_file_parse.myExtractData(fileData);

  my_modify_or_report_data.myReportEntry(dataList);
  my_modify_or_report_data.myAddEntry(dataList);
  my_modify_or_report_data.myRemoveEntry(dataList);
  my_modify_or_report_data.myChangeEntry(dataList);
  print(fileData);
  print(dataList);
}
