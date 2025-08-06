// flutter
import 'package:flutter/material.dart';

// inherited widget
import 'package:flutter_state_managment/flutter_inherited_widget/inherited_widget/counter_state_container.dart';

// pages
import 'package:flutter_state_managment/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterStateContainer(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter State Managment',
        home: const HomePage(),
      ),
    );
  }
}
