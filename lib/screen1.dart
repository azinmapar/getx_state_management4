import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management4/controllers/counter_controller.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CounterController>(
                id: '1',
                builder: (value) {
                  return Text(
                    value.counter.toString(),
                    style: const TextStyle(fontSize: 30.0),
                  );
                }),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/screen2');
              },
              child: const Text('Screen 2'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterController>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

/**
 * * This is one way of using our controller
 * $ Get.find<CounterController>().dataOrFunction
 */
