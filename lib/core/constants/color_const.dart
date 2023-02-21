import 'package:flutter/material.dart';

class ConsColors {
  static final ConsColors _instance = ConsColors._init();
  static ConsColors get instance => _instance;
  ConsColors._init();
  static Color green = const Color(0xFF058F1A);
  static Color white = const Color(0xFFF2F1F7);
  static Color black = Colors.black;
  static Color scaffoldColor = Colors.white;
  static Color blue = Colors.blue;
  static Color pink = const Color.fromARGB(255, 232, 227, 250);
}
