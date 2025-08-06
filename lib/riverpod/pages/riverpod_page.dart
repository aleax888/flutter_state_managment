// flutter
import 'package:flutter/material.dart';

// riverpod
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_managment/riverpod/counter_provider/counter_provider.dart';

// components
import 'package:flutter_state_managment/components/sample_page.dart';
import 'package:flutter_state_managment/riverpod/pages/riverpod_twin_page.dart';

class RiverpodPage extends ConsumerWidget {
  final String title = "Riverpod";
  const RiverpodPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SamplePage(
      title: title,
      counter: Text(ref.watch(counterProvider).toString()),
      goToTwinPage: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RiverpodTwinPage(title: title)),
      ),
      increment: ref.read(counterProvider.notifier).increment,
      decrement: ref.read(counterProvider.notifier).decrement,
    );
  }
}
