import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyTweenBuilder extends StatefulWidget {
  const MyTweenBuilder({super.key});

  @override
  State<MyTweenBuilder> createState() => _MyTweenBuilderState();
}

class _MyTweenBuilderState extends State<MyTweenBuilder> {
  var _sliderValue = 0.0;
  var _newColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/star.png',
            fit: BoxFit.cover,
          ),
          earthRotationWidget(),
          // sunSystem(),
        ],
      ),
    );
  }

  sunSystem() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TweenAnimationBuilder(
          tween: ColorTween(begin: Colors.white, end: _newColor),
          duration: const Duration(seconds: 1),
          builder: ((context, color, child) {
            return ColorFiltered(
              colorFilter: ColorFilter.mode(
                color!,
                BlendMode.modulate,
              ),
              child: Image.asset(
                'assets/images/sun.png',
              ),
            );
          }),
        ),
        Slider.adaptive(
            value: _sliderValue,
            onChanged: (val) {
              setState(() {
                _sliderValue = val;
                _newColor = Color.lerp(Colors.white, Colors.red, _sliderValue)!;
              });
            })
      ],
    );
  }

  earthRotationWidget() {
    return Center(
      child: TweenAnimationBuilder(
        builder: (context, double value, child) {
          return Transform.rotate(
            angle: value,
            child: Image.asset(
              'assets/images/earth.png',
            ),
          );
        },
        duration: const Duration(seconds: 30),
        tween: Tween<double>(begin: 0, end: 2 * math.pi),
      ),
    );
  }
}
