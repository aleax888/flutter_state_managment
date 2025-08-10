// flutter
import 'package:flutter/material.dart';

// styles
import 'package:flutter_state_managment/shared/styles/border_style.dart';
import 'package:flutter_state_managment/shared/styles/icon_style.dart';
import 'package:flutter_state_managment/shared/styles/surface_style.dart';

class ActionButton extends StatelessWidget {
  final Function() action;
  final IconData icon;
  const ActionButton({super.key, required this.action, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => action.call(),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: SurfaceColorStyle.tertiaryLight,
          borderRadius: BorderRadius.all(
            Radius.circular((BorderRadiusStyle.lg)),
          ),
        ),
        child: Icon(
          icon,
          color: IconColorStyle.secondary,
          size: IconSizeStyle.lg,
        ),
      ),
    );
  }
}
