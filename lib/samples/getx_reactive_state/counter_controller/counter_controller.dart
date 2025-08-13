// GetX
import 'package:get/get.dart';

class CounterController extends GetxController {
  late RxInt _counter;
  int get counter => _counter.value;

  void counterStarted({int? counter}) {
    _counter = counter?.obs ?? 0.obs;
  }

  void increment() {
    _counter++;
  }

  void decrement() {
    _counter--;
  }
}
