// flutter
import 'package:flutter/material.dart';

// provider
import 'package:provider/provider.dart';
import 'package:flutter_state_managment/samples/provider/counter_provider/counter_provider.dart';

// components
import 'package:flutter_state_managment/shared/widgets/sample_page.dart';
import 'package:flutter_state_managment/shared/widgets/counter_text.dart';

// pages
import 'package:flutter_state_managment/samples/provider/pages/provider_twin_page.dart';

class ProviderPage extends StatelessWidget {
  final String title = "Provider Change Notifier";
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SamplePage(
      title: title,
      counter: CounterText(counter: context.watch<CounterProvider>().counter),
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
