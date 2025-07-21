import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color color;
  final Function() onPressed;

  const CustomButton({
    super.key,
    required this.label,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all<Size>(Size.zero),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.pressed)) {
            return color.withValues(alpha: 0.7); // Pressed color
          }
          return color; // Default color
        }),
        side: WidgetStateProperty.resolveWith<BorderSide?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.pressed)) {
            return null;
          }
          return BorderSide(color: Colors.black, width: 2);
        }),
      ),
      child: Text(label),
    );
  }
}
