// flutter
import 'package:flutter/material.dart';

// pages
import 'package:flutter_state_managment/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter State Managment',
      home: const HomePage(),
    );
  }
}
