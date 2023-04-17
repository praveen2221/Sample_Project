import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'floorinfo_controller.dart';

class FloorInfo extends GetView<FloorInfoController> {
  const FloorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            cart('Existing house details'),
            details('Floor No','10'),
            details('Elevator Available','yes'),
            details('Packing required','yes'),
            details('Distance from the truck','20 mtrs'),
            additionalInfo('Additional Informatio','Dog is available so pleace call once you reach'),
            cart('New House Details'),
            details('Floor No','0'),
            details('Elevator Available','no'),
            details('Packing required','yes'),
            details('Distance from the truck','50 mtrs'),
            additionalInfo('Additional Informatio','Dog is available so pleace call once you reach'),
          ],
        ),
      ),
    );
  }

  Widget additionalInfo(String text,String text1) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,bottom: 20),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                      text,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    Text(
                      text1,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                ],
              ),
      ),
    );
  }

  Widget details(String text,String text1) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Text(
                    text1,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
    );
  }

  Widget cart(String text) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: const Color.fromARGB(255, 219, 222, 223),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.orange),
          ),
        ),
      ),
    );
  }
}
