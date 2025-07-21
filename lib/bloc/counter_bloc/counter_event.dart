part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

final class CounterStarted extends CounterEvent {}

final class CounterIncrementPressed extends CounterEvent {}

final class CounterDecrementPressed extends CounterEvent {}
