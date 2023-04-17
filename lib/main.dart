import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
       debugShowCheckedModeBanner: false,
      title: "Sample Project",
      locale: const Locale('en', 'US'),
      theme: ThemeData(
          unselectedWidgetColor: Colors.white,
          fontFamily: 'Fruitger',
          primaryColor: Colors.orange),
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    )
  );
}