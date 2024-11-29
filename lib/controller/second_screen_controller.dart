import 'package:flutter/material.dart';

class SecondScreenController with ChangeNotifier {
  Color bg = Colors.black;

  void onColorChanged(Color newColor) {
    bg = newColor;
    notifyListeners();
  }
}
