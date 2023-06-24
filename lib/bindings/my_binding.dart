import 'package:get/get.dart';
import 'package:getx_state_management4/controllers/counter_controller.dart';

class MyBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
  }
}

/**
 * * Difference between Get.put and Get.lazyPut is that put will be created instantly after running the app but lazyPut will be created whenever it is needed in the code and its ram usage is less
 * * Get.put has another argument named permanent. if it is false then it will get destroyed after a while that it is not needed, if it is true it won't be destroyed and its ram usage is high
 */
