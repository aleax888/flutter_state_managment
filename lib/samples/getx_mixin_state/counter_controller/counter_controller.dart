// GetX
import 'package:get/get.dart';

class CounterController extends GetxController with StateMixin<int> {
  late int _counter;
  int get counter => _counter;

  void counterStarted() {
    _counter = 0;
    change(_counter, status: RxStatus.success());
  }

  void increment() {
    _counter++;
    change(_counter, status: RxStatus.success());
  }

  void decrement() {
    _counter--;
    change(_counter, status: RxStatus.success());
  }
}
