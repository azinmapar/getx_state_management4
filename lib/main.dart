import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management4/bindings/my_binding.dart';
import 'package:getx_state_management4/screen1.dart';
import 'package:getx_state_management4/screen2.dart';
import 'package:getx_state_management4/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: MyBinding(),
      getPages: [
        GetPage(name: '/screen1', page: () => const Screen1()),
        GetPage(name: '/screen2', page: () => const Screen2()),
        GetPage(name: '/screen3', page: () => const Screen3()),
      ],
      initialRoute: '/screen1',
    );
  }
}

/**
 * ! State Management OverView
 * * Step 1 : Binding and initialBinding
 * * Step 2 : Controllers
 * * Tip : GetBuilder is better than obx and obv because you can give it ID
 */
