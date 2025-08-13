// BLoC
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

// BLoC parts
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterStarted>(_onStarted);
    on<CounterIncrementPressed>(_onIncrementPressed);
    on<CounterDecrementPressed>(_onDecrementPressed);
  }

  late int _counter;
  int get counter => _counter;

  void _onStarted(CounterStarted event, Emitter<CounterState> emit) {
    _counter = event.counter ?? 0;
    emit(CounterLoadSuccess(counter: _counter));
  }

  void _onIncrementPressed(
    CounterIncrementPressed event,
    Emitter<CounterState> emit,
  ) {
    _counter++;
    emit(CounterLoadSuccess(counter: _counter));
  }

  void _onDecrementPressed(
    CounterDecrementPressed event,
    Emitter<CounterState> emit,
  ) {
    _counter--;
    emit(CounterLoadSuccess(counter: _counter));
  }
}
