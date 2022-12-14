import 'package:challange_4/Controllers/My%20Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  MyController controller = MyController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ListView(children: [
        Obx(() {
          return Text(controller.myfact.value.fact.toString());
        }),
        ElevatedButton(
            onPressed: () {
              controller.fetchCat();
            },
            child: Text("New Fact"))
      ]),
    ));
  }
}
