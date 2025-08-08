// flutter
import 'package:flutter/material.dart';

// components
import 'package:flutter_state_managment/shared/widgets/sample_page.dart';
import 'package:flutter_state_managment/shared/widgets/counter_text.dart';

// pages
import 'package:flutter_state_managment/samples/flutter_set_state/flutter_set_state_twin_page.dart';

class FlutterSetStatePage extends StatefulWidget {
  final String title = "Flutter Set State";
  const FlutterSetStatePage({super.key});

  @override
  State<FlutterSetStatePage> createState() => _FlutterSetStatePageState();
}

class _FlutterSetStatePageState extends State<FlutterSetStatePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SamplePage(
      title: widget.title,
      counter: CounterText(counter: _counter),
      goToTwinPage: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FlutterSetStateTwinPage(
              counter: _counter,
              title: widget.title,
              increment: (int c) {
                setState(() {
                  _counter = c;
                });
              },
              decrement: (int c) {
                setState(() {
                  _counter = c;
                });
              },
            ),
          ),
        );
      },
      increment: () => setState(() {
        _counter++;
      }),
      decrement: () => setState(() {
        _counter--;
      }),
    );
  }
}
