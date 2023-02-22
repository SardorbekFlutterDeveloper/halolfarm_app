import 'package:flutter/material.dart';

class ConsColors {
  static final ConsColors _instance = ConsColors._init();
  static ConsColors get instance => _instance;
  ConsColors._init();
   Color green = const Color(0xFF058F1A);
   Color white = const Color(0xFFF2F1F7);
   Color black = Colors.black;
   Color scaffoldColor = Colors.white;
   Color blue = Colors.blue;
   Color pink = const Color.fromARGB(255, 232, 227, 250);
}
