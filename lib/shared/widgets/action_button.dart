// flutter
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final Function() action;
  final IconData icon;
  const ActionButton({super.key, required this.action, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => action.call(),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(),
        child: Icon(icon),
      ),
    );
  }
}
