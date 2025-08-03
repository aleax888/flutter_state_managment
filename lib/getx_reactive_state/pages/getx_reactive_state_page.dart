// flutter
import 'package:flutter/material.dart';

// GetX
import 'package:get/get.dart';
import 'package:flutter_state_managment/getx_reactive_state/counter_controller/counter_controller.dart';

// components
import 'package:flutter_state_managment/components/sample_page.dart';
import 'package:flutter_state_managment/getx_reactive_state/pages/getx_reactive_state_twin_page.dart';

class GetXReactiveStatePage extends StatefulWidget {
  const GetXReactiveStatePage({super.key});

  @override
  State<GetXReactiveStatePage> createState() => _GetXReactiveStatePageState();
}

class _GetXReactiveStatePageState extends State<GetXReactiveStatePage> {
  final String _title = "GetX Reactive State";
  late final CounterController _counterController;

  @override
  void initState() {
    super.initState();
    _counterController = Get.put<CounterController>(CounterController());
  }

  @override
  void dispose() {
    Get.delete<CounterController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SamplePage(
      title: _title,
      counter: GetX<CounterController>(
        builder: (controller) => Text('${controller.counter}'),
      ),
      goToTwinPage: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GetXReactiveStateTwinPage(title: _title),
        ),
      ),
      increment: _counterController.increment,
      decrement: _counterController.decrement,
    );
  }
}
