// flutter
import 'package:flutter/material.dart';

// riverpod
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_managment/samples/riverpod/counter_provider/counter_provider.dart';

// components
import 'package:flutter_state_managment/shared/widgets/sample_page.dart';
import 'package:flutter_state_managment/shared/widgets/counter_text.dart';

// pages
import 'package:flutter_state_managment/samples/riverpod/pages/riverpod_twin_page.dart';

class RiverpodPage extends ConsumerWidget {
  final String title = "Riverpod";
  const RiverpodPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SamplePage(
      title: title,
      counter: CounterText(counter: ref.watch(counterProvider)),
      goToTwinPage: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RiverpodTwinPage(title: title)),
      ),
      increment: ref.read(counterProvider.notifier).increment,
      decrement: ref.read(counterProvider.notifier).decrement,
    );
  }
}
