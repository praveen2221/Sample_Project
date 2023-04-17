import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/app/modules/Tabbar/tab_bar.dart';
import 'package:sample_project/app/modules/dashboard/dashboard_binding.dart';
import 'package:sample_project/app/modules/dashboard/dashboard_view.dart';
import 'package:sample_project/app/modules/home_page/homepage_view.dart';
import 'package:sample_project/app/modules/viewDetails/new_leads_page_view.dart';

import '../modules/splash/splash_view.dart';
part 'app_routes.dart';



class AppPages{
  AppPages._();

  static const initial = Routes.splash;

 static final routes =[
     GetPage(
      name: _Paths.splash,
      page: () => const SplashView(),
    ),
     GetPage(
        name: _Paths.dashboard,
        page: () => Dashboard(),
        binding: DashboardBinding(),
        children: [
          GetPage(
            name: _Paths.tabbar, 
            page: ()=> const TabBarHome(),
          ),
          GetPage(
            name: _Paths.homepage,
            page: () => const Homepage(),
          ),
        ]),
    GetPage(name: _Paths.newleadspage, page: ()=> const NewLeadsPage()),
  ];
}