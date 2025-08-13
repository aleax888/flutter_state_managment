// flutter
import 'package:flutter/material.dart';

// inherited notifier
import 'package:flutter_state_managment/samples/flutter_inherited_widget/inherited_widget/counter_inherited_widget.dart';

// components
import 'package:flutter_state_managment/shared/widgets/twin_page.dart';
import 'package:flutter_state_managment/shared/widgets/counter_text.dart';

class FlutterInheritedWidgetTwinPage extends StatelessWidget {
  final String title;
  const FlutterInheritedWidgetTwinPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TwinPage(
      title: title,
      counter: CounterText(counter: CounterInheritedNotifier.of(context).counter),
      increment: CounterInheritedNotifier.of(context).increment,
      decrement: CounterInheritedNotifier.of(context).decrement,
    );
  }
}
