import 'package:flutter/material.dart';
import 'package:tntf/rx_dart/first_page.dart';

void main() {
  runApp(const MyApp());
  // doThis();
  // runApp(const MyApp());
}

void insteadOfThis() {
  const array = <dynamic>[1, 3, "Pushkar", 2.5];
  final integers = array.whereType<int>();
  print(integers);
}

void doThis() {
  const array = <dynamic>[1, 5, 3, "Pushkar", 2.5];
  final integers = array.whereType<int>();
  print(integers);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),
    );
  }
}
