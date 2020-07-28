import 'dart:math';

import 'package:flutter/material.dart';

class RandomColor {
  static Random random = Random();

  static Color getRandomColor() {
    var r = _getRandomByte();
    var g = _getRandomByte();
    var b = _getRandomByte();
    return Color.fromRGBO(r, g, b, 1.0);
  }

  static int _getRandomByte() {
    return random.nextInt(255);
  }
}