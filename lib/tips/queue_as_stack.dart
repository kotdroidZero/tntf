import 'dart:collection';

class Stack<T> extends Iterable {
  final _values = Queue<T>();

  @override
  Iterator get iterator => _values.toList().reversed.iterator;

  T pop() => _values.removeLast();

  Iterable<T> popMany(int n) => Iterable.generate(n, (_) => pop());

  Iterable<T> popAll() => popMany(length);

  void push(T value) => _values.addLast(value);

  void pushMany(List<T> values) => _values.addAll(values);
}

test() {
  var stack = Stack<int>();
  stack.push(78);
  stack.push(45);
  print(stack);
  stack.pushMany([4, 5, 6, 8, 9, 909]);
  print(stack);
  print(stack.length);
  stack.pop();
  print(stack);
  print(stack.length);
  stack.popMany(3);
  print(stack);
  print(stack.length);
  stack.popAll();
  print(stack);
  print(stack.length);
  print("final");
  print(stack);
}

void main(List<String> args) {
  test();
}
