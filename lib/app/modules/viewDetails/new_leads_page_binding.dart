import 'package:get/get.dart';
import 'package:sample_project/app/modules/floorInfo/floorinfo_controller.dart';
import 'package:sample_project/app/modules/items/items_controller.dart';


class NewLeadsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ItemsController>(() => ItemsController());
    Get.lazyPut<FloorInfoController>(() => FloorInfoController());
  }
}