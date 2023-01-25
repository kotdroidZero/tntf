
import 'dart:math' show Random;
void main(List<String> args) {}



class A {
  String name = '';
  getName() => print(name);
}

abstract class B {
  classMethod();
}

class C implements B, A {
  String name = "Pushkar";

  @override
  classMethod() {
    print("I'm overriden");
  }

  @override
  getName() {
    print('My name is $name');
  }
}

class D extends A implements B {
  @override
  classMethod() {
    print("Yes this is implemented");
  }
}
