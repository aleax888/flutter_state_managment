// flutter
import 'package:flutter/material.dart';

// styles
import 'package:flutter_state_managment/shared/styles/text_style.dart';

class CounterText extends StatelessWidget {
  final int counter;
  const CounterText({super.key, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Text(
      counter.toString(),
      style: TextStyle(
        color: TextColorStyle.secondaryLight,
        fontSize: TextSizeStyle.xxl,
        fontWeight: TextWeightStyle.bl
      ),
    );
  }
}
