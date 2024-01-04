
import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  int theme = 0;
  List design = [
    Colors.yellowAccent,
    Colors.orange,
    Colors.pink,
    Colors.purple,
  ];
  void change() {
    theme = (theme + 1) % design.length ;
    notifyListeners();
  }
}