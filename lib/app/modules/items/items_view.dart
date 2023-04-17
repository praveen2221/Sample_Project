import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/app/data/model/customer_details_model.dart';
import 'package:sample_project/app/modules/items/items_controller.dart';

class Step {
  Step({required this.headerText, this.isExpanded = false});
  String headerText;
  bool isExpanded;
}

class Items {
  Items({required this.headerText, this.isExpanded = false});
  String headerText;
  bool isExpanded;
}

class ItemsPages extends StatefulWidget {
  const ItemsPages({super.key});

  @override
  State<ItemsPages> createState() => _ItemsPagesState();
}

class _ItemsPagesState extends State<ItemsPages> {
  final ctrl = Get.put(ItemsController());

  final List<Step> _data = List<Step>.generate(1, (int index) {
    return Step(headerText: 'Living Room');
  });

  final List<Items> _itemsdata = List<Items>.generate(1, (int index) {
    return Items(headerText: 'Bed Room');
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Column(
        children: [
           ExpansionPanelList(
        expansionCallback: (index, isExpanded) {
          setState(() {
            _data[index].isExpanded = !isExpanded;
          });
        },
        children: _data.map<ExpansionPanel>((Step step) {
          return ExpansionPanel(
            // backgroundColor: Colors.grey,
            headerBuilder: (context, isExpanded) {
              return ListTile(
                title: Text(step.headerText,style:TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 15)),
              );
            },
            body: Column(
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 18,),
                     ctrl.customerDetails.value.customerEstimateFlow != null? Text(ctrl.customerDetails.value.customerEstimateFlow![0].items!.inventory![0].displayName.toString(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),):const Text('Loading...'),
                  ],
                ),
                ctrl.customerDetails.value.customerEstimateFlow != null
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: ctrl
                            .customerDetails.value.customerEstimateFlow!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: const Icon(Icons.chair),
                            title:  Text(ctrl.customerDetails.value.customerEstimateFlow![0].items!.inventory![0].category![index].displayName.toString()),
                            subtitle: Row(
                              children: [
                                Text(ctrl
                                    .customerDetails
                                    .value
                                    .customerEstimateFlow![0]
                                    .items!
                                    .inventory![0]
                                    .category![0]
                                    .items![0]
                                    .meta!
                                    .selectType
                                    .toString()),
                                const Text('|'),
                                Text(ctrl
                                    .customerDetails
                                    .value
                                    .customerEstimateFlow![0]
                                    .items!
                                    .inventory![0]
                                    .category![0]
                                    .items![0]
                                    .type![0]
                                    .option
                                    .toString()),
                              ],
                            ),
                            trailing: Text(ctrl.customerDetails.value.customerEstimateFlow![0].items!.inventory![0].category![index].order.toString()),
                          );
                        })
                    : const Center(child: Text('')),
              ],
            ),
            isExpanded: step.isExpanded,
          );
        }).toList(),
      ),
      const Divider(
        thickness: 2,
        color: Colors.grey,
        
      ),
       ExpansionPanelList(
        expansionCallback: (index, isExpanded) {
          setState(() {
            _itemsdata[index].isExpanded = !isExpanded;
          });
        },
        children: _itemsdata.map<ExpansionPanel>((Items items) {
          return ExpansionPanel(
            headerBuilder: (context, isExpanded) {
              return ListTile(
                title: Text(items.headerText,style:TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 15)),
              );
            },
            body: Column(
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 18,),
                     ctrl.customerDetails.value.customerEstimateFlow != null? Text(ctrl.customerDetails.value.customerEstimateFlow![0].items!.inventory![0].displayName.toString(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),):const Text('Loading...'),
                  ],
                ),
                ctrl.customerDetails.value.customerEstimateFlow != null
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: ctrl
                            .customerDetails.value.customerEstimateFlow!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: const Icon(Icons.chair),
                            title:  Text(ctrl.customerDetails.value.customerEstimateFlow![0].items!.inventory![0].category![index].displayName.toString()),
                            subtitle: Row(
                              children: [
                                Text(ctrl
                                    .customerDetails
                                    .value
                                    .customerEstimateFlow![0]
                                    .items!
                                    .inventory![0]
                                    .category![0]
                                    .items![0]
                                    .meta!
                                    .selectType
                                    .toString()),
                                const Text('|'),
                                Text(ctrl
                                    .customerDetails
                                    .value
                                    .customerEstimateFlow![0]
                                    .items!
                                    .inventory![0]
                                    .category![0]
                                    .items![0]
                                    .type![0]
                                    .option
                                    .toString()),
                              ],
                            ),
                            trailing: Text(ctrl.customerDetails.value.customerEstimateFlow![0].items!.inventory![0].category![index].order.toString()),
                          );
                        })
                    : const Center(child: Text('')),
              ],
            ),
            isExpanded: items.isExpanded,
          );
        }).toList(),
      ),
        ],
      )
    );
  }
}
