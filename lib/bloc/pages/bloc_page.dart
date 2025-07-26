// flutter
import 'package:flutter/material.dart';

// BLoC
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_managment/bloc/pages/bloc_twin_page.dart';
import 'package:flutter_state_managment/bloc/counter_bloc/counter_bloc.dart';

// components
import 'package:flutter_state_managment/components/sample_page.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SamplePage(
      title: "BLoC",
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
      goToTwinPage: () {
        final bloc = BlocProvider.of<CounterBloc>(context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                BlocProvider.value(value: bloc, child: BlocTwinPage()),
          ),
        );
      },
      increment: () =>
          BlocProvider.of<CounterBloc>(context).add(CounterIncrementPressed()),
      decrement: () =>
          BlocProvider.of<CounterBloc>(context).add(CounterDecrementPressed()),
    );
  }
}
