// fluttter
import 'package:flutter/material.dart';

// components
import 'package:flutter_state_managment/shared/widgets/action_button.dart';
import 'package:flutter_state_managment/shared/widgets/custom_page.dart';

class TwinPage extends StatelessWidget {
  final String title;
  final Widget counter;
  final Function() increment;
  final Function() decrement;
  const TwinPage({
    super.key,
    required this.title,
    required this.counter,
    required this.increment,
    required this.decrement,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      title: "$title (Twin)",
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // increment
          ActionButton(action: increment, icon: Icons.add),

          // decrement
          ActionButton(action: decrement, icon: Icons.remove),
        ],
      ),
      children: [
        // counter view
        counter,
      ],
    );
  }
}
