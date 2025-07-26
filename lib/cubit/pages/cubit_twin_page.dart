// flutter
import 'package:flutter/material.dart';

// BLoC
import 'package:flutter_bloc/flutter_bloc.dart';

// components
import 'package:flutter_state_managment/components/custom_page.dart';
import 'package:flutter_state_managment/cubit/counter_cubit.dart';

class CubitTwinPage extends StatelessWidget {
  const CubitTwinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      title: "Cubit (Twin)",
      children: [
        BlocBuilder<CounterCubit, CounterState>(
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
