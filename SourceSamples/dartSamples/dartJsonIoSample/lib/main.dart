import 'dart:io';
import 'functions/run_json_io_test.dart';

final file = File('data/test.txt');
final jsonFile = File('data/herd.json');
List fileData = [];
List dataList = [];

void main() {
  RunJsonIoTest(jsonFile);
}
