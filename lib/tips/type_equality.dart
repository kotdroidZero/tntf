import 'package:flutter/material.dart';

void main(List<String> args) {
  doThis();
}

void insteadOfThis() {
  const array = <dynamic>[1, 3, "Pushkar", 2.5];
  final integers = array.where((element) => element is int);
  print(integers);
}

void doThis() {
  const array = <dynamic>[1, 5, 3, "Pushkar", 2.5];
  final integers = array.whereType<int>();
  print(integers);
}
