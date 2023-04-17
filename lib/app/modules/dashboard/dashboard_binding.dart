import 'package:get/get.dart';
import 'package:sample_project/app/modules/home_page/homepage_controller.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomepageController>(() => HomepageController());
  }
}