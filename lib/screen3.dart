import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management4/controllers/counter_controller.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 3'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(builder: (value) {
              return Text(
                value.counter.toString(),
                style: const TextStyle(fontSize: 30.0),
              );
            }),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: const Text('Back to Screen 1'),
            )
          ],
        ),
      ),
    );
  }
}
