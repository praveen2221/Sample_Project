import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomepageController extends GetxController {

late BuildContext? context;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> init() async {
    Get.put(HomepageController());
  }
}