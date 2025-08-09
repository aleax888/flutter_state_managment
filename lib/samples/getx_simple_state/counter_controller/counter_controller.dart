// GetX
import 'package:get/get.dart';

class CounterController extends GetxController {
  late int _counter;
  int get counter => _counter;

  void counterStarted() {
    _counter = 0;
    update();
  }

  void increment() {
    _counter++;
    update();
  }

  void decrement() {
    _counter--;
    update();
  }
}
