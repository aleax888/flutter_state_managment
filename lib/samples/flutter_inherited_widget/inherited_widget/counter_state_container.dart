import 'package:flutter/material.dart';
import 'package:flutter_state_managment/samples/flutter_inherited_widget/inherited_widget/counter_inherited_widget.dart';

class CounterStateContainer extends StatefulWidget {
  final Widget child;
  const CounterStateContainer({super.key, required this.child});

  @override
  State<CounterStateContainer> createState() => _CounterStateContainerState();
}

class _CounterStateContainerState extends State<CounterStateContainer> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return CounterInheritedWidget(
      counter: _counter,
      increment: () {
        setState(() {
          _counter++;
        });
      },
      decrement: () {
        setState(() {
          _counter--;
        });
      },
      child: widget.child,
    );
  }
}
