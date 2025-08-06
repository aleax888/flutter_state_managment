// flutter
import 'package:flutter/material.dart';

// riverpod
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_managment/riverpod/counter_provider/counter_provider.dart';

// components
import 'package:flutter_state_managment/components/twin_page.dart';

class RiverpodTwinPage extends ConsumerWidget {
  final String title;
  const RiverpodTwinPage({super.key, required this.title});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TwinPage(
      title: title,
      counter: Text(ref.watch(counterProvider).toString()),
      increment: ref.read(counterProvider.notifier).increment,
      decrement: ref.read(counterProvider.notifier).decrement,
    );
  }
}
