import 'package:flutter/material.dart';

import '../custom_curve/circular_curve.dart';

class MyAnimatedContainer extends StatefulWidget {
  const MyAnimatedContainer({super.key});

  @override
  State<MyAnimatedContainer> createState() => _MyAnimatedContainerState();
}

class _MyAnimatedContainerState extends State<MyAnimatedContainer> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            isClicked = !isClicked;
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: CircularCurve(),
          duration: const Duration(seconds: 2),
          height: isClicked ? 400 : 200,
          width: isClicked ? 400 : 200,
          child: Image.asset('assets/images/star.jpg'),
        ),
      ),
    );
  }
}
