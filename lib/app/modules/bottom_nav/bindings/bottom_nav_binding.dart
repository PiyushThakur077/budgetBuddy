import 'package:budget_buddy/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../controllers/bottom_nav_controller.dart';

class BottomNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavController>(
      () => BottomNavController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
