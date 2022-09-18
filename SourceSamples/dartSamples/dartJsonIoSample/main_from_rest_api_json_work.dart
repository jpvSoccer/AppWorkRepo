// ignore_for_file: import_of_legacy_library_into_null_safe

//import 'package:flutter/material.dart';
//import 'classes/movies_app.dart';
import 'dart:convert';

//void main() => runApp(const MoviesApp());
void main() {
  Animal animal0 = Animal('0', 'moma', '3/12/2015', '100', 'happy goat');
  Animal animal1 = Animal('1', 'big boy', '3/12/2019', '150', 'herd leader');
  Animal animal2 = Animal('2', 'empty', 'empty', 'empty', 'empty leader');
  Animal animal3 = Animal('3', 'empty', 'empty', 'empty', 'empty leader');
  Animal animal4 = Animal('4', 'empty', 'empty', 'empty', 'empty leader');
  Animal animal5 = Animal('5', 'empty', 'empty', 'empty', 'empty leader');
  Animal animal6 = Animal('6', 'empty', 'empty', 'empty', 'empty leader');
  Animal animal7 = Animal('7', 'empty', 'empty', 'empty', 'empty leader');
  Animal animal8 = Animal('8', 'empty', 'empty', 'empty', 'empty leader');
  Animal animal9 = Animal('9', 'empty', 'empty', 'empty', 'empty leader');
  Animal animal10 = Animal('10', 'empty', 'empty', 'empty', 'empty leader');
  Animal animal11 = Animal('11', 'empty', 'empty', 'empty', 'empty leader');
  Animal animal12 = Animal('12', 'empty', 'empty', 'empty', 'empty leader');
  Animal animal13 = Animal('13', 'empty', 'empty', 'empty', 'empty leader');
  Animal animal14 = Animal('14', 'empty', 'empty', 'empty', 'empty leader');

  // runApp(const MoviesApp()

  String jsonAnimal;
  extractAnimals() {
    jsonAnimal = jsonEncode(animal0);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal1);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal2);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal3);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal4);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal5);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal6);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal7);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal8);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal9);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal10);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal11);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal12);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal13);
    print(jsonAnimal);
    jsonAnimal = jsonEncode(animal14);
    print(jsonAnimal);
  }

  extractAnimals();
}

class Animal {
  String id;
  String name;
  String dob;
  String weight;
  String note;
  Animal(this.id, this.name, this.dob, this.weight, this.note);
  Map toJson() => {
        'id': id,
        'name': name,
        'dob': dob,
        'weight': weight,
        'note': note,
      };
}
