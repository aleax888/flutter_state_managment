// flutter
import 'package:flutter/material.dart';

// components
import 'package:flutter_state_managment/components/custom_page.dart';

class FlutterSetStateTwinPage extends StatelessWidget {
  final int counter;
  const FlutterSetStateTwinPage({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      title: "Flutter Set State (Twin)",
      children: [Text(counter.toString())],
    );
  }
}
