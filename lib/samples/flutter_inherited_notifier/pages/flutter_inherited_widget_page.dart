// flutter
import 'package:flutter/material.dart';

// inherited notifier
import 'package:flutter_state_managment/samples/flutter_inherited_notifier/inherited_notifier/counter_inherited_notifier.dart';

// components
import 'package:flutter_state_managment/shared/widgets/sample_page.dart';
import 'package:flutter_state_managment/shared/widgets/counter_text.dart';

// pages
import 'package:flutter_state_managment/samples/flutter_inherited_notifier/pages/flutter_inherited_widget_twin_page.dart';

class FlutterInheritedWidgetPage extends StatelessWidget {
  final String title = "Flutter Inherited Notifier";
  const FlutterInheritedWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SamplePage(
      title: title,
      counter: CounterText(counter: CounterInheritedNotifier.of(context).counter),
      goToTwinPage: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FlutterInheritedWidgetTwinPage(title: title),
          ),
        );
      },
      increment: CounterInheritedNotifier.of(context).increment,
      decrement: CounterInheritedNotifier.of(context).decrement,
    );
  }
}
