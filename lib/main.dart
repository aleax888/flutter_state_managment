// flutter
import 'package:flutter/material.dart';

// inherited notifier
import 'package:flutter_state_managment/samples/flutter_inherited_notifier/inherited_notifier/counter_notifier.dart';
import 'package:flutter_state_managment/samples/flutter_inherited_notifier/inherited_notifier/counter_inherited_notifier.dart';

// riveerpod
import 'package:flutter_riverpod/flutter_riverpod.dart';

// pages
import 'package:flutter_state_managment/home/home_page.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterInheritedNotifier(
      notifier: CounterNotifier()..counterStarted(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter State Managment',
        home: const HomePage(),
      ),
    );
  }
}
