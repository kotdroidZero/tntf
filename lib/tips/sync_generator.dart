import 'dart:math';

import 'package:flutter/foundation.dart';

void main(List<String> args) {
  generateNumber(count: 100).forEach((element) {
    print(element);
  });
}

Iterable<int> generateNumber({int count = 2, int max = 1 << 32}) sync* {
  int i = 0;

  Random random;

  try {
    random = Random.secure();
  } on Exception catch (e) {
    random = Random();
    if (kDebugMode) {
      print(e);
    }
  }

  while (i++ < count) {
    yield random.nextInt(max);
  }
}
