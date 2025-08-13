// flutter
import 'package:flutter/material.dart';

// BLoC
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_managment/samples/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter_state_managment/samples/cubit/counter_cubit/counter_cubit.dart';

// provider
import 'package:provider/provider.dart';
import 'package:flutter_state_managment/samples/provider/counter_provider/counter_provider.dart';

// components
import 'package:flutter_state_managment/shared/widgets/custom_page.dart';
import 'package:flutter_state_managment/shared/widgets/custom_button.dart';

// styles
import 'package:flutter_state_managment/shared/styles/spacing_style.dart';
import 'package:flutter_state_managment/shared/styles/text_style.dart';

// pages
import 'package:flutter_state_managment/samples/bloc/pages/bloc_page.dart';
import 'package:flutter_state_managment/samples/cubit/pages/cubit_page.dart';
import 'package:flutter_state_managment/samples/flutter_inherited_widget/pages/flutter_inherited_widget_page.dart';
import 'package:flutter_state_managment/samples/flutter_set_state/flutter_set_state_page.dart';
import 'package:flutter_state_managment/samples/getx_mixin_state/pages/getx_mixin_state_page.dart';
import 'package:flutter_state_managment/samples/getx_reactive_state/pages/getx_reactive_state_page.dart';
import 'package:flutter_state_managment/samples/getx_simple_state/pages/getx_simple_state_page.dart';
import 'package:flutter_state_managment/samples/provider/pages/provider_page.dart';
import 'package:flutter_state_managment/samples/riverpod/pages/riverpod_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      title: "Flutter State Managment",
      children: [
        Wrap(
          spacing: SpacingStyle.md,
          runSpacing: SpacingStyle.sm,
          children: [
            // BLoC -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
            CustomButton(
              label: 'BLoC',
              bgColor: Color(0xFF45D1FD),
              textColor: TextColorStyle.primary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (context) => CounterBloc()..add(CounterStarted()),
                      child: BlocPage(),
                    ),
                  ),
                );
              },
            ),

            // Cubit -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
            CustomButton(
              label: 'Cubit',
              bgColor: Color(0xFF3B86C8),
              textColor: TextColorStyle.secondary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (context) => CounterCubit()..counterStarted(),
                      child: CubitPage(),
                    ),
                  ),
                );
              },
            ),

            // Get X Reactive State -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
            CustomButton(
              label: 'GetX Reactive State',
              bgColor: Color(0xFF951DCA),
              textColor: TextColorStyle.secondary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GetXReactiveStatePage(),
                  ),
                );
              },
            ),

            // Get X Simple State -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
            CustomButton(
              label: 'GetX Simple State',
              bgColor: Color(0xFF8118C2),
              textColor: TextColorStyle.secondary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GetXSimpleStatePage(),
                  ),
                );
              },
            ),

            // Get X Mixin State -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
            CustomButton(
              label: 'GetX Mixin State',
              bgColor: Color(0xFF600FB1),
              textColor: TextColorStyle.secondary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GetXMixinStatePage()),
                );
              },
            ),

            // Flutter Set State -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
            CustomButton(
              label: 'Fluttter Set State',
              bgColor: Color(0xFF40C4FF),
              textColor: TextColorStyle.primary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider(
                      create: (context) => CounterCubit()..counterStarted(),
                      child: FlutterSetStatePage(),
                    ),
                  ),
                );
              },
            ),

            // Flutter Inherited Notifier -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
            CustomButton(
              label: 'Fluttter Inherited Notifier',
              bgColor: Color(0xFF29B6F6),
              textColor: TextColorStyle.primary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlutterInheritedWidgetPage(),
                  ),
                );
              },
            ),

            // Provider -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
            CustomButton(
              label: 'Provider',
              bgColor: Color(0xFF065A9D),
              textColor: TextColorStyle.secondary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChangeNotifierProvider(
                      create: (_) => CounterProvider()..counterStarted(),
                      child: ProviderPage(),
                    ),
                  ),
                );
              },
            ),

            // Riverpod -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
            CustomButton(
              label: 'Riverpod',
              bgColor: Color(0xFF41D0FD),
              textColor: TextColorStyle.primary,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RiverpodPage()),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
