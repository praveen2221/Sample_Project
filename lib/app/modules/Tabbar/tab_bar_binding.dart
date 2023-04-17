import 'package:get/get.dart';
import 'package:sample_project/app/modules/items/items_controller.dart';

import '../viewDetails/new_leads_page_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewLeadsPageController>(() => NewLeadsPageController());
     Get.lazyPut<ItemsController>(() => ItemsController());
  }
}