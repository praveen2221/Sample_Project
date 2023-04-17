import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/app/modules/new/newpage_view.dart';



class TabBarHome extends GetView<GetxController> {
  const TabBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        
        appBar: AppBar(
          leading: Icon(Icons.line_axis_rounded,color: Colors.black87),
          title: const Text("Leads",style: TextStyle(color: Colors.black87),),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: const [
           Icon(Icons.notification_add_rounded,color: Colors.black87,),
           SizedBox(width: 10),
            Icon(Icons.search,color: Colors.black87,), 
            SizedBox(width: 10),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 60,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(
                     color: Colors.black26,
        
                  ))
            ),
              child: TabBarTree(),
            ),
            TabBarBody()
          ],
        ),
      ),
    );
  }
}

TabBar TabBarTree() {
    return const TabBar(
      indicator: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      indicatorWeight: 2,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorPadding: EdgeInsets.fromLTRB(0, 40, 0, 5),
      isScrollable: true,
      tabs: [
        Tab(
          text: 'All',
        ),
        Tab(
          text: 'New',
        ),
        Tab(
          text: 'Follow Up',
        ),
        Tab(
          text: 'Booked',
        ),
        Tab(
          text: 'Premium',
        ),
        Tab(
          text: 'Categories',
        ),
      ],
    );
  }

  Expanded TabBarBody() {
    return  Expanded(
      child: TabBarView(
        children: [
          Icon(Icons.workspace_premium),
          NewPage(),
          Icon(Icons.workspace_premium),
          Icon(Icons.workspace_premium),
          Icon(Icons.workspace_premium),
          Icon(Icons.category),
        ],
      ),
    );
  }

