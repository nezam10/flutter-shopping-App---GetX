import 'package:flutter_shopping_app_getx/modules/login/controller/login_controller.dart';
import 'package:get/get.dart';

class CategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
