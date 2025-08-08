// flutter
import 'package:flutter/material.dart';

// BLoC
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_managment/samples/bloc/counter_bloc/counter_bloc.dart';

// components
import 'package:flutter_state_managment/shared/widgets/twin_page.dart';

class BlocTwinPage extends StatelessWidget {
  final String title;
  const BlocTwinPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TwinPage(
      title: title,
      counter: BlocBuilder<CounterBloc, CounterState>(
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
      increment: () =>
          BlocProvider.of<CounterBloc>(context).add(CounterIncrementPressed()),
      decrement: () =>
          BlocProvider.of<CounterBloc>(context).add(CounterDecrementPressed()),
    );
  }
}
