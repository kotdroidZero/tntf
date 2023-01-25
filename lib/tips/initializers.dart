void main(List<String> args) {
  Animal dog = Animal.dog();
  print(dog.type);
}

enum AnimalType { dog, cat, human }

class Animal {
  String name = '';
  AnimalType type;
  Animal.dog() : type = AnimalType.dog;
}
