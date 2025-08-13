// flutter
import 'package:flutter/material.dart';

// counter notifier
import 'package:flutter_state_managment/samples/flutter_inherited_widget/inherited_widget/counter_notifier.dart';

class CounterInheritedNotifier extends InheritedNotifier<CounterNotifier> {
  const CounterInheritedNotifier({
    super.key,
    required super.notifier,
    required super.child,
  });

  static CounterInheritedNotifier? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<CounterInheritedNotifier>();
  }

  static CounterNotifier of(BuildContext context) {
    final CounterInheritedNotifier? result = maybeOf(context);
    assert(
      result != null && result.notifier != null,
      'No Counter found in context',
    );
    return result!.notifier!;
  }
}
