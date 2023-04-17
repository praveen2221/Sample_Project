import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/app/modules/Tabbar/tab_bar.dart';

import '../home_page/homepage_view.dart';
import 'dashboard_controller.dart';

class Dashboard extends GetView<DashboardController> {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
      const TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  Dashboard({super.key});

  buildBottomNavigationMenu(context, DashboardController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: DashboardController.changeTabIndex,
            currentIndex: DashboardController.tabIndex.value,
            backgroundColor:Colors.white,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.orange,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.home,
                    size: 20.0,
                  ),
                ),
                label: 'Home',
               
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.filter_alt,
                    size: 20.0,
                  ),
                ),
                label: 'Leads',
               
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.date_range_outlined,
                    size: 20.0,
                  ),
                ),
                label: 'Tasks',
                
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.track_changes_sharp,
                    size: 20.0,
                  ),
                ),
                label: 'Reports',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(bottom: 7),
                  child: const Icon(
                    Icons.more_horiz,
                    size: 20.0,
                  ),
                ),
                label: 'More',
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController =
        Get.put(DashboardController(), permanent: false);
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar:
          buildBottomNavigationMenu(context, dashboardController),
      body: Obx(() => IndexedStack(
            index: dashboardController.tabIndex.value,
            children: const [ 
              Homepage(),
              TabBarHome(),
              Homepage(),
              Homepage(),
              Homepage(),
            ],
          )),
    ));
  }
}