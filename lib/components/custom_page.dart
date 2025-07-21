// fluttter
import 'package:flutter/material.dart';

// components
import 'package:flutter_state_managment/components/action_button.dart';

class CustomPage extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final Function()? increment;
  final Function()? decrement;
  const CustomPage({
    super.key,
    required this.title,
    required this.children,
    this.increment,
    this.decrement,
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
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (increment != null)
            ActionButton(action: increment!, icon: Icons.add),
          if (decrement != null)
            ActionButton(action: decrement!, icon: Icons.remove),
        ],
      ),
    );
  }
}
