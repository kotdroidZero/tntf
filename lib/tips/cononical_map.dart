import 'package:collection/collection.dart';
import 'dart:developer';

var map = {
  "Aman": 30,
  "Prince": 15,
  "prince": 15,
  "prince": 15,
  "Rano": 1,
};

abc() {
  final a = CanonicalizedMap.from(map, (key) => key.toLowerCase());

  print(map);
  print(a);
}

void main(List<String> args) {
  abc();
}
