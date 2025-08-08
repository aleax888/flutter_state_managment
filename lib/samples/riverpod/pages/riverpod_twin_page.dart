// flutter
import 'package:flutter/material.dart';

// riverpod
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_managment/samples/riverpod/counter_provider/counter_provider.dart';

// components
import 'package:flutter_state_managment/shared/widgets/twin_page.dart';
import 'package:flutter_state_managment/shared/widgets/counter_text.dart';

class RiverpodTwinPage extends ConsumerWidget {
  final String title;
  const RiverpodTwinPage({super.key, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TwinPage(
      title: title,
      counter: CounterText(counter: ref.watch(counterProvider)),
      increment: ref.read(counterProvider.notifier).increment,
      decrement: ref.read(counterProvider.notifier).decrement,
    );
  }
}
