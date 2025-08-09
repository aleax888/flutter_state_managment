// flutter
import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  late int _counter;
  int get counter => _counter;

  void counterStarted() {
    _counter = 0;
    notifyListeners();
  }

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
