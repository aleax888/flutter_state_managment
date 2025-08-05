// flutter
import 'package:flutter/material.dart';

// GetX
import 'package:get/get.dart';
import 'package:flutter_state_managment/getx_mixin_state/counter_controller/counter_controller.dart';

// components
import 'package:flutter_state_managment/components/sample_page.dart';
import 'package:flutter_state_managment/getx_mixin_state/pages/getx_mixin_state_twin_page.dart';

class GetXMixinStatePage extends StatefulWidget {
  const GetXMixinStatePage({super.key});

  @override
  State<GetXMixinStatePage> createState() => _GetXMixinStatePageState();
}

class _GetXMixinStatePageState extends State<GetXMixinStatePage> {
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
      counter: _counterController.obx(
        (state) => Text(state.toString()),
        onLoading: CircularProgressIndicator(),
        onEmpty: Text('No data found'),
        onError: (error) => Text(error ?? ""),
      ),
      goToTwinPage: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => GetXMixinStateTwinPage(title: _title),
        ),
      ),
      increment: _counterController.increment,
      decrement: _counterController.decrement,
    );
  }
}
