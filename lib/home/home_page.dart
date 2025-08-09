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
          children: [
            // BLoC
            CustomButton(
              label: 'BLoC',
              color: Colors.blue,
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

            // Cubit
            CustomButton(
              label: 'Cubit',
              color: Colors.blue,
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

            // Get X Reactive State
            CustomButton(
              label: 'GetX Reactive State',
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GetXReactiveStatePage(),
                  ),
                );
              },
            ),

            // Get X Simple State
            CustomButton(
              label: 'GetX Simple State',
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GetXSimpleStatePage(),
                  ),
                );
              },
            ),

            // Get X Mixin State
            CustomButton(
              label: 'GetX Mixin State',
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GetXMixinStatePage()),
                );
              },
            ),

            // Flutter Set State
            CustomButton(
              label: 'Fluttter Set State',
              color: Colors.blue,
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

            // Flutter Inherited Widget
            CustomButton(
              label: 'Fluttter Inherited Widget',
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FlutterInheritedWidgetPage(),
                  ),
                );
              },
            ),

            // Provider
            CustomButton(
              label: 'Provider',
              color: Colors.blue,
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

            // Riverpod
            CustomButton(
              label: 'Riverpod',
              color: Colors.blue,
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
