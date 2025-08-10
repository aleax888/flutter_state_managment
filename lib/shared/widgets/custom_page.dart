// flutter
import 'package:flutter/material.dart';

// styles
import 'package:flutter_state_managment/shared/styles/icon_style.dart';
import 'package:flutter_state_managment/shared/styles/spacing_style.dart';
import 'package:flutter_state_managment/shared/styles/surface_style.dart';
import 'package:flutter_state_managment/shared/styles/text_style.dart';

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
      backgroundColor: SurfaceColorStyle.primary,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: IconColorStyle.secondary,
          size: IconSizeStyle.sm,
        ),
        title: Text(
          title,
          style: TextStyle(
            color: TextColorStyle.secondary,
            fontSize: TextSizeStyle.xl,
            fontWeight: TextWeightStyle.sb,
          ),
        ),
        backgroundColor: SurfaceColorStyle.secondary,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: SpacingStyle.md,
                    vertical: SpacingStyle.lg,
                  ),
                  child: Center(
                    child: Column(
                      spacing: SpacingStyle.md,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: children,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: floatingActionButton,
    );
  }
}
