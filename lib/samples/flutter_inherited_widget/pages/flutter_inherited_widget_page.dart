// flutter
import 'package:flutter/material.dart';

// inherited widget
import 'package:flutter_state_managment/samples/flutter_inherited_widget/inherited_widget/counter_inherited_widget.dart';

// components
import 'package:flutter_state_managment/shared/widgets/sample_page.dart';

// pages
import 'package:flutter_state_managment/samples/flutter_inherited_widget/pages/flutter_inherited_widget_twin_page.dart';

class FlutterInheritedWidgetPage extends StatelessWidget {
  final String title = "Flutter Inherited Widget";
  const FlutterInheritedWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SamplePage(
      title: title,
      counter: Text(CounterInheritedWidget.of(context).counter.toString()),
      goToTwinPage: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FlutterInheritedWidgetTwinPage(title: title),
          ),
        );
      },
      increment: CounterInheritedWidget.of(context).increment,
      decrement: CounterInheritedWidget.of(context).decrement,
    );
  }
}
