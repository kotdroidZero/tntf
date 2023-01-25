import 'dart:math';

import 'package:flutter/material.dart';

class CircularCurve extends Curve {
  @override
  double transformInternal(double t) {
    return cos(3 * 2 * pi * t) * 0.5 + 0.5;
  }
}
