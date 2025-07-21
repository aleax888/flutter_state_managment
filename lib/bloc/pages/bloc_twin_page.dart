// flutter
import 'package:flutter/material.dart';

// BLoC
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_managment/bloc/counter_bloc/counter_bloc.dart';

// components
import 'package:flutter_state_managment/components/custom_page.dart';

class BlocTwinPage extends StatelessWidget {
  const BlocTwinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      title: "BLoC (Twin)",
      children: [
        BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            if (state is CounterLoadSuccess) {
              return Text(state.counter.toString());
            } else if (state is CounterLoadInProgress) {
              return Center(child: CircularProgressIndicator());
            } else {
              return Container();
            }
          },
        ),
      ],
    );
  }
}
