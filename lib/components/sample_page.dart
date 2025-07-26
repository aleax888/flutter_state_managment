// fluttter
import 'package:flutter/material.dart';

// components
import 'package:flutter_state_managment/components/action_button.dart';
import 'package:flutter_state_managment/components/custom_button.dart';
import 'package:flutter_state_managment/components/custom_page.dart';

class SamplePage extends StatelessWidget {
  final String title;
  final Widget counter;
  final Function() goToTwin;
  final Function() increment;
  final Function() decrement;
  const SamplePage({
    super.key,
    required this.title,
    required this.counter,
    required this.goToTwin,
    required this.increment,
    required this.decrement,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      title: title,
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
        // counter
        counter,

        // go to twin page
        CustomButton(
          label: "Go to Twin",
          color: Colors.green,
          onPressed: goToTwin,
        ),
      ],
    );
  }
}
