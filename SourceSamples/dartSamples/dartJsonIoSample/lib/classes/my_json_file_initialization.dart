import "dart:io";

class MyJsonFileInitialization {
  File jsonFile;
  MyJsonFileInitialization(this.jsonFile);

  myInitializeJsonFile() {
    if (jsonFile.existsSync() == false) {
      print(
          "\nREDO REDOAnimal data file does not exist; creating new data file\n");
      print("Adding commented header to data file\n");
      jsonFile.createSync();
      jsonFile.writeAsStringSync("#Data file usage\n", mode: FileMode.append);
      jsonFile.writeAsStringSync("#first char # is comment line\n",
          mode: FileMode.append);
      jsonFile.writeAsStringSync("#here are the currently supported fields\n",
          mode: FileMode.append);
      jsonFile.writeAsStringSync("#animalId NAME DOB GENDER WEIGHT\n",
          mode: FileMode.append);
    } else {
      print("Existing animal data file found\n");
    }
  }

  printJsonFilePath() {
    print("Animal data file is: $jsonFile");
  }

  removeOldJsonFile() {
    print("Removing data file");
    Process.runSync('rm', ['../data/herd.json']);
  }
}
