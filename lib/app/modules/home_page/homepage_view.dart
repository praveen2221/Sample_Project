import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/app/modules/home_page/homepage_controller.dart';

class Homepage extends GetView<HomepageController> {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Icon(Icons.home)),
    );
  }
}