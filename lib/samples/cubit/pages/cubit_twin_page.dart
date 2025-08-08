// flutter
import 'package:flutter/material.dart';

// BLoC
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_managment/samples/cubit/counter_cubit/counter_cubit.dart';

// components
import 'package:flutter_state_managment/shared/widgets/twin_page.dart';

class CubitTwinPage extends StatelessWidget {
  final String title;
  const CubitTwinPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TwinPage(
      title: title,
      counter: BlocBuilder<CounterCubit, CounterState>(
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
      increment: () => BlocProvider.of<CounterCubit>(context).increment(),
      decrement: () => BlocProvider.of<CounterCubit>(context).decrement(),
    );
  }
}
