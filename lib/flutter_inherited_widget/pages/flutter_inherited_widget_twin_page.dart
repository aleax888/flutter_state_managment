// flutter
import 'package:flutter/material.dart';

// coutner inherited widget
import 'package:flutter_state_managment/flutter_inherited_widget/inherited_widget/counter_inherited_widget.dart';
// components
import 'package:flutter_state_managment/components/twin_page.dart';

class FlutterInheritedWidgetTwinPage extends StatelessWidget {
  final String title;
  const FlutterInheritedWidgetTwinPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TwinPage(
      title: title,
      counter: Text(CounterInheritedWidget.of(context).counter.toString()),
      increment: CounterInheritedWidget.of(context).increment,
      decrement: CounterInheritedWidget.of(context).decrement,
    );
  }
}
