// flutter
import 'package:flutter/material.dart';

// GetX
import 'package:get/get.dart';
import 'package:flutter_state_managment/samples/getx_simple_state/counter_controller/counter_controller.dart';

// components
import 'package:flutter_state_managment/shared/widgets/twin_page.dart';
import 'package:flutter_state_managment/shared/widgets/counter_text.dart';

class GetXSimpleStateTwinPage extends StatelessWidget {
  final String title;
  final CounterController _counterController = Get.find<CounterController>();
  GetXSimpleStateTwinPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TwinPage(
      title: title,
      counter: GetBuilder<CounterController>(
        builder: (counterController) =>
            CounterText(counter: counterController.counter),
      ),
      increment: _counterController.increment,
      decrement: _counterController.decrement,
    );
  }
}
