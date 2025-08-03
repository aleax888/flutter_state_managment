// flutter
import 'package:flutter/material.dart';

// components
import 'package:flutter_state_managment/components/twin_page.dart';

// GetX
import 'package:get/get.dart';
import 'package:flutter_state_managment/getx_reactive_state/counter_controller/counter_controller.dart';

class GetXReactiveStateTwinPage extends StatelessWidget {
  final String title;
  final CounterController _counterController = Get.find<CounterController>();
  GetXReactiveStateTwinPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TwinPage(
      title: title,
      counter: GetX<CounterController>(
        builder: (controller) => Text('${controller.counter}'),
      ),
      increment: _counterController.increment,
      decrement: _counterController.decrement,
    );
  }
}
