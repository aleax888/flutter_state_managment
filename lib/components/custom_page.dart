// fluttter
import 'package:flutter/material.dart';

class CustomPage extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final Widget? floatingActionButton;
  const CustomPage({
    super.key,
    required this.title,
    required this.children,
    this.floatingActionButton,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 25),
        child: Center(child: Column(children: children)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: floatingActionButton,
    );
  }
}
