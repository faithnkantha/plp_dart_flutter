import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
  void breathe();
}

// Base class
class LivingBeing {
  void breathe() {
    print("I'm breathing oxygen.");
  }
}

// Dog class implementing Animal interface and inheriting LivingBeing
class Dog extends LivingBeing implements Animal {
  @override
  void makeSound() {
    print("Woof!");
  }
   String name;
   Dog(this.name);
  void fetch() {
    print("Fetching the ball.");
  }
}

// Cat class implementing Animal interface and inheriting LivingBeing
class Cat extends LivingBeing implements Animal {
   String name;
   Cat (this.name);
  @override
  void makeSound() {
    print("Meow!");
  }
   

  void scratch() {
    print("Scratching furniture.");
  }
}

// Method to read data from a file and initialize instance of Dog or Cat class
Animal readAnimalFromFile(String fileName) {
  File file = File(fileName);
  List<String> lines = file.readAsLinesSync();

  String animalType = lines[0];
  String name = lines[1];

  switch (animalType) {
    case 'dog':
      return Dog("Mike")..name = name;
    case 'cat':
      return Cat("Brian")..name = name;
    default:
      throw Exception("Unknown animal type");
  }
}

// Method demonstrating the use of a loop
void demonstrateLoop() {
  print("Counting from 1 to 5:");
  for (int i = 1; i <= 5; i++) {
    print(i);
  }
}

void main() {
  try {
    Animal myPet = readAnimalFromFile("C:\\Users\\Elitebook\\Documents\\Power learn project\\Flutter\\pet_data.txt");
    myPet.makeSound();
    myPet.breathe();

    if (myPet is Dog) {
      (myPet).fetch();
    } else if (myPet is Cat) {
      (myPet).scratch();
    }
     print(myPet);
    demonstrateLoop();
  } catch (e) {
    print("Error: $e");
  }
}
