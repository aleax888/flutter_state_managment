// flutter
import 'package:flutter/material.dart';

// BLoC
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_managment/samples/cubit/counter_cubit/counter_cubit.dart';

// components
import 'package:flutter_state_managment/shared/widgets/sample_page.dart';
import 'package:flutter_state_managment/samples/cubit/pages/cubit_twin_page.dart';

class CubitPage extends StatelessWidget {
  final String title = "Cubit";
  const CubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SamplePage(
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
      goToTwinPage: () {
        final bloc = BlocProvider.of<CounterCubit>(context);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BlocProvider.value(
              value: bloc,
              child: CubitTwinPage(title: title),
            ),
          ),
        );
      },
      increment: () => BlocProvider.of<CounterCubit>(context).increment(),
      decrement: () => BlocProvider.of<CounterCubit>(context).decrement(),
    );
  }
}
