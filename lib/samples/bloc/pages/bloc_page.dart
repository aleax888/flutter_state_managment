// flutter
import 'package:flutter/material.dart';

// BLoC
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_managment/samples/bloc/counter_bloc/counter_bloc.dart';

// components
import 'package:flutter_state_managment/shared/widgets/sample_page.dart';
import 'package:flutter_state_managment/shared/widgets/counter_text.dart';

// pages
import 'package:flutter_state_managment/samples/bloc/pages/bloc_twin_page.dart';

class BlocPage extends StatelessWidget {
  final String title = "BLoC";
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SamplePage(
      title: title,
      counter: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if (state is CounterLoadSuccess) {
            return CounterText(counter: state.counter);
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
            builder: (context) => BlocProvider.value(
              value: bloc,
              child: BlocTwinPage(title: title),
            ),
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
