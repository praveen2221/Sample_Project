import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_project/app/modules/new/newpage_controller.dart';
import 'package:sample_project/app/modules/viewDetails/new_leads_page_view.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  final ctrl = Get.put(NewPageController());
  // ignore: prefer_typing_uninitialized_variables
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        body: ctrl.customerDetails.value.customerEstimateFlow != null
        ?ListView.builder(
            itemCount: ctrl.customerDetails.value.customerEstimateFlow!.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 230,
                              width: 40,
                              child: Text(ctrl.customerDetails.value
                                  .customerEstimateFlow![0].movingOn
                                  .toString()),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: 300,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        ctrl.customerDetails.value
                                            .customerEstimateFlow![0].movingTo
                                            .toString(),
                                        style: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 40),
                                  Column(
                                    children: [
                                      Text(
                                          ctrl
                                              .customerDetails
                                              .value
                                              .customerEstimateFlow![0]
                                              .estimateId
                                              .toString(),
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 300,
                                  child: Text(
                                      ctrl.customerDetails.value
                                          .customerEstimateFlow![0].movingFrom
                                          .toString(),
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.grey)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              width: 300,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(
                                    Icons.arrow_downward_sharp,
                                    color: Colors.orange,
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.home,
                                        color: Colors.orange,
                                      ),
                                      Text(ctrl.customerDetails.value
                                          .customerEstimateFlow![index].propertySize
                                          .toString())
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.message_sharp,
                                        color: Colors.orange,
                                      ),
                                      Text('${ctrl.customerDetails.value
                                          .customerEstimateFlow![0].items!.inventory![0].category![index].items!.length
                                          .toString()}'' items')
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.view_comfy_alt_outlined,
                                        color: Colors.orange,
                                      ),
                                      Text(ctrl.customerDetails.value
                                          .customerEstimateFlow![0].propertySize
                                          .toString())
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.orange,
                                      ),
                                      Text(ctrl.customerDetails.value
                                          .customerEstimateFlow![index].distance
                                          .toString())
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              width: 300,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    ctrl.customerDetails.value
                                        .customerEstimateFlow![0].movingTo
                                        .toString(),
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 7),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 300,
                                  child: Text(
                                      ctrl.customerDetails.value
                                          .customerEstimateFlow![0].movingFrom
                                          .toString(),
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.grey)),
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              width: 300,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 140,
                                    child: OutlinedButton(
                                      onPressed: () =>
                                          Get.to(const NewLeadsPage()),
                                      style: OutlinedButton.styleFrom(
                                        foregroundColor: Colors.orange,
                                        side: const BorderSide(
                                            color: Colors.orange,
                                            width: 2), //<-- SEE HERE
                                      ),
                                      child: const Text('View Details'),
                                    ),
                                  ),
                                  SizedBox(
                                      width: 140,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.orange),
                                          onPressed: () {},
                                          child: const Text('Submit Quote')))
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(
                      color: Colors.black12,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                    )
                  ],
                ),
              );
            })
            
            : const Center(child: CircularProgressIndicator()),
    )
 );
  }
}
