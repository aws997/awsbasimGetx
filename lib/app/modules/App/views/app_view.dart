import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/app_controller.dart';

class AppView extends GetView<AppController> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Obx(()=> controller.pages[
        controller.page.value
      ]),
      bottomNavigationBar:    Obx(
      () => 
      BottomNavigationBar(
        onTap: (int index) {
          controller.goToPage(index);
        },
      
        currentIndex: controller.page.value,
        items: [
          
          BottomNavigationBarItem(
            
            icon: Image.asset('assets/Oval.png',
            width: 30,height: 30,),
            label: "account".tr,
          ),
         
                BottomNavigationBarItem(
            icon: Image.asset('assets/bm.png',
            width: 24,height: 24,),
             label: "lessons".tr),
              BottomNavigationBarItem(
            icon: Image.asset('assets/notf.png',
            width: 24,height: 24,),
             label: "notf".tr),
           
            
        ],
      ),
    ),
    );
  }
}
