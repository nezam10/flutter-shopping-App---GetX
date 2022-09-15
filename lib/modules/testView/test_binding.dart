import 'package:flutter_shopping_app_getx/modules/testView/test_controller.dart';
import 'package:get/get.dart';

class TestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestController>(() => TestController(), fenix: true);
  }
}
