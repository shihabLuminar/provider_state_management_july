import 'package:flutter/material.dart';

class CounterScreenController with ChangeNotifier {
  int count = 0;

  void onIncrement() {
    count++;
    notifyListeners();
  }

  void onDecrement() {
    count--;
    notifyListeners();
  }
}
