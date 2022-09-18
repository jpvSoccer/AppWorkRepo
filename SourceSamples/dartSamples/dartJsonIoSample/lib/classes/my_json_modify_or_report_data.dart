class MyJsonModifyOrReportData {
  List dataList = [];
  MyJsonModifyOrReportData();

  myReportAnimal(List dataList) {
    print("\nANIMALID   NAME   DOB     GENDER   WEIGH");
    print("First: $dataList.first");
    print("\n\n");
  }

  myReportAllAnimals(List dataList) {
    print("\nHere are the animals currently on record:");
    print("ANIMALID   NAME   DOB     GENDER   WEIGHT");
    dataList.forEach(print);
    print("\n\n");
  }

  myAddEntry(List dataList) {
    print("TODO: Adding entry: $dataList ");
  }

  myRemoveEntry(List dataList) {
    print("TODO: Removing entry: $dataList ");
  }

  myChangeEntry(List dataList) {
    print("TODO: Changing entry: $dataList ");
  }
}
