// BLoC
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

// cubit parts
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  late int _counter;
  int get counter => _counter;

  void counterStarted({int? counter}) {
    _counter = counter ?? 0;
    emit(CounterLoadSuccess(counter: _counter));
  }

  void increment() {
    _counter++;
    emit(CounterLoadSuccess(counter: _counter));
  }

  void decrement() {
    _counter--;
    emit(CounterLoadSuccess(counter: _counter));
  }
}
