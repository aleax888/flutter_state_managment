import 'package:flutter/material.dart';

class CounterInheritedWidget extends InheritedWidget {
  final int counter;
  final VoidCallback increment;
  final VoidCallback decrement;
  const CounterInheritedWidget({
    super.key,
    required super.child,
    required this.counter,
    required this.increment,
    required this.decrement,
  });

  static CounterInheritedWidget? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterInheritedWidget>();
  }

  static CounterInheritedWidget of(BuildContext context) {
    final CounterInheritedWidget? result = maybeOf(context);
    assert(result != null, 'No Counter found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(CounterInheritedWidget oldWidget) =>
      counter != oldWidget.counter;
}
