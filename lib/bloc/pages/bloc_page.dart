// flutter
import 'package:flutter/material.dart';

// BLoC
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_managment/bloc/pages/bloc_twin_page.dart';
import 'package:flutter_state_managment/bloc/counter_bloc/counter_bloc.dart';

// components
import 'package:flutter_state_managment/components/custom_button.dart';
import 'package:flutter_state_managment/components/custom_page.dart';

class BlocPage extends StatelessWidget {
  const BlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPage(
      title: "BLoC",
      children: [
        // counter
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

        // go to twin page
        CustomButton(
          label: "Go to Twin",
          color: Colors.green,
          onPressed: () {
            final bloc = BlocProvider.of<CounterBloc>(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    BlocProvider.value(value: bloc, child: BlocTwinPage()),
              ),
            );
          },
        ),
      ],

      // coutner increment
      increment: () =>
          BlocProvider.of<CounterBloc>(context).add(CounterIncrementPressed()),

      // coutner decrement
      decrement: () =>
          BlocProvider.of<CounterBloc>(context).add(CounterDecrementPressed()),
    );
  }
}
