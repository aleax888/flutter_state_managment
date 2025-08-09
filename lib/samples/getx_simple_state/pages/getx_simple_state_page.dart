// flutter
import 'package:flutter/material.dart';

// GetX
import 'package:get/get.dart';
import 'package:flutter_state_managment/samples/getx_simple_state/counter_controller/counter_controller.dart';

// components
import 'package:flutter_state_managment/shared/widgets/sample_page.dart';
import 'package:flutter_state_managment/shared/widgets/counter_text.dart';

// pages
import 'package:flutter_state_managment/samples/getx_simple_state/pages/getx_simple_state_twin_page.dart';

class GetXSimpleStatePage extends StatefulWidget {
  const GetXSimpleStatePage({super.key});

  @override
  State<GetXSimpleStatePage> createState() => _GetXSimpleStatePageState();
}

class _GetXSimpleStatePageState extends State<GetXSimpleStatePage> {
  final String _title = "GetX Simple State";
  late final CounterController _counterController;

  @override
  void initState() {
    super.initState();
    _counterController = Get.put<CounterController>(
      CounterController()..counterStarted(),
    );
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
      counter: GetBuilder<CounterController>(
        builder: (counterController) =>
            CounterText(counter: counterController.counter),
      ),
      goToTwinPage: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GetXSimpleStateTwinPage(title: _title),
        ),
      ),
      increment: _counterController.increment,
      decrement: _counterController.decrement,
    );
  }
}
