// flutter
import 'package:flutter/material.dart';

// components
import 'package:flutter_state_managment/components/sample_page.dart';
import 'package:flutter_state_managment/flutter_set_state/flutter_set_state_twin_page.dart';

class FlutterSetStatePage extends StatefulWidget {
  const FlutterSetStatePage({super.key});

  @override
  State<FlutterSetStatePage> createState() => _FlutterSetStatePageState();
}

class _FlutterSetStatePageState extends State<FlutterSetStatePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return SamplePage(
      title: "Flutter Set State",
      counter: Text(_counter.toString()),
      goToTwinPage: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FlutterSetStateTwinPage(counter: _counter),
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
