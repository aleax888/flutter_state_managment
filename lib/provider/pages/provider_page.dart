// flutter
import 'package:flutter/material.dart';
import 'package:flutter_state_managment/provider/pages/provider_twin_page.dart';

// provider
import 'package:provider/provider.dart';
import 'package:flutter_state_managment/provider/counter_provider/counter_provider.dart';

// components
import 'package:flutter_state_managment/components/sample_page.dart';

class ProviderPage extends StatelessWidget {
  final String title = "Provider Change Notifier";
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SamplePage(
      title: title,
      counter: Text(context.watch<CounterProvider>().counter.toString()),
      goToTwinPage: () {
        final provider = context.read<CounterProvider>();
        return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChangeNotifierProvider.value(
              value: provider,
              child: ProviderTwinPage(title: title),
            ),
          ),
        );
      },
      increment: context.read<CounterProvider>().increment,
      decrement: context.read<CounterProvider>().decrement,
    );
  }
}
