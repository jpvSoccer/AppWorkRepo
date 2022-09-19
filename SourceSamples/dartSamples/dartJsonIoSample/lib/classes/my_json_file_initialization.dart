import "dart:io";

class MyJsonFileInitialization {
  File jsonFile;
  MyJsonFileInitialization(this.jsonFile);

  myInitializeJsonFile() {
    if (jsonFile.existsSync() == false) {
      print("\nAnimal json data file does not exist; creating new data file\n");
      print("Adding sample herd data structure file\n");

      jsonFile.createSync();

      writeJsonHeader();
      writeJsonVersion();

// add first herd
      writeJsonHerdHead("herd1");
      writeJsonAnimal("0", "moma", "3/1/2015", "75",
          "mother of all mininubians, flock queen", ",");
      writeJsonAnimal("1", "bigboy", "4/1/2018", "150",
          "sire niko nubian,idoe moma, wether, Top Buck", "");
      writeJsonHerdTail(",");

// add another herd
      writeJsonHerdHead("herd2");
      writeJsonAnimal("0", "sally", "3/1/2020", "50",
          "mother of all mininubians, flock queen", ",");
      writeJsonAnimal("1", "fatboy", "4/1/2022", "30",
          "sire niko nubian,idoe moma, wether, Top Buck", "");
      writeJsonHerdTail("");

      jsonFile.writeAsStringSync("}\n", mode: FileMode.append);
    } else {
      print("Existing animal data file found\n");
    }
  }

  writeJsonHeader() {
    jsonFile.writeAsStringSync("{\n", mode: FileMode.append);
  }

  writeJsonVersion() {
    jsonFile.writeAsStringSync(" \"version\": \"0.0.1\",\n",
        mode: FileMode.append);
  }

  writeJsonHerdHead(herd) {
    jsonFile.writeAsStringSync(" \"${herd}\": [\n", mode: FileMode.append);
  }

  writeJsonHerdTail(comma) {
    jsonFile.writeAsStringSync(" ]${comma}\n", mode: FileMode.append);
  }

  writeJsonAnimal(id, name, dob, weight, notes, comma) {
    jsonFile.writeAsStringSync("  {\n", mode: FileMode.append);
    jsonFile.writeAsStringSync("   \"id\": \"${id}\",\n",
        mode: FileMode.append);
    jsonFile.writeAsStringSync("   \"name\": \"${name}\",\n",
        mode: FileMode.append);
    jsonFile.writeAsStringSync("   \"dob\": \"${dob}\",\n",
        mode: FileMode.append);
    jsonFile.writeAsStringSync("   \"weight\": \"${weight}\",\n",
        mode: FileMode.append);
    jsonFile.writeAsStringSync("   \"notes\": \"${notes}\"\n",
        mode: FileMode.append);
    jsonFile.writeAsStringSync("  }${comma}\n", mode: FileMode.append);
  }

  printJsonFilePath() {
    print("Animal data file is: $jsonFile");
  }

  removeOldJsonFile() {
    print("Removing data file");
    Process.runSync('rm', ['../data/herd.json']);
  }
}
