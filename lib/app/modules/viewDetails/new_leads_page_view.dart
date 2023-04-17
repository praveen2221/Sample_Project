import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/app/modules/floorInfo/floorinfo_view.dart';
import 'package:sample_project/app/modules/items/items_view.dart';



class NewLeadsPage extends GetView<GetxController> {
  const NewLeadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        
        appBar: AppBar(
          leading: IconButton( onPressed: ()=>Get.back(), icon: const Icon(Icons.arrow_back_ios,color: Colors.black87,),),
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
              alignment: Alignment.bottomLeft,
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(
                     color: Colors.black26,
        
                  ))
            ),
              child: tabBarTree(),
            ),
            tabBarBody()
          ],
        ),
      ),
    );
  }
}

Widget tabBarTree() {
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
      tabs: [
        Tab(
          text: 'Items',
        ),
        Tab(
          text: 'Foor info',
        ),
        Tab(
          text: 'Send Quote',
        ),
      ],
    );
  }

  Widget tabBarBody() {
    return  const Expanded(
      child: TabBarView(
        children: [
          ItemsPages(),
          FloorInfo(),
          Icon(Icons.workspace_premium),
        ],
      ),
    );
  }

