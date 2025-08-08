// flutter
import 'package:flutter/material.dart';

// provider
import 'package:provider/provider.dart';
import 'package:flutter_state_managment/samples/provider/counter_provider/counter_provider.dart';

// components
import 'package:flutter_state_managment/shared/widgets/twin_page.dart';
import 'package:flutter_state_managment/shared/widgets/counter_text.dart';

class ProviderTwinPage extends StatelessWidget {
  final String title;
  const ProviderTwinPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TwinPage(
      title: title,
      counter: CounterText(counter: context.watch<CounterProvider>().counter),
      increment: context.read<CounterProvider>().increment,
      decrement: context.read<CounterProvider>().decrement,
    );
  }
}
