// flutter
import 'package:flutter/material.dart';

// GetX
import 'package:get/get.dart';
import 'package:flutter_state_managment/samples/getx_mixin_state/counter_controller/counter_controller.dart';

// components
import 'package:flutter_state_managment/shared/widgets/twin_page.dart';
import 'package:flutter_state_managment/shared/widgets/counter_text.dart';

class GetXMixinStateTwinPage extends StatelessWidget {
  final String title;
  final CounterController _counterController = Get.find<CounterController>();
  GetXMixinStateTwinPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return TwinPage(
      title: title,
      counter: _counterController.obx(
        (state) => CounterText(counter: state ?? 0),
        onLoading: CircularProgressIndicator(),
        onEmpty: Text('No data found'),
        onError: (error) => Text(error ?? ""),
      ),
      increment: _counterController.increment,
      decrement: _counterController.decrement,
    );
  }
}
