// flutter
import 'package:flutter/material.dart';

// BLoC
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_managment/bloc/counter_bloc/counter_bloc.dart';
import 'package:flutter_state_managment/cubit/counter_cubit.dart';

//components
import 'package:flutter_state_managment/components/custom_page.dart';
import 'package:flutter_state_managment/components/custom_button.dart';

// pages
import 'package:flutter_state_managment/bloc/pages/bloc_page.dart';
import 'package:flutter_state_managment/cubit/pages/cubit_page.dart';

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
            CustomButton(
              label: 'Fluttter Set State',
              color: Colors.blue,
              onPressed: () {},
            ),
            CustomButton(
              label: 'Fluttter Inherited Widget',
              color: Colors.blue,
              onPressed: () {},
            ),
            CustomButton(
              label: 'GetX Get Controller',
              color: Colors.blue,
              onPressed: () {},
            ),
            CustomButton(
              label: 'GetX Rx',
              color: Colors.blue,
              onPressed: () {},
            ),
            CustomButton(
              label: 'Provider',
              color: Colors.blue,
              onPressed: () {},
            ),
            CustomButton(
              label: 'Riverpod',
              color: Colors.blue,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
