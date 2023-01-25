class Throws<T extends Type> {
  final List<T> exceptions;
  const Throws(this.exceptions);
}

class Animal {
  final int age;
  const Animal(this.age);

  @Throws([UnimplementedError])
  void run() => UnimplementedError();
}

class DogOldException {
  @override
  String toString() => '🐶 is too old.';
}

class DogTiredException {
  @override
  String toString() => '🐶 is too tired.';
}

class Dog extends Animal {
  bool isTired = false;
  Dog(int age, String name) : super(age);

  @override
  void run() {
    if (isTired) {
      throw DogTiredException();
    } else if (age > 20) {
      throw DogOldException();
    } else {
      print("Dog is runnig");
    }
  }
}

void main(List<String> args) {
  var kutta = Dog(5, "Shreu");
  kutta.run();
}
