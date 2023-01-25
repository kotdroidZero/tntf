import 'package:flutter/material.dart';

class MyAnimatedDefaultTextStyle extends StatefulWidget {
  const MyAnimatedDefaultTextStyle({super.key});

  @override
  State<MyAnimatedDefaultTextStyle> createState() =>
      _MyAnimatedDefaultTextStyleState();
}

class _MyAnimatedDefaultTextStyleState
    extends State<MyAnimatedDefaultTextStyle> {
  bool _first = true;
  double _fontSize = 40;
  Color _color = Colors.cyan;
  double _height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          // height: 210,
          child: AnimatedDefaultTextStyle(
            curve: Curves.easeIn,
            duration: const Duration(milliseconds: 350),
            style: TextStyle(
              fontSize: _fontSize,
              color: _color,
              fontWeight: FontWeight.bold,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/star.jpg',
                  height: _height,
                  width: 280,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text("Flutter Dev's"),
                SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        textStyle: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      setState(() {
                        _fontSize = _first ? 60 : 40;
                        _color = _first ? Colors.blue : Colors.brown;
                        _first = !_first;
                        _height = _first ? 100 : 130;
                      });
                    },
                    child: const Text(
                      "Click Here!!",
                    ),
                  ),
                ),
                const Text(
                  "All Platform in single Codebase",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
