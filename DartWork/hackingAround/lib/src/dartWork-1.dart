// jvogel dart work
import 'dart:io';
import 'constants.dart';
import 'classes.dart';

final file = File('../data/test.txt');

void main() {
  var my_file_initialization = new MyFileInitialization(file);
  var my_file_parse = new MyFileParse(file);
  //my_file_initialization.printTestFilePath();
  //my_file_initialization.removeOldTestFile();
  my_file_initialization.myInitializeFile();
  my_file_parse.myExtractDataFromFile();
}
