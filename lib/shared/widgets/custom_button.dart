// flutter
import 'package:flutter/material.dart';

// styles
import 'package:flutter_state_managment/shared/styles/border_style.dart';
import 'package:flutter_state_managment/shared/styles/spacing_style.dart';
import 'package:flutter_state_managment/shared/styles/surface_style.dart';
import 'package:flutter_state_managment/shared/styles/text_style.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color bgColor;
  final Color textColor;
  final Function() onPressed;

  const CustomButton({
    super.key,
    required this.label,
    this.bgColor = SurfaceColorStyle.secondary,
    this.textColor = TextColorStyle.secondary,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            horizontal: SpacingStyle.sm,
            vertical: SpacingStyle.md,
          ),
        ),
        minimumSize: WidgetStateProperty.all<Size>(Size(150, 150)),
        maximumSize: WidgetStateProperty.all<Size>(Size(150, 150)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.pressed)) {
            return bgColor.withValues(alpha: 0.7);
          }
          return bgColor;
        }),
        side: WidgetStateProperty.resolveWith<BorderSide?>((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.pressed)) {
            return BorderSide(
              color: BorderColorStyle.secondary,
              width: BorderWidthStyle.md,
            );
          }

          return null;
        }),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BorderRadiusStyle.md),
          ),
        ),
      ),
      child: Center(
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: textColor,
            fontSize: TextSizeStyle.lg,
            fontWeight: TextWeightStyle.md,
          ),
        ),
      ),
    );
  }
}
