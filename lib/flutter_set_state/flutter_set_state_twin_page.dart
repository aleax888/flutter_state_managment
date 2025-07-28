// flutter
import 'package:flutter/material.dart';

// components
import 'package:flutter_state_managment/components/twin_page.dart';

class FlutterSetStateTwinPage extends StatefulWidget {
  final String title;
  final int counter;
  final Function(int) increment;
  final Function(int) decrement;
  const FlutterSetStateTwinPage({
    super.key,
    required this.title,
    required this.counter,
    required this.increment,
    required this.decrement,
  });

  @override
  State<FlutterSetStateTwinPage> createState() =>
      _FlutterSetStateTwinPageState();
}

class _FlutterSetStateTwinPageState extends State<FlutterSetStateTwinPage> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.counter;
  }

  @override
  Widget build(BuildContext context) {
    return TwinPage(
      title: widget.title,
      counter: Text(_counter.toString()),
      increment: () => setState(() {
        _counter++;
        widget.increment.call(_counter);
      }),
      decrement: () => setState(() {
        _counter--;
        widget.decrement.call(_counter);
      }),
    );
  }
}
