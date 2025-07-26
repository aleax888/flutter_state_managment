part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterLoadInProgress extends CounterState {}

final class CounterLoadSuccess extends CounterState {
  final int counter;
  CounterLoadSuccess({required this.counter});
}

final class CounterLoadFailure extends CounterState {}
